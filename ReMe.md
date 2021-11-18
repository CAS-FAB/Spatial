Methoden-Modul

MScUmwelt und NatürlicheRessourcen

# Spatial Data Science 1

![](img/MSc_UNR_SpatDataScience1_HS200.png)

# Patrick Laube, Nils Ratnaweera & Nikos Bakogiannis
Geoinformatics Research Group

Institute of Natural Resource Sciences	
ZHAW Zurich University of Applied Sciences
Grüental, Postfach, CH-8820 Wädenswil

{laup, rata, bako}@zhaw.ch

![](img/MSc_UNR_SpatDataScience1_HS201.jpg)

<span style="color:#D30000">Screencast</span>

<span style="color:#D30000">Teil 1</span>

![](img/MSc_UNR_SpatDataScience1_HS202.jpg)

__“80%__  __of__  __all data is__  _georeferenced_

__-__  __t__  __hat__  __is,__  __it refers__  __to some specific place on the Earth’s surface__  __.”__

Al Gore, TheDigital Earth: Understanding our planet in the 21stCentury, 1998

# Zitat Al Gore: «80% aller Information ist räumlich»

Bildquelle: https://images.newscientist.com/wp-content/uploads/2017/08/11160128/ac28y703-2-800x533.jpg

# Analyzing and modelling animal-vehicle collision hot-spots for the Swiss road network

![](img/MSc_UNR_SpatDataScience1_HS203.jpg)

![](img/MSc_UNR_SpatDataScience1_HS204.png)

dpa, https://www.wetterauer-zeitung.de/wetterau/friedberg-ort28695/tun-wenn-vors-auto-laeuft-12268905.html

__FG Wildtiermanagement__

StefanM. Suter, Martina Reifler-Bächtiger, Tanja Koch,AnnetteStephani, Benjamin Sigrist, Roland F.Graf

__FG__  __Geoinformatik__

PatrickLaube, NilsRatnaweera

__Inst__  __. für__  __Angew__  __.__  __Simulation__  __IAS__

IvoKaelin, AnnaWróbel

# Lernziele

![](img/MSc_UNR_SpatDataScience1_HS205.png)

<span style="color:#9A291F">Sie können in eigenen Worten und anhand selbst gewählter Beispiele unter der Verwendung von Fachsprache erklären, inwiefern sich räumliche Daten von nicht-räumlichen Daten unterscheiden und welche Implikationen diese</span>  <span style="color:#9A291F"> __Unterschiede__ </span>  <span style="color:#9A291F">für die Datenverarbeitung haben.</span>

<span style="color:#9A291F">Sie kennen die grundlegenden</span>  <span style="color:#9A291F"> __konzeptuellen Datenmodelle__ </span>  <span style="color:#9A291F">und</span>  <span style="color:#9A291F"> __Datenstrukturen__ </span>  <span style="color:#9A291F">für</span>  <span style="color:#9A291F">Geodaten</span>  <span style="color:#9A291F">.</span>

<span style="color:#9A291F">Sie sind in der Lage eigene, nicht-räumliche Punktdaten durch die Verwendung von</span>  <span style="color:#9A291F"> __Spatial__ </span>  <span style="color:#9A291F"> __Joins__ </span>  <span style="color:#9A291F">und</span>  <span style="color:#9A291F"> __Pufferoperationen__ </span>  <span style="color:#9A291F">mit räumlicher Information anzureichern.</span>

<span style="color:#9A291F">Sie sind vertraut mit der</span>  <span style="color:#9A291F"> __Aggregationseigenschaft__ </span>  <span style="color:#9A291F">von räumlicher Information, können diese anhand des</span>  <span style="color:#9A291F">Modifiable</span>  <span style="color:#9A291F">Areal Unit Problems (MAUP) mit Fachsprache beschreiben und kennen methodische Herangehensweisen zum Umgang mit dem MAUP.</span>

<span style="color:#9A291F">und all das machen wir mit</span>  <span style="color:#9A291F"> __R__ </span>  <span style="color:#9A291F">(und nicht mit GIS)!</span>

# Programm

__“What is special about spatial?”__

DasganzkleineGeodatenEinmaleins

RäumlicheAnnotation vonPunktdaten(Spatial Join)

NachbarschaftundNähe(Puffer)

RäumlicheAggregation (MAUP)

# Zitat Al Gore: «80% aller Information ist räumlich»

