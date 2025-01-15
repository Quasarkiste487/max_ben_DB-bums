-- Sicht 1:

CREATE OR REPLACE VIEW Verkaufsanalyse AS
SELECT 
    WV.Alias AS Kunde,
    WV.Telefonnummer AS Telefonnummer,
    WV.ProduktNummer AS Produkt,
    B.LagerNummer AS Lager,
    K.LagerTyp AS Lager_Typ,
    V.VertrieblerNummer AS Vertriebler
FROM 
    Wird_Verkauft WV
JOIN 
    Besitzt B ON WV.ProduktNummer = B.ProduktNummer
JOIN 
    Verkauft V ON B.LagerNummer = V.LagerNummer
JOIN 
    Kennt K ON V.VertrieblerNummer = K.VertrieblerNummer;

-- Sicht 2:

CREATE OR REPLACE VIEW Produktionskapazität AS
SELECT 
    WH.Bezeichnung AS Produkt,
    WH.LaborNummer AS Labor,
    KH.ChemikerNummer AS Chemiker
FROM 
    Wird_Hergestellt WH
JOIN 
    Kann_Herstellen KH ON WH.Bezeichnung = KH.Bezeichnung;

-- Sicht 3:

CREATE OR REPLACE VIEW Logistikübersicht AS
SELECT 
    T.SchmugglerNummer AS Schmuggler,
    B.LagerNummer AS Lager,
    WV.ProduktNummer AS Produkt
FROM 
    Transportiert T
JOIN 
    Besitzt B ON T.LagerNummer = B.LagerNummer
JOIN 
    Wird_Verkauft WV ON B.ProduktNummer = WV.ProduktNummer;
