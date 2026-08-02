# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Il circuito monetario di Graziani - versione base tradizionale
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Modello didattico a "fasi" di un circuito monetario chiuso.
# I soggetti del modello sono banche, imprese e lavoratori; il mercato
# dei beni e il mercato finanziario rappresentano i luoghi attraverso
# cui avvengono rispettivamente i consumi e gli scambi di attività
# finanziarie.
#
# Il modello mostra la creazione della moneta come flusso endogeno
# (finanziamento iniziale), il riflusso della moneta alle imprese via
# consumi (mercato dei beni) e acquisto di titoli (mercato finanziario),
# la distruzione della moneta con il rimborso dei prestiti e il
# "paradosso dei profitti monetari".
#
# Fasi del circuito:
#   0. Stato iniziale: nessuna moneta in circolazione.
#   1. Finanziamento iniziale: le banche prestano F alle imprese; nascono
#      depositi per F (moneta creata "dal nulla").
#   2. Produzione e salari: le imprese pagano W = F ai lavoratori.
#   3. Consumi (mercato dei beni): i lavoratori spendono c*W; la moneta
#      torna alle imprese passando per il mercato dei beni.
#   4. Titoli (mercato finanziario): dei risparmi (1-c)*W una quota
#      lambda viene impiegata per acquistare titoli emessi dalle imprese;
#      il resto (1-lambda)*(1-c)*W resta tesaurizzato come depositi.
#   5. Riflusso alle banche: le imprese rimborsano i prestiti nei limiti
#      della liquidità effettivamente rifluita; la moneta corrispondente
#      viene distrutta.
#
# Identita' chiave:  R + H = W = F, dove
#   R = W*(c + lambda*(1-c))   (moneta che rifluisce alle imprese)
#   H = W*(1-lambda)*(1-c)     (moneta tesaurizzata dai lavoratori)
#
# Nel modello, la moneta che non rifluisce (H) coincide con il capitale
# del prestito che le imprese non possono rimborsare. L'interesse
# monetario i*W non è stato creato nel circuito e quindi non può essere
# rimborsato nel circuito chiuso.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Simula un circuito monetario completo.
#
# Dati:
#   F       finanziamento iniziale concesso dalle banche alle imprese;
#   c       propensione al consumo dei lavoratori;
#   lambda  quota del risparmio investita in titoli d'impresa;
#   i       tasso d'interesse sul prestito bancario.
#
# La funzione ricostruisce le principali fasi del circuito monetario:
# creazione della moneta bancaria, pagamento dei salari, riflusso della
# moneta alle imprese tramite consumi e acquisto di titoli, rimborso dei
# prestiti e distruzione della moneta corrispondente.
#
# Restituisce:
#   money   depositi bancari complessivamente in circolazione al termine
#           di ciascuna fase del circuito;
#   summary principali grandezze economiche del modello, comprese la
#           quota di prestito non rimborsabile e il debito residuo
#           comprensivo degli interessi.
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# Crea la funzione che genera il circuito (vedi sopra) ####
run_circuit <- function(F = 100, c = 0.80, lambda = 0.50, i = 0.05) {
  
  # Ipotesi semplificatrice: l'intero finanziamento iniziale è utilizzato
  # per pagare il monte salari.
  W <- F
  
  consumo   <- c * W                      # Consumo dei lavoratori
  risparmio <- (1 - c) * W                # Risparmio dei lavoratori
  titoli    <- lambda * risparmio         # Acquisto di titoli emessi dalle imprese
  hoard     <- (1 - lambda) * risparmio   # Depositi tesaurizzati dai lavoratori
  riflusso  <- consumo + titoli           # Moneta che rifluisce alle imprese
  
  # Moneta (depositi) in circolazione al termine di ciascuna fase
  money <- c(
    "0. inizio"        = 0,
    "1. finanziamento" = F,
    "2. salari"        = F,
    "3. consumi"       = F,
    "4. titoli"        = F,
    "5. rimborso"      = F - riflusso
  )
  
  interesse      <- i * F                       # Interessi dovuti sul prestito
  debito_residuo <- F - riflusso                # Capitale non rimborsato
  debito_res_int <- debito_residuo + interesse  # Capitale residuo + interessi
  
  # Crea lista variabili salvate
  summary <- list(
    monte_salari_W               = W,
    consumo                      = consumo,
    risparmio                    = risparmio,
    titoli_acquistati            = titoli,
    tesaurizzazione_H            = hoard,
    riflusso_totale_R            = riflusso,
    moneta_residua_in_circolo    = F - riflusso,
    interesse_dovuto             = interesse,
    debito_residuo_capitale      = debito_residuo,
    debito_residuo_con_interessi = debito_res_int
  )
  
  list(money = money, summary = summary)
}