![](img/MSc_UNR_SpatDataScience1_HS206.jpg)

“A newwave of technological innovation is allowing us to capture, store, process and display an unprecedented amount of information about our planet and a wide variety of environmental and cultural phenomena. Much of this informationwillbe "georeferenced" - that is, it will refer to some specific place on the Earth’s surface.” (The Digital Earth: Understanding our planet in the 21stCentury, 1998)

einigeQuellenweisendas 80%-ZitatAl Gorezu…

Bildquelle: https://images.newscientist.com/wp-content/uploads/2017/08/11160128/ac28y703-2-800x533.jpg

# Wissenschaftliche Studie zur Frage

![](img/MSc_UNR_SpatDataScience1_HS207.png)

“Ananalysis of the1.3 Mio German Wikipedia articles showsthat 78% of all articles have a coordinate themselves or are directly linked toat leastone article that has geospatialcoordinates” (Hanmann&Burghardt2013)

![](img/MSc_UNR_SpatDataScience1_HS208.png)

![](img/MSc_UNR_SpatDataScience1_HS209.png)

Hahmann, S., &Burghardt, D. (2013). How much information is geospatiallyreferenced?

Networksand cognition. _International Journal of Geographical Information Science_ , 27(6), 1171-1189.

# Frage: Was ist speziell an räumlichen Daten?

![](img/MSc_UNR_SpatDataScience1_HS2010.png)

![](img/MSc_UNR_SpatDataScience1_HS2011.png)

Wasmeinst Du,weshalb sagen wir räumliche Information ist speziell?

Notiere Dir einigeStichworte, weshalb räumliche Information speziell sein soll.

min.

![](img/MSc_UNR_SpatDataScience1_HS2012.png)

![](img/MSc_UNR_SpatDataScience1_HS2013.gif)

Bildquellen: https://www.srf.ch/meteo, https://www.bfs.admin.ch

# Eigenschaften von räumlichen Daten

* __Lageinformation__
  * Absolute Lage (x,y,z), Koordinatensysteme
  * Relative Lage (Dinge zueinander), Nachbarschaft, Topologie
* __Zeitinformation__
  * Absolute Zeit (Wann sind Daten gültig? Wann wurden Daten erhoben?)
  * Relative Zeit (gerade inUmweltwiss. ist Veränderung zentral)
  * Euer Vorteil: mit Zeiten rechnen in R könnt ihr schon!
* Grundannahme der __Unabhängigkeit__ von Stichproben <span style="color:#FF0000"> __gilt nicht!__ </span>
  * Geodatensind räumlich und oft zeitlich (auto-)korreliert
  * Geostatistik bietet Analysemethoden, welche diese Abhängigkeiten berücksichtigen

![](img/MSc_UNR_SpatDataScience1_HS2014.png)

![](img/MSc_UNR_SpatDataScience1_HS2015.gif)

![](img/MSc_UNR_SpatDataScience1_HS2016.gif)

![](img/MSc_UNR_SpatDataScience1_HS2017.gif)

![](img/MSc_UNR_SpatDataScience1_HS2018.gif)

![](img/MSc_UNR_SpatDataScience1_HS2019.gif)

![](img/MSc_UNR_SpatDataScience1_HS2020.gif)

# Spatial is special: Massstabsabhängigkeit

Fast alle räumlichen Daten müssen mit einem __Raumbezug/Massstab__ gemacht werden(Einw/km2,Einwpro Gemeinde/Kanton)

Daten verändern sich mit dem Massstab (Bild)

Bsp. Je nach Auflösung der Drohnenbilder (cm vs. m) verändern sich die ökologischen Indikatoren _Uferlänge_ oder _Anzahl_Inseln_ .

![](img/MSc_UNR_SpatDataScience1_HS2021.png)

Geilhausen, M., Laube, P., Ochsner, P.

andDoering, M.(2016).A Matchmade

inHeaven – A Hands-On GISPipeline

unlocksthe Potential of BudgetRemote

Sensing. In _Proceedings of the 24th_  _GIS_

_Research_  _UK Annual_  _Conference_ ,

_GISRUK16_ , University ofGreenwich,

30thMarch to 1st April 2016, London, UK.

# Spatial is special: Aggregationsabhängigkeit

![](img/MSc_UNR_SpatDataScience1_HS2022.png)

Die Wahl der __Aggregationsebene__ verändert die Daten und damit die räumlichen Muster

