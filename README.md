# GEO403_Landslide_Analyse
Landslide Analyse Vietnam

Autoren: Mitra Jafar Beglou, Panagiotis Koutsikos, Sheila Tholen


Um eine Hangrutschungsanalyse durchzuführen, sollten die verschiedenen thematischen Klassen (Inputdaten) und ein Hangrutschungsdatensatz als Rasterdatensatz mit dem gleichen Bezugssystem, gleicher Zellgröße und eindeutigen Werten vorliegen. Mittels Tools wie dem r.report können die Pixel pro Klasse und Hangrutschungen je Klasse ermittelt werden und das R Skript übergeben werden. Dies ist in dem QGIS Model bereits implementiert (über Model bearbeiten kann die Erstellung der r.reports aktiviert werden, aus Effizienzgründen sind diese deaktiviert, da die Erzeugung nur einmal notwendig ist). Dabei können zudem die thematischen Klassen mit einem Sichtfelsdatensatz verrechnet werden, um die Genauigkeit zu erhöhen.

Das Skript (R) ermöglicht die Berechnung von der absoluten Häufigkeit der Hangrutschungen, der Hangrutschungsdichte sowie dem Statistical Index (Si) und dem Weighting Factor (WF).

Das Model (erstellt mit dem QGIS ModelBuilder) kann über QGIS geöffnet werden und erzeugt die Gefahrenkarten nach (1) Statistical Index und mit gewichteten Parametern (2) Weighting Factor. 




