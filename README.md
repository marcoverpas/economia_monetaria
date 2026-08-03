# Che cos'è la moneta?

### Mini corso di economia monetaria

*Marco Veronese Passarella*

[*Italian only*] Questa cartella raccoglie un testo introduttivo sulla natura della moneta e un piccolo insieme di modelli e figure che ne illustrano i passaggi analitici. L'obiettivo è duplice: offrire una narrazione accessibile del dibattito monetario degli ultimi tre secoli e mettere a disposizione strumenti riproducibili (codice e animazioni) per chi voglia toccare con mano i meccanismi descritti. 

<div align="center">
<figure>
<img src="https://raw.githubusercontent.com/marcoverpas/figures/main/economia_monetaria_cover.png" width="1000">
</figure>
</div>

Il materiale è pensato come porta d'ingresso verso trattazioni più formali. Chi desideri approfondire la teoria del circuito monetario e i modelli *stock-flow consistent* (SFC) può proseguire con le lezioni dottorali disponibili qui: **[PhD_Lectures_Macerata_2025](https://github.com/marcoverpas/PhD_Lectures_Macerata_2025)**. Nel testo che segue, i richiami a quel materiale sono segnalati con la dicitura *(per approfondire → Macerata)*. 

🚧 ATTENZIONE: *Work in progress* 🚧