Bsp. hierZonierung in Kantone oder kleinereArbeitsmarktregionen

sog. _M_ odifiable _A_ real _U_ nit _P_ roblem (MAUP)

![](img/MSc_UNR_SpatDataScience1_HS2023.png)

Bildquelle: https://www.bfs.admin.ch

# Spatial is special: Nachbarschaftsabhängigkeit

![](img/MSc_UNR_SpatDataScience1_HS2024.jpg)

* Räumlich Phänomene zeigen oft gleichzeitig
  * __Räumliche Autokorrelation:__ Was nahe ist hat sehr ähnliche Werte
  * __Räumliche Heterogenität:__ Grosse Unterschiede auf kleinstem Raum

![](img/MSc_UNR_SpatDataScience1_HS2025.png)

Bildquellen: https://www.bfs.admin.ch, https://mindblog.dericbownds.net/2007/10/rich-and-poor.html

# Special is Special

* Grundannahme der Statistik (Daten/Stichproben sind __unabhängig__ ) gilt bei räumlichen Daten nicht!
* Räumliche Daten zeigen
  * __Massstabsabhängigkeit__
  * __Aggregationsabhängigkeit__
  * __Nachbarschaftsabhängigkeit__
    * Räumliche Autokorrelation
    * Räumliche Heterogenität
* <span style="color:#FF0000">Technische Herausforderung: Umgang mit</span>  <span style="color:#FF0000">Geodaten</span>  <span style="color:#FF0000">ist schwieriger</span>
* <span style="color:#00B050">d</span>  <span style="color:#00B050">afür riesiges Potenzial für besseres Verständnis unsere natürlichen/gebauten Umwelt, wichtig für Umweltwissenschaften</span>
* wir brauchen spezielle Methoden und Werkzeuge, um mit räumlichen Daten umgehen zu können
  * Geographische Informationssysteme GIS (nicht in diesem Kurs, aber __sehr__ spannend)
  * Spezielle Werkzeuge in R, aufbauend auf was Ihr schon könnt

# Programm

“What is special about spatial?”

__Das__  __ganz__  __kleine__  __Geodaten__  __Einmaleins__  <span style="color:#C00000"> __1x1__ </span>

RäumlicheAnnotation vonPunktdaten(Spatial Join)

NachbarschaftundNähe(Puffer)

RäumlicheAggregation (MAUP)

![](img/MSc_UNR_SpatDataScience1_HS2026.jpg)

# Für eine Geodatenanalyse brauche ich…(GIS 101)

* Ein __Modell__ zur Abbildung der Umwelt
  * Konzeptionelle Datenmodelle
  * __Entitäten__ (entities)oder __Felder__ (fields)
* __Datenstrukturen__ zur Speicherung der Lage und Attribute
  * Vektor (Punkte, Linien, Polygone) oder Raster
  * vgl. zu den R Datentypencharacter,numeric,vector, nur halt fürGeodatenmit Geometrie/Lageinformation
  * mit einem Koordinatensystemen (WGS84, CH1903+ LV95)
* Räumliche __Beziehungen__ für die Analyse
  * Geometrie (x,y,z),
  * Topologie (räumliche Beziehungen zwischen Objekten)

# 1. Konzeptionelle Raummodelle

Geodatenmüssenin irgendeiner Form __Attribute__ (die __Semantik__  __1__ ) und __räumliche Information__ über die zu beschreibenden Dinge berücksichtigen, …

…mit anderen Worten, das __“was”__ und __“wo”__ abdecken

sowohlAttribute als auch Lageinformation können auf unterschiedliche Art und Weise beschriebenwerden

Kt. GR

Fläche:              7105 km²

Einw.                    198000

#Besch. Tour.        12360

![](img/MSc_UNR_SpatDataScience1_HS2027.png)

  * __Entitäts-Modell (engl.__  _entities_  __):__ Der Raum ist bevölkert mit diskreten Objekten mit einer Lage und Attributen ( __Entitäten__ oder Objekte)
  * __Feld-Modell (engl.__  _fields_  __):__ Die zu untersuchende räumliche Eigenheit hat eine kontinuierliche räumliche Existenz, d.h. jeder Punkt im Raum hat einen Wert

![](img/MSc_UNR_SpatDataScience1_HS2028.png)

Semantik(vonaltgriechischσημαίνειν sēmaínein „bezeichnen“): allg.Lehrevon