# Visualizza i risultati nella Console ####
print_report <- function(F = 100, c = 0.80, lambda = 0.50, i = 0.05) {
  res <- run_circuit(F, c, lambda, i)
  cat(sprintf("Parametri: F=%.1f  c=%.2f  lambda=%.2f  i=%.2f\n\n", F, c, lambda, i))
  cat("Moneta in circolazione (depositi) per fase del circuito:\n")
  for (nm in names(res$money))
    cat(sprintf("  %-18s %8.2f\n", nm, res$money[[nm]]))
  cat("\nGrandezze di sintesi:\n")
  for (nm in names(res$summary))
    cat(sprintf("  %-30s %8.2f\n", nm, res$summary[[nm]]))
  stopifnot(abs(res$summary$riflusso_totale_R +
                  res$summary$tesaurizzazione_H -
                  res$summary$monte_salari_W) < 1e-9)
  cat(sprintf("\nVerifica identita' R + H = W: OK (%.2f + %.2f = %.2f)\n",
              res$summary$riflusso_totale_R,
              res$summary$tesaurizzazione_H,
              res$summary$monte_salari_W))
  invisible(res)
}

# Stampa i grafici ####
plot_figures <- function(F = 100, c = 0.80, lambda = 0.50, i = 0.05,
                         outfile = "figures/circuit_reflux.png") {
  res   <- run_circuit(F, c, lambda, i)
  money <- res$money
  op <- par(mfrow = c(1, 2), mar = c(7, 4, 3, 1))
  
  # Pannello 1: moneta in circolazione per fase
  bp <- barplot(money, col = "#2f6f9f", las = 2,
                ylab = "Moneta bancaria in circolazione",
                main = "Creazione e distruzione della moneta",
                ylim = c(0, F * 1.15),
                names.arg = sub("^[0-9]+\\. ", "", names(money)))
  text(bp, money + F * 0.03, labels = sprintf("%.0f", money), cex = 0.9)
  
  # Pannello 2: debito residuo al variare della propensione al consumo
  cs <- seq(0, 1, by = 0.01)
  residuo     <- sapply(cs, function(cc) run_circuit(F, cc, lambda, i)$summary$debito_residuo_capitale)
  residuo_int <- sapply(cs, function(cc) run_circuit(F, cc, lambda, i)$summary$debito_residuo_con_interessi)
  plot(cs, residuo, type = "l", lwd = 2, col = "#2f6f9f",
       xlab = "Propensione al consumo (c)", ylab = "Debito non rimborsabile",
       main = "Il paradosso dei profitti monetari",
       ylim = range(0, residuo_int))
  lines(cs, residuo_int, lwd = 2, lty = 2, col = "#c0504d")
  abline(h = 0, col = "grey", lwd = 0.8)
  legend("topright", bty = "n", cex = 0.8,
         legend = c("Debito residuo (solo capitale)",
                    "Debito residuo (capitale + interessi)"),
         col = c("#2f6f9f", "#c0504d"), lwd = 2, lty = c(1, 2))
  
  par(op)
  
}

# Esecuzione da riga di comando: mostra tutto ####
print_report()
plot_figures()
