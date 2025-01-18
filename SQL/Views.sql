-- View 1: Gesamtkäufe Kunden
CREATE OR REPLACE VIEW Kunden_Produkte_Ausgaben AS
SELECT 
    k.Alias AS Kunde,
    k.Telefonnummer,
    wv.ProduktNummer,
    p.Bezeichner AS Produkt,
    p.Preis AS Einzelpreis,
    COUNT(wv.ProduktNummer) AS Gekaufte_Anzahl,
    SUM(p.Preis) AS Gesamtausgabe
FROM 
    Kartell_Kunde k
JOIN 
    Wird_Verkauft wv ON k.Alias = wv.Alias
JOIN 
    Produkt p ON wv.ProduktNummer = p.ProduktNummer
GROUP BY 
    k.Alias, k.Telefonnummer, wv.ProduktNummer, p.Bezeichner, p.Preis
ORDER BY 
    k.Alias;

-- View 2: Gesamtausgaben
CREATE OR REPLACE VIEW Kunden_Gesamtausgaben AS
SELECT 
    k.Alias AS Kunde,
    k.Telefonnummer,
    SUM(p.Preis) AS Gesamtausgabe
FROM 
    Kartell_Kunde k
JOIN 
    Wird_Verkauft wv ON k.Alias = wv.Alias
JOIN 
    Produkt p ON wv.ProduktNummer = p.ProduktNummer
GROUP BY 
    k.Alias, k.Telefonnummer;

-- View 3: Restkapazität der genutzten Lager
CREATE OR REPLACE VIEW Schmuggler_Lager_Kapazitaet AS
SELECT 
    s.SchmugglerNummer,
    k.Name AS Schmuggler_Name,
    l.LagerNummer,
    l.Ort AS Lager_Ort,
    la.LagerTyp,
    la.MaximaleKapazitaet,
    COUNT(b.ProduktNummer) AS Belegte_Produkte,
    la.MaximaleKapazitaet - COUNT(b.ProduktNummer) AS Verfuegbare_Kapazitaet
FROM 
    Schmuggler s
JOIN 
    Kartell_Mitarbeiter k ON s.MitarbeiterNummer = k.MitarbeiterNummer
JOIN 
    Transportiert t ON s.SchmugglerNummer = t.SchmugglerNummer
JOIN 
    Lager_Inventar l ON t.LagerNummer = l.LagerNummer
JOIN 
    Lagerart la ON l.LagerTyp = la.LagerTyp
LEFT JOIN 
    Besitzt b ON l.LagerNummer = b.LagerNummer
GROUP BY 
    s.SchmugglerNummer, k.Name, l.LagerNummer, l.Ort, la.LagerTyp, la.MaximaleKapazitaet;