BedeutungderZeichen, inGISderBedeutungszusammenhangdessenwasmodelliertwird

# 2. Datenstrukturen: Vektor oder Raster?

![](img/MSc_UNR_SpatDataScience1_HS2029.png)

<span style="color:#000000"> __Konzeptionelles__ </span>  <span style="color:#000000"> __Datenmodell__ </span>

![](img/MSc_UNR_SpatDataScience1_HS2030.png)

# Vektor-Datenstruktur

![](img/MSc_UNR_SpatDataScience1_HS2031.png)

Bildquelle: Heywood, I. et al. (2006). An Introduction to Geographical Information Systems, Pearson.

![](img/MSc_UNR_SpatDataScience1_HS2032.png)

# Koordinatensysteme

Karthesische

Koordinatensysteme

Geodätische

Koordinatensysteme

MitProjektion

X- und Y-Achse rechtwinklig,planar(daherkarthesisch)

CH1903 LV03altes SchweizerLandeskoordinatensyst(03 steht für 1903!)

CH1903+ LV95neues Schweizer Landeskoordinatensystem (seit 2017)

globale Koordinatensysteme in Länge und Breite

Lat/Lon

nicht rechtwinklig

z.B.WGS84(WorldGeodeticSystem)

![](img/MSc_UNR_SpatDataScience1_HS2033.png)

![](img/MSc_UNR_SpatDataScience1_HS2034.gif)

![](img/MSc_UNR_SpatDataScience1_HS2035.png)

https://www.ibm.com/support/knowledgecenter

https://www.swisstopo.admin.ch/de/wissen-fakten/geodaesie-vermessung

SCHERTENLEIB, M. H., BURRI K., ROHR U., 1998: Geografie II, Lektion 2, Inhalt: Kartografie, AKAD Verlag, Zürich, Stuttgart

# Zusammenfassung

![](img/MSc_UNR_SpatDataScience1_HS2036.png)

Räumliche Daten sind speziell weil sie __massstabsabhängig__ (Notwenigkeit der Angabe eines Massstabs), __aggregationsabhängig__ (Variation der Daten je nach Aggregation/Zonierung) und __nachbarschaftsabhängig__ sind (räumliche Abhängigkeit neben räumlicher Heterogenität).

Die Grundannahmeder __Unabhängigkeit__ von Stichproben giltnicht für räumliche Daten, deshalb braucht es eigene Methoden für die Raumanalyse.

Diezwei gebräuchlichsten __konzeptuellen Datenmodelle__ für räumliche Phänomene sind Entitäten (diskrete Objekte) und Felder (kontinuierlich).

Entitätenund Felder werden in GIS meist mit den __Datenstrukturen__ Vektor(für Entitäten) und Raster (für Felder)repräsentiert

Methoden-Modul

MScUmwelt und NatürlicheRessourcen

![](img/MSc_UNR_SpatDataScience1_HS2037.png)

<span style="color:#D30000">Screencast</span>

<span style="color:#D30000">Teil 2</span>

# Spatial Data Science 1

# Patrick Laube, Nils Ratnaweera & Nikos Bakogiannis
Geoinformatics Research Group

Institute of Natural Resource Sciences	
ZHAW Zurich University of Applied Sciences
Grüental, Postfach, CH-8820 Wädenswil

{laup, rata, bako}@zhaw.ch

![](img/MSc_UNR_SpatDataScience1_HS2038.jpg)

# Programm

“What is special about spatial?”

DasganzkleineGeodatenEinmaleins

__Räumliche__  __Annotation von__  __Punktdaten__  __(Spatial Join)__

NachbarschaftundNähe(Puffer)

RäumlicheAggregation (MAUP)

# Convenience Variablen

![](img/MSc_UNR_SpatDataScience1_HS2039.png)

![](img/MSc_UNR_SpatDataScience1_HS2040.png)

# Frage: Räumliche Einbettung der Sensoren?

![](img/MSc_UNR_SpatDataScience1_HS2041.png)

Überlege Dir,wie wir solche Sensoren räumlich einbetten könnten?

Wie könnten wir die Tabelle mit zusätzlichen räumlichen Attributen erweitern?

min

![](img/MSc_UNR_SpatDataScience1_HS2042.gif)

![](img/MSc_UNR_SpatDataScience1_HS2043.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2044.png)

![](img/MSc_UNR_SpatDataScience1_HS2045.png)

![](img/MSc_UNR_SpatDataScience1_HS2046.png)

