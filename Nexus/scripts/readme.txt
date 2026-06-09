🔋 Omega-Accumulator Upgrade System (Factorio 2.0)
Dieses Dokument beschreibt die Logik des dynamischen Akkumulator-Upgrades.
🚀 Kernfunktionen
Die Mod ermöglicht es, Akkumulatoren über mehrere Forschungsstufen hinweg zu verbessern. Dabei wird die Fabrik des Spielers nahtlos modernisiert.
1. Physischer Austausch (Welt & Inventar)
Sobald eine omega-accumulator-upgrade-Forschung abgeschlossen wird, führt das Skript folgende Aktionen aus:

    Weltweit: Alle platzierten omega-accumulator werden durch das neue Tier (z.B. T2 oder T3) ersetzt.
    Energie-Erhalt: Die gespeicherte Energie in Joule bleibt identisch. Größere Akkus starten daher teilentladen, anstatt gratis Strom zu erzeugen.
    Qualität: Die Factorio 2.0 Qualitätsstufen werden ausgelesen und auf die neuen Entities übertragen (Legendär bleibt Legendär).

2. Logistik & Produktion

    Inventare & Kisten: Alle Items im Spieler-Inventar und in sämtlichen Truhen (Container & Logistik) werden automatisch gegen die verbesserte Version ausgetauscht.
    Montagemaschinen: Bestehende Fabriken, die noch das alte Modell produzieren, werden automatisch auf das neue Rezept umgestellt.
    Anforderungen: Logistik-Sektionen in Kisten und beim Spieler werden aktualisiert, sodass Roboter automatisch die neuen Modelle liefern.

3. Upgrade-Planer (Intelligente Kette)
In der data.lua ist eine Kette definiert:
Normaler Akku ➔ Omega T1 ➔ Omega T2 ➔ Omega T3

    In der control.lua wird per force.set_upgrade_slot sichergestellt, dass der Upgrade-Planer nach der Forschung direkt das beste Modell anvisiert (z.B. Normal -> T3).

📁 Dateistruktur

    control.lua: Enthält die Event-Handler für Forschung und Konfigurationsänderungen.
    scripts/upgrades.lua: Die "Universal-Funktion", die den schweren Austausch-Job erledigt.
    prototypes/omega_accumulator.lua: Definition der Entities mit fast_replaceable_group = "accumulator".