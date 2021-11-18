### 09:00 - 09:05 Vorstellung & Zeitplan

- Wer bin ich?
- Was sind die heutigen Ziele?
- wie werden wir arbeiten?

### 09:05 - 09:40 Input: Einführung GIS

- Was ist "GIS"
- was sind räumliche Daten
  - Beispiele aus dem alltag
  - Beispiel aus der Vegetationsökologie
  - Ausgefallene Beispiele wie Zellen in einer Petrischale und Eisvorkommen auf dem Mond
- Was machen räumliche Daten aus?
  - lokales bezugssystem (zellen zueinander)
  - allenfalls globales bezugssystem (wo auf der welt)
- Koordinatenbezugssysteme:
  - was ist die grundlegende Problematik eines Koordinatenbezugssystems?
  - was für CRS gibt es überhaupt und wodurch unterscheiden sie sich?
- Datentypen
  - Entitäten vs. Feldmodell, Vektor vs Raster
  - Vektordaten und ihre Eigenheiten und Anwendungsgebiete
  - Rasterdaten und ihre Eigenheiten und Anwendungsgebiete

### 09:50 - 10:35 Übung 1: Vektordaten in R

- xy koordinaten von csv einlesen
- scatterplot erstellen
- sf installieren
- koordinatensystem zuweisen
- koordinatensystem transformieren
- karte erstellen
- wie werden Koordinantensysteme zugewiesen und gespeichert? ESPG, wkt


### 10:50 - 11:35 Übung 1 & 2: Vektordaten in R

- wie sind simple features definiert
- 3 ebenen: Feature, sfc, sf
- wie sieht es aus mit komplexeren geometrien (Linien, Polygone?)


### 12:00 - 13:00 Mittagspause

### 13:00 - 13:35 Input: Raster

- Warum braucht es raster?
- wie werden rasterdaten
  - gespeichert?
  - importiert ("internal representation)?
  - visualisiert?
  - transformiert?

### 13:50 - 14:35 Übung 2: Raster

- Rasterdaten
  - herunterladen
  - importieren
  - visualisieren
- rasterwerte an koordinaten extrahieren (`extract`)

### 14:50 - 15:35 Input: Sampling Design

- verschiedene Werkzeuge, um ein Sampling design durch zu führen
- `set.seed()`
- was gibt es für verschiedene sampling designs (siehe [folie 15](sampling-design-folie.png))?
  - Zufallsflächen (innerhalb der statistischen Grundgesamtheit)
    - streng genommen erforderlich für statistische Auswertungen (aber systematische Probeflächen i.d.R. OK und einfacher zu lokalisieren)
    - ABER: seltene Einheiten fehlend oder unterrepräsentiert
  - stratifiziert-zufällig (oder stratifiziert-systematisch)
    - statistisch angemessen
    - man kann Repräsentanz seltener Einheiten im Datensatz sicherstellen
    - ABER: es werden vorab GIS-Daten für sinnvolle Straten benötigt
  - Regeln zum Verschieben/Verwerfen von Plots
    - hängen von der Fragestellung ab
    - müssen klar definiert werden
    - sollten keine Verzerrung (bias) in die Daten bringen

### 15:50 - 16:35 Übung 3: Sampling Design

- Sampling design in R umsetzen bestimmen.