# Räumliche Variablen: Attribut-Join

![](img/MSc_UNR_SpatDataScience1_HS2047.png)

![](img/MSc_UNR_SpatDataScience1_HS2048.png)

* Sensoren Lage-Code
* (räuml. Attribut)
  * 10=tief
  * 20=hoch
* Joinmit Tabelle Gelände

* Sensoren Lage-Code
* (räuml. Attribut)
  * 10=tief
  * 20=hoch
* Joinmit Tabelle Gelände

group_by()

summarize()

![](img/MSc_UNR_SpatDataScience1_HS2049.png)

# Räumliche Variablen: Spatial-Join

![](img/MSc_UNR_SpatDataScience1_HS2050.png)

![](img/MSc_UNR_SpatDataScience1_HS2051.png)

![](img/MSc_UNR_SpatDataScience1_HS2052.png)

SenKontext<-st_join(sensoren,flaechentyp)

# 3. Räumliche Beziehungen: Topologie

![](img/MSc_UNR_SpatDataScience1_HS2053.png)

* Topologische Beziehungen beschreiben dierelativenräumlichen Beziehungen von Objekten zueinander, wobei von der Geometrie abstrahiert wird. Somit ergänzt die Topologie die Positionsdaten und Formbeschreibungen aus derGeometriedurch (b)Nachbarschaftsaussagen
* _(Bill, 2010)_
* Topologie
  * overlaps (dt.überlappend)
  * touch (dt.berührend)
  * contains (dt.enthalten)
  * (vgl. spatial join)
  * intersects (dt.schneiden)

# Point-in-Polygon Test

* Point-in-polygon Test. Bsp. für räumliche Algorithmen
  * Wie oft schneidet ein Strahl von Punkt P das Polygon?
    * ungerade: drin
    * gerade: draussen

![](img/MSc_UNR_SpatDataScience1_HS2054.jpg)

http://idav.ucdavis.edu/~okreylos/TAship/Spring2000/PointInPolygon.html

# Topologie für Konnektivität

![](img/MSc_UNR_SpatDataScience1_HS2055.png)

* WasistübereinNetzwerkmitwasverbunden?
  * KürzesterPfadvon AnachB?
  * WasserflussdurchsGewässernetz

![](img/MSc_UNR_SpatDataScience1_HS2056.png)

http://www.google.ch

http://www.swisstopo.admin.ch/internet/swisstopo/de/home/products/landscape/vector200.html

# Programm

“What is special about spatial?”

DasganzkleineGeodatenEinmaleins

RäumlicheAnnotation vonPunktdaten(Spatial Join)

__Nachbarschaft__  __und__  __Nähe__  __(Puffer)__

RäumlicheAggregation (MAUP)

# Räumliche Analysen mit räumlichen Beziehungen

* «Wädenswil liegt im Kanton Zürich.»
  * __Spatial__  __join__
  * topologische Beziehung _contains_
* «Wädenswil ist ein Nachbarort von Horgen.»
  * __Nachbarschaftsbeziehung__
  * topologische Beziehung _touch_
* «Wädenswil ist in der Nähe von Männedorf.»
  * __Nähe__ (engl.proximity)
  * Wie modellieren wir «in der Nähe»?
  * Puffer

![](img/MSc_UNR_SpatDataScience1_HS2057.png)

# Nähe: Puffer

![](img/MSc_UNR_SpatDataScience1_HS2058.png)

![](img/MSc_UNR_SpatDataScience1_HS2059.png)

![](img/MSc_UNR_SpatDataScience1_HS2060.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2061.png)

# Übungen

![](img/MSc_UNR_SpatDataScience1_HS2062.png)

SpatialJoinmit Punktdaten zur Wasserverfügbarkeit und Rasterdaten zu Skeletanteil im Boden

Frage: Wieso hat Schweiz so seltsame Form?

![](img/MSc_UNR_SpatDataScience1_HS2063.png)

![](img/MSc_UNR_SpatDataScience1_HS2064.png)

# Nähe: Puffertypen

![](img/MSc_UNR_SpatDataScience1_HS2065.gif)

Punkt-Puffer

Linien-Puffer

Flächen-Puffer

hier auf Rasterdaten, nicht Vektordaten

% graue Zellen im Puffer

# Puffer-Aufgabe in den Übungen

![](img/MSc_UNR_SpatDataScience1_HS2066.png)