> I codici sono scritti in **R** (coerentemente con l'archivio di Macerata). Il modello usa solo funzioni di base; l'animazione richiede il pacchetto [`gifski`](https://cran.r-project.org/package=gifski).

**Indice**

1. [Introduzione](#1-introduzione)
2. [Moneta e denaro](#2-moneta-e-denaro)
3. [L'origine della moneta I: dal baratto alla moneta elettronica](#3-lorigine-della-moneta-i-dal-baratto-alla-moneta-elettronica)
4. [L'origine della moneta II: lo Stato](#4-lorigine-della-moneta-ii-lo-stato)
5. [La rottura keynesiana](#5-la-rottura-keynesiana)
6. [L'origine della moneta III: lotta di classe e debito](#6-lorigine-della-moneta-iii-lotta-di-classe-e-debito)
7. [La moneta bancaria](#7-la-moneta-bancaria)
8. [Il circuito della moneta](#8-il-circuito-della-moneta)
9. [Implicazioni della moneta endogena](#9-implicazioni-della-moneta-endogena)
10. [Conclusioni](#10-conclusioni)
11. [Per approfondire](#11-per-approfondire)

---

## 1. Introduzione

Groucho Marx diceva che nella vita ci sono cose ben più importanti del denaro. Il guaio, aggiungeva subito dopo, è che ci vogliono i soldi per comperarle.

Bramato e maledetto, accumulato e sperperato, onnipresente e dematerializzato, il denaro è il grande totem delle odierne società capitalistiche. Il dollaro americano è divenuto il simbolo stesso della vittoria dell'occidente libero, democratico e post-moderno sull'oriente assolutista e barbarico. E, al contempo, è un monito perenne contro ogni velleità di trasformazione radicale dell'esistente. Perché se con la dissoluzione delle grandi narrazioni novecentesche nulla ha più valore in sé, tutto deve però avere un prezzo, sicché tutto può essere comperato.

Eppure, che cosa siano la moneta e il denaro, quale sia la loro origine e, soprattutto, quale la loro funzione precipua in una società capitalistica finanziariamente sofisticata, sono quesiti a cui solo pochi specialisti saprebbero rispondere con cognizione. Parafrasando la definizione che l'altro Marx, Karl, riservò alla merce, si potrebbe dire che la moneta è solo in apparenza una cosa ovvia e banale, essendo in realtà una non-cosa ricca di sottigliezze metafisiche.

Lo scopo di questo testo è di abbozzare una risposta ai quesiti seguenti: che cos'è la moneta? Come nasce? Come viene distrutta? A tal fine, ripercorreremo le tappe principali del dibattito sulla moneta degli ultimi tre secoli. Un dibattito, intenso e a tratti aspro, che ha visto coinvolti pensatori quali Thornton, Smith, von Mises, Marx, Knapp, Schumpeter, Keynes, Hicks, fino ai "circuitisti" francesi, a Graziani ed agli esponenti della cosiddetta teoria monetaria moderna, e che è ancora ben lungi dall'essersi esaurito.

## 2. Moneta e denaro

Prima di cominciare, può essere utile fare chiarezza sull'uso di questi termini, moneta e denaro: una distinzione che ricorre anche in altre lingue (*monnaie* vs *argent* in francese, *Geld* vs *Münze* in tedesco).

Possiamo definire denaro qualunque cosa che venga utilizzata come circolante accettato dal mercato. Tale cosa, o merce, viene scelta per la sua capacità di fungere da mezzo di scambio, ossia di facilitazione e regolamento delle transazioni economiche. D'altra parte, il *denario* nell'Antica Roma era una specifica unità monetaria, equivalente a quattro sesterzi, e come specifica unità monetaria fu usato anche nella Firenze del XIV secolo.

Per contro, la moneta è solitamente definita come quel particolare tipo di denaro che viene emesso da una autorità o ente terzo dotato di sovranità monetaria, sia esso il Re o lo Stato (per il tramite del Tesoro o della Banca Centrale). A questo proposito, è interessante notare che la parola "moneta" deriva dal verbo *monere*, che significa avvertire. Tale nome rimanda ad un episodio datato 390 a.C. in cui le oche sacre del Campidoglio, dove sorgeva il tempio di Giunone, avvertirono i romani dell'arrivo dei Galli. Siccome quella era anche la sede della Zecca, ecco che il denaro lì prodotto prese anche il nome di moneta.

## 3. L'origine della moneta I: dal baratto alla moneta elettronica

Non si tratta di una distinzione meramente nominalistica. Le due definizioni, denaro e moneta, sono legate a teorie differenti circa l'origine della moneta (o denaro) e il suo ruolo fondamentale.

Secondo una prima teoria, il denaro sarebbe il prodotto dell'interazione spontanea di individui privati auto-interessati, in forma di scambio di beni e servizi sul mercato. Secondo questa concezione, il denaro è, in essenza, un lubrificante o intermediario dei commerci. Dal baratto, alle conchiglie, al sale, ai capi di bestiame, alle monete metalliche, fino alle banconote e agli impulsi elettronici dei sistemi di pagamento bancario, sarebbe possibile identificare un'evoluzione costante nelle forme storicamente assunte dal denaro. L'attività di scambio, intesa come cessione di un bene a condizione di ricevere immediatamente in cambio un altro bene, sarebbe connaturata all'essere umano. Per Carl Menger (padre, oltre che del pensiero marginalista, anche di Karl, matematico e membro del Circolo di Vienna), ma anche per il premio Nobel Hicks, il denaro in forma di moneta metallica sarebbe emerso, tra altre merci, per le sue doti di scarsità, durabilità e facilità di trasporto. In tal senso, le banconote altro non sarebbero che titoli rappresentativi del proprio sottostante, l'oro (o altri metalli preziosi).

Quella della moderna moneta bancaria come risultato dell'evoluzione continua dei mezzi di scambio è una storia intuitiva, che solletica il senso comune. Ma è davvero convincente?

In realtà, presenta tre ordini di problemi. Il primo è di ordine teorico. Tale concezione è stata, infatti, sviluppata all'interno di una teoria che vede nell'utilità (marginale) soggettiva e individuale, derivante dalla fruizione di un bene o servizio, il fondamento del loro valore e quindi del loro prezzo. L'utilità della moneta sarebbe invece di tipo indiretto, derivando dai beni o servizi che essa consente di acquistare. Insomma, per dirla con Groucho Marx, è utile perché serve a comperare le cose importanti. Questa impostazione è viziata da un problema di circolarità logica: la quantità di beni e servizi che possono essere comperati dipende dai loro prezzi in moneta, dunque dal valore di scambio della moneta con quei beni e servizi. Sicché, per determinare l'utilità della moneta e il suo valore, si dovrebbe prima conoscere proprio il valore della moneta. Si noti che, sebbene sia possibile risolvere il problema matematicamente attraverso la determinazione simultanea delle due utilità, sul piano logico una cosa è la codeterminazione, altra cosa è la causalità.

Il secondo problema è di ordine storico. Le testimonianze delle civiltà mesopotamiche (sumeri, assiri, babilonesi) suggeriscono che la moneta nasca anzitutto come *scrittura contabile*, ossia come unità di conto per la registrazione di rapporti di debito e credito nei templi e nei palazzi, e solo in seguito assuma la funzione di mezzo di pagamento. Prezzi, debiti e tributi venivano espressi in una unità standard (ad esempio una data quantità d'orzo o d'argento) molto prima che circolassero monete coniate. Il baratto generalizzato, lungi dal precedere la moneta, tende semmai a comparire là dove i sistemi monetari collassano (si pensi alle economie in iperinflazione o post-belliche). L'idea di una progressione lineare "baratto → moneta-merce → moneta di credito" è dunque storicamente fragile.

Anche il terzo problema è di ordine storico. Nel corso dei secoli sembra, infatti, essere prevalso un solo tipo, ben definito, di moneta, quella emessa dallo Stato, mentre le monete private (si pensi oggi alle monete locali, ai buoni pasto, fino alle criptovalute) hanno sempre avuto un ruolo ancillare.

## 4. L'origine della moneta II: lo Stato

Secondo una diversa teoria, la moneta sarebbe comparsa quando il responsabile della comunità, il Sovrano, cessò di acquisire risorse tramite il trasferimento forzato di beni e servizi in natura (si pensi al sistema feudale) ed optò per una soluzione diversa: riconoscere un credito a chi avesse conferito i propri prodotti o il proprio lavoro, obbligando poi i membri della comunità ad esibire e restituire periodicamente un certo numero di titoli o attestati di credito come prova del contributo dato, ossia a pagare imposte monetarie. Il valore di quei titoli, in quanto mezzo di regolamento dei propri obblighi sociali (nei confronti dello Stato debitore), li avrebbe resi un conveniente mezzo di regolamento degli scambi tra privati. Questa sarebbe stata la premessa storica per l'affermazione delle moderne economie monetarie.

Detto diversamente, la moneta non nasce (tanto e solo) dall'interazione tra individui privati, e il suo valore non si deve ad una qualche utilità indiretta. Al contrario, la diffusione di una ben definita forma di moneta, quella garantita dallo Stato, deriva dal potere liberatorio ad essa conferito, assieme alla sua imposizione come strumento per assolvere gli obblighi fiscali. Per dirla con Georg F. Knapp, è solo il potere dello Stato, e non le forze spontanee del mercato, che può trasformare una cosa, una merce, in moneta. Perché se nessuno può essere obbligato per legge ad usare uno specifico mezzo di pagamento (cosa di cui ci accorgiamo nel corso delle crisi valutarie), lo Stato può però rendere quello strumento appetibile attraverso l'imposizione fiscale. Si pensi all'Imperatrice Maria Teresa d'Austria (1717-1780), che per dare supporto alla Banca di Vienna stabilì che le tasse potessero essere pagate solo in biglietti emessi da quella banca.

> **Breve digressione.** La sovranità monetaria è, assieme al monopolio dell'uso legittimo della forza (*ius imperii* e *ius gladii*), uno dei due pilastri della sovranità di uno Stato. D'altra parte, se si esclude la moneta bancaria, la moneta statale può essere immessa solo attraverso un atto iniziale di spesa da parte dello Stato, mentre tasse e collocamento di titoli del debito consentono di rastrellare dal mercato parte della liquidità immessa con la spesa. Il che sembra anche suggerire che, al fine di avere uno *stock* di moneta che permane nel sistema, lo Stato debba, nel complesso, spendere più di quanto tassa. Con ciò la condizione di disavanzo pubblico coinciderebbe con la regola (si pensi al bisogno crescente di liquidità di un'economia che si espande), mentre gli avanzi di bilancio andrebbero riguardati come strumenti per il controllo della liquidità in circolazione. È su queste intuizioni che la cosiddetta "teoria monetaria moderna" (MMT) ha costruito le sue fortune recenti.

Non solo la teoria della moneta statale getta una luce diversa sull'origine della moneta. Essa suggerisce anche che la moneta abbia un'utilità diretta. Per capire perché, dobbiamo tornare agli anni Trenta del Novecento.

## 5. La rottura keynesiana

L'Europa è in preda a fascismi e nazismi. Anche in Gran Bretagna viene fondato il partito fascista, ad opera di Sir Oswald Mosley (padre del più noto Max, per anni presidente della FIA e patron della Formula Uno, pure lui invischiato in una storiaccia di festini a tema nazista). John Maynard Keynes, che già allora era considerato il più grande economista e uno dei grandi intellettuali del tempo, intuisce che non soltanto la situazione è grave sul piano sociale e politico, ma che la teoria economica fino ad allora dominante è divenuta inservibile. Quella teoria predica che le forze spontanee del mercato sono sempre in grado di condurre l'economia verso l'ottimo sociale. Di fronte ad una crisi, la risposta migliore sarebbe difendere la parità della valuta (con l'oro, dunque con le altre valute) e, per il resto, non intervenire, così da non interferire con gli affari privati. La disoccupazione crescente e duratura, e le tensioni sociali, politiche, economiche e finanziarie che si producono, smentiscono però clamorosamente tale ricetta.

Così Keynes rompe radicalmente con la teoria dominante. In opposizione frontale con il pensiero economico ortodosso, sostiene che la disoccupazione dipende dalla carenza di domanda aggregata di beni e servizi, in particolare di beni di investimento. Se la domanda langue, se cioè ciò che non viene consumato (i risparmi) rimane inattivo anziché essere investito, le imprese riducono la produzione e, così facendo, condannano milioni di lavoratori alla disoccupazione. Il mercato non possiede alcun meccanismo spontaneo di riaggiustamento, perché a che pro le imprese dovrebbero investire se i consumi cadono? Tale situazione non è uno squilibrio temporaneo. Al contrario, l'economia rimane intrappolata in una condizione di equilibrio socialmente subottimale, senza alcuna tendenza alla ripresa.

Questa spiegazione solleva, però, un quesito: se Keynes ha ragione, vi sono individui che risparmiano e non spendono, non soltanto per poche settimane, ma per mesi o anni. Come si spiega tale comportamento al di fuori delle mura di un manicomio? Si noti che, fino a quel momento, la possibilità che qualcuno tesaurizzasse era considerata un comportamento marginale (perché i salariati ricevevano redditi di mera sussistenza, i membri dell'aristocrazia spendevano per garantirsi condizioni agiate e la borghesia industriale aveva nell'investimento produttivo la propria stessa ragione d'essere). La ragione, spiega Keynes, è che:

> Per motivi in parte ragionevoli, in parte istintivi, il nostro desiderio di tenere moneta come riserva di ricchezza è un barometro del nostro grado di sfiducia nelle nostre capacità di calcolo e nelle nostre convenzioni sul futuro. Sebbene questo nostro atteggiamento verso la moneta sia esso stesso convenzionale o istintivo, esso opera, per così dire, a un livello più profondo delle nostre motivazioni. Esso subentra nei momenti in cui le più superficiali, instabili convenzioni si sono indebolite. Il possesso della moneta calma la nostra inquietudine, e il premio che noi pretendiamo per privarci di essa è la misura dell'intensità della nostra inquietudine.

Il desiderio di detenere moneta è dunque un barometro della nostra sfiducia nei confronti del futuro. La sua "utilità" deriva dalla sua funzione di "riserva di ricchezza". Rappresentazioni icastiche di questo rapporto morboso con il denaro sono state fornite dai film di animazione di Walt Disney: il principe Giovanni in *Robin Hood*, che si rilassa contando i proventi delle tasse, e soprattutto Zio Paperone, che nuota in un silos pieno di monete d'oro e banconote.

Keynes chiamerà tale atteggiamento "preferenza per la liquidità", il che spiega anche il premio per il rischio (lo *spread*) come il prezzo che chiediamo per separarci dalla moneta (unico mezzo di pagamento su cui riponiamo la nostra fiducia) nelle fasi di crisi, ossia come prezzo delle cose importanti.

Questa seconda concezione della moneta ha inoltre il pregio di iniziare a mettere in luce un aspetto cruciale, che discuteremo meglio tra poco: la natura creditizia della moneta. La moneta non è una cosa. Meglio, non è *solo* una cosa (perché c'è differenza tra feticismo e riconoscimento del carattere di feticcio del denaro, riconoscimento che non nega che l'apparenza, o superficie, sia parte della realtà, benché non la esaurisca). È anzitutto un rapporto economico e sociale. Una banconota è un titolo rappresentativo di un debito dello Stato verso il possessore e, al contempo, un credito verso lo Stato per chi la possiede. La moneta è, infatti, una passività, un titolo a vista e ad interesse zero, anche quando appare in forma di moneta metallica. Per questo Keynes arrivò ad affermare che la rupia indiana fosse "un biglietto di banca stampato su un pezzo d'argento".

Un dollaro, ad esempio, è una promessa di pagamento emessa dalla *Federal Reserve*. E infatti fino al 1971 la valuta americana in vostro possesso era teoricamente (anche se non in pratica) convertibile in oro secondo il rapporto di 35 dollari per oncia. Ma se il dollaro non è più convertibile, in che cosa consiste tale promessa? Nel pagamento di... un dollaro. Del cui valore lo Stato federale statunitense, per il tramite della sua banca centrale, si fa garante.

## 6. L'origine della moneta III: lotta di classe e debito

Vi è un terzo gruppo di autori che, benché certamente vicini a questa seconda concezione della moneta, propone una lettura diversa della sua origine. Si tratta di autori di formazione marxista.

Questi hanno osservato che, una volta che la proprietà cessi di essere comune per divenire privata, come è accaduto storicamente (si pensi alle cosiddette "recinzioni", *enclosures*, nel Regno Unito nei secoli diciottesimo e diciannovesimo), i prodotti cessano di essere distribuiti tra tutti i membri della comunità in modo paritario. Questo significa che coloro i quali subiscono una riduzione del proprio reddito dovranno ricorrere al debito per sopravvivere. La moneta diviene dunque l'equivalente generale che misura il valore di tali obbligazioni, o debiti, nel corso del tempo. Storicamente, le prime "banche" furono i conventi, che rilasciavano titoli di credito a certificazione dei depositi in natura effettuati.

Insomma, la moneta avrebbe natura di credito, come sostenuto dai fautori della moneta statale, ma sarebbe frutto anche di un processo di interazione sociale (non meramente individuale), dato che i cambiamenti nella struttura sociale e le dinamiche di lotta di classe avrebbero avuto un ruolo assai più rilevante di quanto solitamente riconosciuto.

Oltretutto, la spiegazione della moneta in termini di riserva di ricchezza (o liquidità) è afflitta da una lacuna che ne mina la generalità: la moneta è spiegata solo in un contesto di crisi ed incertezza. Se, in qualche modo, fosse possibile rimuovere crisi e incertezza, allora la moneta non troverebbe più ragione d'essere, se non quella di fungere da unità di conto e mezzo di scambio. In un'economia in perfetto equilibrio, al termine delle transazioni non vi dovrebbe essere più alcuno *stock* di moneta residua.

Questa idea è stata messa in discussione da alcuni economisti eretici francesi e italiani nel corso degli ultimi decenni del Novecento. Il punto è che la "necessità" della moneta in una economia monetaria di produzione, ossia in una economia capitalistica, deve essere spiegata anche in un mondo "senza crisi". Non si intende con ciò negare che il capitalismo sia soggetto a crisi ricorrenti, al contrario. Si tratta piuttosto di mettere in luce la natura immediatamente monetaria delle relazioni di produzione e di scambio in una economia capitalistica: per farlo, si deve essere in grado di spiegare la funzione della moneta a prescindere dalla sua caratteristica di fungere da riserva di valore nei periodi bui.

Il fatto è che, se consideriamo le imprese come un settore consolidato e aggregato, ci accorgiamo immediatamente che vi sono solo due "non-cose" che quel settore non può produrre da sé:

- la prima è quella merce speciale che Marx chiamava "forza-lavoro" (per distinguerla dall'atto del lavoro);
- la seconda è la moneta che serve ad acquistarla (e, ad un minor livello di astrazione, ad acquistare i mezzi di produzione).

Le imprese abbisognano dell'una e dell'altra. Senza forza-lavoro, e senza moneta, il processo produttivo non potrebbe nemmeno essere avviato.

## 7. La moneta bancaria

Da dove viene la moneta che le imprese utilizzano per acquistare la forza-lavoro? Non dallo Stato, ma dalle banche. Naturalmente, è possibile argomentare che il potere liberatorio della moneta bancaria venga in ultima istanza conferito dallo Stato, con la Banca Centrale a fare da garante, ossia a fungere da banca delle banche.

Questo, però, non toglie che siano le banche private (o, come lo avrebbe chiamato Marx, il capitale monetario o finanziario) a dare avvio al processo. Non a caso, oltre il novanta per cento della moneta in circolazione è oggi rappresentata da passività bancarie, che si configurano come una creazione *dal nulla*. Una banca, infatti, crea un euro di depositi ogni volta che concede un euro di prestiti.

Si consideri, al riguardo, l'esempio seguente. Ogni volta che Marco richiede ed ottiene dalla banca X un prestito di 1 € (una passività, registrata da Marco nella colonna di destra del proprio mastrino contabile), la banca procede ad accreditare il suo conto dello stesso importo, creando così depositi per 1 € (un'attività per Marco, registrata a sinistra):

**(a) Creazione della moneta (Marco ottiene un prestito di 1 € dalla banca X)**

| Banca X - Attività | Banca X - Passività |
|---|---|
| Prestito a Marco: +1 € | Deposito di Marco: +1 € |

| Marco - Attività | Marco - Passività |
|---|---|
| Deposito presso X: +1 € | Debito verso la banca: +1 € |

La moneta non è, però, un semplice rapporto di credito-debito bilaterale. Dato che i prestiti vengono richiesti per acquistare beni e servizi, la moneta bancaria è una relazione *triangolare* tra un acquirente, un venditore e, appunto, la banca.

Se acquirente (Marco) e venditore (Luca) fanno capo alla stessa banca X, il pagamento di 1 € si limita a spostare la proprietà del deposito da Marco a Luca:

**(b) Pagamento con la stessa banca (Marco paga 1 € a Luca, entrambi clienti di X)**

| Banca X - Attività | Banca X - Passività |
|---|---|
| Prestito a Marco: +1 € | Deposito di Luca: +1 € |

Il debito di Marco verso la banca resta aperto; ciò che si estingue è il rapporto tra Marco e Luca.

Se, invece, acquirente e venditore fanno capo a due banche diverse, X e Y, subentra una seconda triangolazione, quella tra le due banche commerciali (che regolano i propri rapporti tramite trasferimento di riserve) e la banca centrale, che funge da stanza di compensazione:

**(c) Pagamento con due banche (Marco cliente di X paga 1 € a Luca cliente di Y)**

| Banca X - Attività | Banca X - Passività |
|---|---|
| Prestito a Marco: +1 € | Debito interbancario (verso Y / BC): +1 € |

| Banca Y - Attività | Banca Y - Passività |
|---|---|
| Credito interbancario (verso X / BC): +1 € | Deposito di Luca: +1 € |

| Banca Centrale - Attività | Banca Centrale - Passività |
|---|---|
| (invariata) | Riserve di X: −1 € ; Riserve di Y: +1 € |

È in virtù di questo processo di triangolazione che il rapporto di credito/debito tra Marco e Luca (e quello tra le due banche commerciali) può estinguersi a seguito del pagamento, rimanendo invece aperto un rapporto tra ciascuno dei contraenti e le rispettive banche (nonché tra queste e la banca centrale). Insomma, sembra proprio che [Patty Pravo](https://it.wikipedia.org/wiki/Pensiero_stupendo) abbia colto l'essenza di un'economia monetaria più di [Renato Zero](https://it.wikipedia.org/wiki/Triangolo/Sesso_o_esse).

Ricapitolando: la funzione cruciale della moneta, in una società capitalistica, è quella di fungere da mezzo di pagamento attraverso la triangolazione di un rapporto di credito/debito. Non, però, per comperare una merce qualsiasi, ma per acquistare una merce molto particolare.

## 8. Il circuito della moneta

Per capire questo punto, torniamo nuovamente agli anni Trenta. Nelle bozze preliminari della propria *Teoria generale*, Keynes fa un riferimento interessante, quanto inatteso, al secondo libro del *Capitale* di Marx. In quel volume, pubblicato postumo da Engels nel 1885, Marx chiarisce che vi sono due diverse forme di scambio o circolazione delle merci in una società capitalistica: la circolazione semplice (vendere per comperare) e la circolazione capitalistica (comperare per vendere).

Nella prima, che caratterizza un mercato precapitalistico (o "fiera del villaggio", come l'avrebbe chiamata Hyman Minsky), lo scopo ultimo è quello di cedere un valore d'uso per acquisire un diverso valore d'uso. La moneta svolge unicamente la funzione di facilitatore degli scambi. Formalmente: **M → D → M′** (merce, denaro, altra merce).

Nella seconda si rivela invece l'essenza del capitalismo: il capitalista, o l'impresa, acquista forza-lavoro e mezzi di produzione da impiegare nel processo produttivo, al termine del quale ottiene dei prodotti che vengono rivenduti sul mercato. Il fine ultimo qui non è l'appropriazione di specifici valori d'uso, ma la realizzazione di un sovrappiù in moneta. Formalmente: **D → M → D′**, con D′ > D. Perché il capitalismo non è solo un sistema di produzione di merci a mezzo di merci (il riferimento è ovviamente a Piero Sraffa, 1960), ma anche e soprattutto un sistema di produzione di *più* moneta a mezzo di moneta, ossia un sistema monetario di produzione e accumulazione.

Sulla base di questa intuizione di Marx, ripresa da Keynes, è dunque possibile affermare che la funzione più importante, e troppo spesso dimenticata, della moneta in un sistema capitalistico è di finanziare i piani di produzione delle imprese e, inoltre, di consentire la monetizzazione dei profitti.

Tale finanziamento iniziale fornito dalle banche consente alle imprese di acquistare sul mercato la forza-lavoro necessaria a produrre beni e servizi. I salariati spenderanno poi il proprio reddito per consumi o per investimenti di portafoglio. In tal modo, (parte de) la moneta pagata in forma di salario ritornerà nelle casse delle imprese, che potranno restituire il finanziamento ricevuto alle banche.

<div align="center">
<table>
<tr><td width="820" align="center">
<img src="https://raw.githubusercontent.com/marcoverpas/figures/main/monetary_circuit.gif" width="800" alt="Il circuito della moneta"><br>
<sub><em>Figura 1 - Lo schema base del circuito monetario di Graziani.</em></sub>
</td></tr>
</table>
</div>

Questa impostazione è nota come *teoria del circuito monetario*, ed ha avuto in Augusto Graziani ed altri autori italiani e francesi i propri maggiori esponenti. Essa consente di gettare luce sulla natura di *flusso endogeno* della moneta, in opposizione all'idea di moneta come *stock* esogeno (legata alla concezione del denaro come lubrificante degli scambi) e ad integrazione dell'idea di moneta come *stock* endogeno (legata alla teoria keynesiana della crisi). Ne derivano immediatamente alcuni corollari. Un primo corollario riguarda la sparizione del moltiplicatore della moneta. Un secondo corollario riguarda il rapporto tra moneta e prezzi.

> **Vedi il modello.** Il codice `R` del modello di circuito monetario utilizzato per produrre la Figura 1 può essere consultato e scaricato da [qui](monetary_circuit.R). Il codice `R` di una versione meno tradizionale, ma più avanzata (e, a mio avviso, accurata) del modello del circuito è disponibile [qui](https://github.com/marcoverpas/TMC-SFC-Model-R).

## 9. Implicazioni della moneta endogena

Già, perché da alcuni anni il cosiddetto moltiplicatore della moneta è sparito: sia nei dati, come lamentato da Gregory Mankiw in un [*blog* del 2009](https://gregmankiw.blogspot.com/2009/01/disappearing-money-multiplier.html?m=1) (dove si osserva che il rapporto tra M1, da un lato, e base monetaria, dall'altro, è precipitato da un valore di 1,6 a fine 2008 ad un valore inferiore ad 1 all'inizio del 2009), sia in teoria (come testimoniato dalla curiosa sparizione dei capitoli dedicati al moltiplicatore monetario nel celebre manuale di macroeconomia di Olivier Blanchard).

Ma che cos'è il moltiplicatore della moneta? In estrema sintesi, è l'idea che le banche possano ampliare la quantità di moneta in circolazione a partire da un deposito iniziale, grazie al sistema della riserva frazionaria. Se, cioè, una banca raccoglie depositi per 100 € e la percentuale di riserva obbligatoria imposta dalle autorità monetarie è del 10%, quella banca potrà prestare 90 €. Ipotizzando, per semplicità, che il pubblico non voglia detenere circolante, quei 90 € verranno depositati presso un'altra banca, che, a sua volta, potrà dunque prestare 81 € (90 € meno i 9 € da accantonare a riserva), e così via. Generalizzando, con una percentuale di riserva pari a $\theta$, un deposito iniziale $D_0$ genera un ammontare complessivo di depositi pari a:

$$D = D_0 \left[ 1 + (1-\theta) + (1-\theta)^2 + (1-\theta)^3 + \dots \right] = \frac{D_0}{\theta}.$$

Dato che $0 < \theta < 1$, l'espressione tra parentesi quadre è una serie geometrica convergente, il cui valore è $1/\theta > 1$. Tornando al nostro esempio, il valore del moltiplicatore sarà $1/0{,}10 = 10$, per cui l'ammontare di moneta bancaria complessivamente associata a un deposito iniziale di 100 € sarà pari a $100 \times 10 = 1000$ €.

Che cosa, allora, non va nella storia precedente? Praticamente tutto.

Anzitutto, le riserve sono attività liquide detenute dalle banche commerciali presso la banca centrale e utilizzate nelle relazioni reciproche sul mercato interbancario; tali attività non vengono (e non possono essere) "prestate" alla clientela. In secondo luogo, come abbiamo chiarito in precedenza, le banche non svolgono una semplice funzione di intermediazione tra depositanti e richiedenti prestiti. Al contrario, esse creano attivamente depositi attraverso la concessione di prestiti: sono dunque i secondi a creare i primi, non viceversa. In terzo luogo, l'obbligo di riserva bancaria è stato rimosso in numerose economie avanzate (Stati Uniti, Regno Unito, Canada e Australia, tra le altre), senza che queste abbiano registrato esplosioni nel processo di creazione bancaria (si noti che $1/\theta \rightarrow +\infty$ per $\theta \rightarrow 0$). D'altra parte, anche laddove presente, tale requisito non deve essere rispettato in ogni istante, ma nell'arco di un periodo di tempo sufficientemente ampio, detto periodo di mantenimento (circa sei settimane nell'Area Euro, dove vige un obbligo di riserva dell'1%). Questo significa che le banche non sono mai vincolate, nella loro attività creditizia, dalla disponibilità di riserve, ma soltanto dalla presenza di clientela solvibile e profittevole (e sia pure nei limiti dei requisiti di capitale stabiliti dagli accordi di Basilea). Le riserve possono essere rimpinguate *ex post* attraverso il mercato interbancario oppure tramite il ricorso diretto alla banca centrale (la quale deve sempre fornire al sistema le riserve richieste, se vuole che il tasso di interesse di mercato rifletta il tasso di *policy* annunciato). In sintesi, il cosiddetto moltiplicatore della moneta è soltanto un rapporto derivabile *ex post* dall'identità contabile che definisce le riserve come percentuale dei depositi ($Riserve = \theta \times Depositi$). Per dirla con Shakespeare, tanto rumore per nulla.

Il secondo corollario si lega alla lettura della cosiddetta equazione di Fisher. Si tratta, ancora una volta, di un'identità contabile, che asserisce che il valore dei beni scambiati è pari al valore della moneta utilizzata per lo scambio. In formule:

$$Y \times P = M \times V,$$

dove $Y$ è un indicatore del volume della produzione (o un vettore di quantità fisiche di beni), $P$ è il livello generale dei prezzi (o un vettore dei prezzi unitari di ciascun bene), $M$ è la quantità di moneta complessiva e $V$ è la sua velocità di circolazione (ossia il numero di volte in cui passa di mano). La teoria quantitativa della moneta, sviluppata da alcuni economisti pre-classici e classici e ripresa nel corso degli anni Cinquanta da Milton Friedman, asserisce che, siccome la produzione tende sempre ad un livello naturale definito dalla tecnologia e dalla disponibilità di fattori, mentre la velocità di circolazione della moneta è piuttosto stabile, allora è possibile stabilire una relazione diretta tra quantità di moneta immessa nel sistema dalle autorità monetarie e livello dei prezzi: $P = M \times \overline{V}/\overline{Y}$. Di qui la nota espressione di Friedman secondo la quale l'inflazione sarebbe sempre e ovunque un fenomeno monetario.

Sennonché, proprio l'instabilità monetaria e finanziaria che ha caratterizzato le maggiori economie mondiali a partire dalla fine degli anni Settanta ha mostrato che la velocità di circolazione della moneta è tutt'altro che stabile, aumentando nelle fasi di espansione e precipitando nelle fasi di recessione (come, peraltro, predetto da Keynes e da Minsky, intuito, prima di loro, da Thornton e Marx, e constatato suo malgrado da Mankiw). D'altra parte, la possibilità di definire un livello di produzione naturale a prescindere dalle condizioni di domanda, e dunque dagli investimenti delle imprese, è clamorosamente smentita proprio dalla necessità di rivedere continuamente le stime circa il PIL potenziale. Infine, da anni le principali banche centrali mondiali hanno abbandonato ogni velleità di controllo degli aggregati monetari (il caso più clamoroso è quello dell'abbandono del secondo pilastro della politica monetaria della BCE) per concentrarsi sulla regolazione del tasso di interesse di *policy*, lasciando che l'offerta di base monetaria si adegui alla domanda (attraverso operazioni di mercato aperto che hanno un ruolo di adeguamento passivo, non di determinazione attiva degli aggregati monetari, dato che ciò entrerebbe in conflitto con la fissazione del tasso di riferimento per i mercati).

<table align="center">
  <tr>
    <td align="center">
      <img src="figures/moneta_endogena.png" alt="La moneta endogena: il mercato dei prestiti a quattro quadranti" width="620">
    </td>
  </tr>
  <tr>
    <td align="center"><em><b>Figura 1.</b> Il mercato dei prestiti nella teoria della moneta endogena, rappresentato a quattro quadranti. Nel <b>quadrante 1</b> (in alto a destra) la domanda di prestiti è decrescente nel tasso di interesse, mentre l'offerta è orizzontale al tasso sui prestiti, fissato dalle banche come <i>ricarico</i> (<i>markup</i>) sul tasso di <i>policy</i> deciso dalla banca centrale. Il <b>quadrante 2</b> traduce i prestiti in un pari ammontare di depositi (le banche creano depositi concedendo prestiti); il <b>quadrante 3</b> lega i depositi alle riserve tramite il coefficiente di riserva; il <b>quadrante 4</b> mostra la banca centrale che fornisce in modo accomodante le riserve così richieste, mantenendo il tasso di <i>policy</i>. Un aumento dei prezzi (freccia rossa) accresce la domanda di prestiti e, lungo la catena 1 → 2 → 3 → 4, fa aumentare depositi e riserve: è la crescita dei prezzi a trainare la quantità di moneta e di base monetaria, non il contrario. Adattato da Fontana e Setterfield (2009).</em></td>
  </tr>
</table>

Il punto è che la relazione tra moneta e prezzi è assai più debole di quanto normalmente si ritenga, mentre la direzione del nesso causale appare rovesciata rispetto a quella postulata dalla teoria quantitativa della moneta. Si pensi ad un aumento del prezzo delle materie prime. Questo accrescerà i costi di produzione delle imprese, sia in modo diretto sia in modo indiretto, per via dei maggiori salari richiesti dai lavoratori. A parità di tasso di interesse, le imprese chiederanno quindi maggiori finanziamenti alle banche. Questi si tradurranno in maggiori depositi che, a loro volta, richiederanno maggiori riserve immesse nel sistema dalla banca centrale. Non è stata, dunque, la maggiore immissione di base monetaria a generare la crescita dei prezzi, ma quest'ultima a generare la prima.

## 10. Conclusioni

Tutto qua? Non esattamente.

C'è, infatti, un terzo corollario della teoria endogena della moneta, spesso trascurato dagli stessi "circuitisti", perché piuttosto scabroso. Se consideriamo le imprese come un settore aggregato e consolidato (la classe dei capitalisti), allora è evidente che nessun profitto aggregato può sorgere dallo scambio tra imprese, essendo questo un gioco a somma zero. Il profitto eventualmente realizzato da un'impresa sarebbe, infatti, sempre compensato dalla perdita registrata da un'altra impresa o gruppo di imprese.

Detto diversamente, affinché le imprese considerate nel loro insieme possano estrarre e realizzare un profitto, dovrebbero poter beneficiare di uno scambio esterno al proprio "settore". Sennonché l'unico scambio esterno per le imprese nel loro insieme è l'acquisto di forza-lavoro dai salariati. Questo significa che è proprio lì, ossia nel divario positivo tra le ore di lavoro profuse dai salariati nel processo produttivo e le ore di lavoro comandate sul mercato dal loro salario, che va cercata l'origine del profitto aggregato, proprio [come aveva sostenuto Marx (Karl)](https://github.com/marcoverpas/analisi_economica#14-la-critica-di-marx-accumulazione-e-crisi).

La moneta svolge quindi una funzione fondamentale, che non esclude ma si somma a quella di lubrificante (o mezzo di scambio), unità di conto, numerario e riserva di ricchezza. La moneta è, anzitutto, il mezzo di pagamento che consente alle imprese di acquistare forza-lavoro e di dare così avvio all'intero processo economico. È, più precisamente, lo strumento che consente di esercitare quel comando capitalistico sul lavoro vivo che, lontano dalla superficie luccicante dei mercati, si dispiega nei sotterranei segreti della produzione.

Perché, vedete, aveva ragione Groucho Marx a ricordarci che, le cose importanti, ci vogliono i soldi per comperarle. Ma si dimenticava di aggiungere che prima qualcuno deve produrle. Ecco, al capitalista la moneta serve a questo: a far sì che le produca qualcun altro.

## 11. Per approfondire

Il seguito naturale di questo mini-corso è il repository di lezioni dottorali **[PhD_Lectures_Macerata_2025](https://github.com/marcoverpas/PhD_Lectures_Macerata_2025)**, che sviluppa in forma più formale i temi qui introdotti:

- **Lezione A - Teoria del circuito monetario:** la visione della moneta endogena, i presupposti della *Monetary Circuit Theory* e un modello del circuito in cinque passi (creazione, produzione, vendita, portafoglio, distruzione della moneta).
- **Lezione B - Modelli *stock-flow consistent* (SFC):** dal modello *PC* (scelta di portafoglio) al modello *BMW* (con banche commerciali), fino alle estensioni *input-output* ed ecologiche.

🚧 ATTENZIONE: *Work in progress* 🚧

---

## Riferimenti bibliografici essenziali

- G. Fontana e M. Setterfield, "Macroeconomics, endogenous money and the contemporary financial crisis: a teaching model", *International Journal of Pluralism and Economics Education*, 2009, 1(1/2): 130-147.
- A. Graziani, *The Monetary Theory of Production*, Cambridge University Press, 2003.
- W. Godley, M. Lavoie, *Monetary Economics: An Integrated Approach to Credit, Money, Income, Production and Wealth*, Palgrave Macmillan, 2007.
- J. M. Keynes, *The General Theory of Employment, Interest and Money*, 1936.
- G. F. Knapp, *The State Theory of Money*, 1924 (ed. orig. 1905).
- A. M. Innes, "What is Money?", *Banking Law Journal*, 1913, 30(5): 377-408.
- M. Veronese Passarella, "It is not la vie en rose: new insights from Graziani’s theory of the monetary circuit", *European Journal of Economics and Economic Policies: Intervention*, 2024, 21(3): 461-485.
