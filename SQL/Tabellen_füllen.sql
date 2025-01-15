-- 1. Tabellen mit Eltern-Schlüsseln (Primärschlüssel) füllen

-- Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('M001', 'Max Mustermann', 'verfügbar', 3500.00, TO_DATE('2021-05-10', 'YYYY-MM-DD'), '1234567890', 'Musterstraße 1');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('M002', 'Erika Musterfrau', 'beschäftigt', 5000.00, TO_DATE('2020-03-15', 'YYYY-MM-DD'), '0987654321', 'Hauptstraße 5');

-- Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Drogen ABC', 'Pulver', 'Zutat A, Zutat B', 60, 80, 5);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Drogen XYZ', 'Flüssigkeit', 'Zutat C, Zutat D', 45, 50, 3);

-- Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Lager A', 1000, 30, 15);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Lager B', 500, 45, 20);

-- 2. Weitere Tabellen füllen, die auf die primären Schlüssel der vorherigen Tabellen verweisen

-- Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
VALUES ('C001', 'M001', 'Doktor', 15, 2);
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
VALUES ('C002', 'M002', 'Diplom', 10, 1);

-- Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
VALUES ('S001', 'M001', 'Route 66', 75, 'verschwiegen');
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
VALUES ('S002', 'M002', 'Route 42', 50, 'bestechlich');

-- Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
VALUES ('V001', 'M001', 8, 150, 3);
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
VALUES ('V002', 'M002', 6, 120, 5);

-- Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('K001', '01123456789', TO_DATE('2021-06-01', 'YYYY-MM-DD'), 'Drogen ABC, Drogen XYZ');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('K002', '02234567890', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'Drogen PQR, Drogen DEF');

-- Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
INSERT INTO Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
VALUES ('L001', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'unbekannt', 'Ort 1', 100, TO_DATE('2021-01-15', 'YYYY-MM-DD'), 'Lager A');
INSERT INTO Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
VALUES ('L002', TO_DATE('2022-02-20', 'YYYY-MM-DD'), 'vermutet', 'Ort 2', 200, TO_DATE('2022-02-25', 'YYYY-MM-DD'), 'Lager B');

-- 3. Tabellen füllen, die auf bereits erstellte Schlüssel referenzieren

-- Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial)
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial)
VALUES ('P001', 100.00, TO_DATE('2021-05-01', 'YYYY-MM-DD'), 1, 90);
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial)
VALUES ('P002', 150.00, TO_DATE('2022-06-10', 'YYYY-MM-DD'), 2, 80);

-- Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
VALUES ('L001', 'Labor A', 'Ausrüstung A', 5, 8);
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
VALUES ('L002', 'Labor B', 'Ausrüstung B', 3, 6);

-- Wird_Hergestellt (Bezeichnung, LaborNummer)
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Drogen ABC', 'L001');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Drogen XYZ', 'L002');

-- Kann_Herstellen (Bezeichnung, ChemikerNummer)
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Drogen ABC', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Drogen XYZ', 'C002');

-- Besitzt (ProduktNummer, LagerNummer)
INSERT INTO Besitzt (ProduktNummer, LagerNummer)
VALUES ('P001', 'L001');
INSERT INTO Besitzt (ProduktNummer, LagerNummer)
VALUES ('P002', 'L002');

-- Transportiert (SchmugglerNummer, LagerNummer)
INSERT INTO Transportiert (SchmugglerNummer, LagerNummer)
VALUES ('S001', 'L001');
INSERT INTO Transportiert (SchmugglerNummer, LagerNummer)
VALUES ('S002', 'L002');

-- Verkauft (VertrieblerNummer, LagerNummer)
INSERT INTO Verkauft (VertrieblerNummer, LagerNummer)
VALUES ('V001', 'L001');
INSERT INTO Verkauft (VertrieblerNummer, LagerNummer)
VALUES ('V002', 'L002');

-- Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('K001', '01123456789', 'P001');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('K002', '02234567890', 'P002');

-- Kennt (VertrieblerNummer, LagerTyp)
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V001', 'Lager A');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V002', 'Lager B');
COMMIT;