![](img/MSc_UNR_SpatDataScience1_HS2067.gif)

Sen106 liegt selbst auf der Kategorie «weiss», ist aber zu 85% von «grau» umgeben.

Bestimme im Puffer den häufigsten Zellenwert = Modus (weiss oder grau) in der Nachbarschaft von Sen106

für Sen106 ist Modus grau

# Aus unseren Projekten: ASTRA Wildtierunfälle

![](img/MSc_UNR_SpatDataScience1_HS2068.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2069.png)

* __Vektordaten__
  * Anzahl Quellen in der Nähe der Strasse
  * Länge der Flüsse in der Nähe der Strasse
  * Waldfläche in der Nähe der Strasse
* __Rasterdaten__
  * Max. Lärmbelastung in der Nähe
  * Anteil Wald (nun Raster)
* __Leitstrukturen__
  * leiten Wild auf die Strasse hin
  * Hydrologische Modellierung
  * 2 Puffer-Modell

![](img/MSc_UNR_SpatDataScience1_HS2070.png)

![](img/MSc_UNR_SpatDataScience1_HS2071.png)

# Zusammenfassung

![](img/MSc_UNR_SpatDataScience1_HS2072.png)

Ein __spatial__  __join__ basiert auf der topologischen Beziehungcontainsund erlaubt dieAnnotation von Punkten mit räumlichen Attributen.

__Topologische Beziehungen__ beschreiben die relativen räumlichen Beziehungen von Objekten zueinander, wobei von der Geometrie abstrahiertwird (z.B.contain/beinhalten, Punkt in Polygon).

__Pufferoperationen__ erlauben die Erfassung von Nachbarschaftsbeziehungen von Punkten, Linien und Polygonen.

Methoden-Modul

MScUmwelt und NatürlicheRessourcen

![](img/MSc_UNR_SpatDataScience1_HS2073.png)

# Spatial Data Science 1

<span style="color:#D30000">Screencast</span>

<span style="color:#D30000">Teil 3</span>

# Patrick Laube, Nils Ratnaweera & Nikos Bakogiannis
Geoinformatics Research Group

Institute of Natural Resource Sciences	
ZHAW Zurich University of Applied Sciences
Grüental, Postfach, CH-8820 Wädenswil

{laup, rata, bako}@zhaw.ch

![](img/MSc_UNR_SpatDataScience1_HS2074.jpg)

# Programm

“What is special about spatial?”

DasganzkleineGeodatenEinmaleins

RäumlicheAnnotation vonPunktdaten(Spatial Join)

NachbarschaftundNähe(Puffer)

__Räumliche__  __Aggregation (MAUP)__

# Aggregationsabhängigkeit

Oft mussmitaggregiertenDatengearbeitetwerden,z.B.ausDatenschutz-gründen,weildieDatennuraggregierterhobenwurden,ausGründenderVergleichbarkeitusw.

sog. __Choroplethen-Karte__ (Flächenwertstufenkarte),ausχῶρος“Fläche/Region" and πλῆθος“Vielfaches”)

![](img/MSc_UNR_SpatDataScience1_HS2075.png)

Quelle: Atlas derSchweizInteraktiv, Version 1.

# Hierarchische Aggregation von Raumeinheiten

<span style="color:#000000">Prozent</span>  <span style="color:#000000">Nutzung</span>  <span style="color:#000000">ÖV –</span>  <span style="color:#000000">Niveau</span>  <span style="color:#FF0000">Kanton</span>

![](img/MSc_UNR_SpatDataScience1_HS2076.png)

Quelle: Atlas derSchweizInteraktiv, Version 1.

<span style="color:#000000">Prozent</span>  <span style="color:#000000">Nutzung</span>  <span style="color:#000000">ÖV –</span>  <span style="color:#000000">Niveau</span>  <span style="color:#FF0000">Bezirk</span>

![](img/MSc_UNR_SpatDataScience1_HS2077.png)

Quelle: Atlas derSchweizInteraktiv, Version 1.

<span style="color:#000000">Prozent</span>  <span style="color:#000000">Nutzung</span>  <span style="color:#000000">ÖV –</span>  <span style="color:#000000">Niveau</span>  <span style="color:#FF0000">Gemeinde</span>

![](img/MSc_UNR_SpatDataScience1_HS2078.png)

Quelle: Atlas derSchweizInteraktiv, Version 1.

# MAUP: Ein spezifisch geographisches Phänomen

* __Beobachtungen bei Untersuchungen mit aggregierten Daten:__
* Je nach Wahl der Raumeinheit ergeben sich andere Werte für das/die untersuchte(n) Merkmal(e).
* Durch Veränderung der Raumeinheiten (d.h. durch verschiedenartige Aggregation) können teilweise sehr unterschiedliche Resultate entstehen.
* Beispiele (siehe folgende Folien):
  * hierarchische Aggregation von Raumeinheiten: Gemeinden, Bezirke, Kantone
  * Bildung verschiedener Grenzziehungen bei gegebener Zahl von Einheiten
* Fragen:
  * Welches ist das ‘richtige’ Aggregationsniveau (= Massstab)?
  * Welche Raumeinheiten sollen zusammengefasst werden?

![](img/MSc_UNR_SpatDataScience1_HS2079.png)

Quelle:O’SULLIVAN, D. and UNWIN, D.J. (2010): _Geographic Information Analysis_ . Hoboken, NJ: Wiley,p. 36ff.

# Kombinatorische Explosion bei Zonierung

DieZahlmöglicherGrenzziehun-gen (=Zonierungen)fürdie Aggregation vonRaumeinheitenexplodiertsehrschnell,wiedasnebenstehendeBeispielschonfürkleineZahlenzeigt.

EssindhiernureinigederMöglichkeitenderZonierunggezeigt.

![](img/MSc_UNR_SpatDataScience1_HS2080.png)

Quelle: The Modifiable Areal Unit Problem. CATMOG (Concepts and Techniques in Modern Geography), Vol. 38, Norwich: Geo Books.DerKlassikerzumThemaMAUP (40Seiten).

# Weitere Beobachtungen

* Es gibt __kein vorhersehbares Verhalten__ der Werte bei Aggregation und dadurch keine systematische Korrekturmöglichkeit. Beispiel Mittelwerte:
  * sie können durch die Aggregation ansteigen
  * sie können aber auch kleiner werden
* Würden die Raumeinheiten bei gleicher Zahl mit anderen Grenzziehungen anders gebildet, dann ergäben sich völlig unterschiedliche Werte.
* Dies kann sogar ausgenutzt werden (und wird in der Politik durchaus ausgenutzt), um manipulativ für eine Interessengruppe vorteilhafte Raumeinheiten zu bilden (engl. gerrymandering):
  * Beispiel: Wahlbezirke ‘optimiert’ für die Regierungspartei (v.a. beliebt bei Mehrheitswahlrecht)
  * Beispiel: Manipulation der Grenzziehung von Regionen in einer Weise, dass maximale Unterstützungsbeiträge fällig werden (Subventionen).

# Fun Facts 1: gerrymandering

![](img/MSc_UNR_SpatDataScience1_HS2081.jpg)

http://en.wikipedia.org/wiki/Gerrymandering

![](img/MSc_UNR_SpatDataScience1_HS2082.png)

![](img/MSc_UNR_SpatDataScience1_HS2083.png)

https://www.washingtonpost.com/news/wonk/wp/2016/10/28/how-to-gerrymander-your-way-to-a-huge-election-victory/

![](img/MSc_UNR_SpatDataScience1_HS2084.png)

![](img/MSc_UNR_SpatDataScience1_HS2085.png)

Quelle:http://en.wikipedia.org/wiki/File:Illinois_District_4_2004.png

# Fun Facts 2: How to lie with maps

![](img/MSc_UNR_SpatDataScience1_HS2086.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2087.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2088.png)

Oben: Dr. John Snow’s Karte des Cholera-Ausbruchs im Gebiet um die Broad Street in London, 1854. (Vorlesung 1)

Aufgrund der Häufungen der Cholerafälle (kleine Punkte) wurde die Wasserpumpe an der Broad Street als Quelle identifiziert.

Von den drei verschiedenen Aggregationen im unteren Bild gibt aber nur die erste diesen Sachverhalt wieder. Die anderen Aggregationen führen zu Fehlschlüssen.

![](img/MSc_UNR_SpatDataScience1_HS2089.jpg)

Quelle:Monmonier, M.S. (1991): _How_  _to_  _Lie_  _with_  _Maps_ . Chicago: Chicago University Press.

https://anotherheader.files.wordpress.com/2017/03/dsc_2886-edit-edit.jpg?w=1024&h=683

# Übungen

![](img/MSc_UNR_SpatDataScience1_HS2090.png)

![](img/MSc_UNR_SpatDataScience1_HS2091.png)

Choroplethenkartenaus Punktmessungen zur Wasserverfügbarkeit

MAUPKt.vs.Bez.

# MAUP: Definition

* Heywood et al. (2006) definieren das Modifiable Areal Unit Problem (MAUP) wie folgt:
* Das MAUP besteht aus zwei Teilproblemen:
  * _Skalenproblem / Massstabsproblem_ : Raumeinheiten sind oft beliebig und aggregieren verortete Daten anders je nach Skala. — Welches ist die richtige Skala (Massstab) für die Untersuchung eines gegebenen Sachverhalts  (Individuum, Haushalt, Gemeinde, Bezirk, Kanton, …) ?
  * _Aggregationsproblem_ : Es existieren viele mögliche Varianten der Zonenbildung (und damit der Aggregation) auf einer Skalenstufe. — Welches ist die richtige für die Untersuchung eines gegebenen Sachverhalts?

<span style="color:#000000">„A problem arising from the imposition of artificial units of spatial reporting on continuous geographic phenomena resulting in the generation of artificial spatial patterns.“ (p. 416)</span>

# Empfehlungen und Lösungsansätze

* DieMissachtung des Problems kann hingegen zu __Fehlschlüssen__ und __Scheinkorrelationen__ führen.
* Ansätze zur Lösung des Problems müssen zwingend die geographische Natur des untersuchten Phänomens einbeziehen.
* __Zonierungen__ und aggregierte Daten __nicht unbesehen übernehmen__ . Raumeinheiten hinterfragen: Entspricht die Skala und die Aggregation dem zu untersuchendenSachverhalt?
* Erhaltene Resultate bezüglich statistischer Fehler und Aussagekraft beurteilen, __sowie alternative Zonierungen__ und Aggregationen generieren und __vergleichen__ :
  * Entstehen __unterschiedliche Resultate__ ? Wiegrosssind diese Unterschiede und wo treten sie auf?
  * Welche Zonierung/Aggregation liefert vom geographischen Standpunkt aus plausible Resultate?

# Zusammenfassung

![](img/MSc_UNR_SpatDataScience1_HS2092.png)

Das __Modifiable__  __Areal Unit Problem (MAUP)__ tritt auf, wenn künstliche Raumunterteilungen an sich kontinuierliche geographische Phänomeneaggregieren. DasMAUP kann zu Artefakten, Trugschlüssen und Fehlinterpretationen führen.

# Zusätzliche Lektüre

![](img/MSc_UNR_SpatDataScience1_HS2093.png)

<span style="color:#000000">O’SULLIVAN</span>  <span style="color:#000000">, D. and UNWIN, D.J. (</span>  <span style="color:#000000">2010)</span>  <span style="color:#000000">:</span>  <span style="color:#000000"> _Geographic Information Analysis_ </span>  <span style="color:#000000">.</span>  <span style="color:#000000">2</span>  <span style="color:#000000">nd</span>  <span style="color:#000000">Ed, Hoboken</span>  <span style="color:#000000">, NJ: Wiley.</span>  <span style="color:#000000"> __Kapitel__ </span>  <span style="color:#000000"> __2__ </span>  <span style="color:#000000">,</span>  <span style="color:#000000">p.33ff</span>

![](img/MSc_UNR_SpatDataScience1_HS2094.jpg)

![](img/MSc_UNR_SpatDataScience1_HS2095.png)

# Klassiker zur Vorlesung

Longley, P. A.,Goodchild, M. F.,Maguire, D.J.andRhind, D.W. (2005): _Geographic_  _Information Systems_  _and_  _Science_ . 2nd Edition. JohnWiley.

Monmonier, M.S. (1991): _How_  _to_  _Lie_  _with_  _Maps_ . Chicago: Chicago University Press.Ein sehr lesenswertes und witziges Büchlein, das zeigt, wie man Karten nicht machen sollte.

Openshaw, S. (1984): TheModifiableAreal Unit Problem. _CATMOG (_  _Concepts_  _and_  _Techniques_  _in Modern_  _Geography_  _)_ , Vol. __38__ , Norwich:GeoBooks.Der Klassiker zum Thema MAUP (40 Seiten).

Tobler, W. R. (1970). AcomputermodelsimulationofurbangrowthintheDetroitregion. _Economic_  _Geography_ , __46__ (2): 234-240.

