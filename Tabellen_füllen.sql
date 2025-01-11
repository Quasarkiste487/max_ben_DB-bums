-- KartellMitarbeiter Tabelle
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00001', 'Max Mustermann', 'beschäftigt', 5000.00, TO_DATE('2015-01-01', 'YYYY-MM-DD'), '1234567890', 'Musterstraße 1');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00002', 'Anna Müller', 'verfügbar', 4500.00, TO_DATE('2018-06-15', 'YYYY-MM-DD'), '2345678901', 'Beispielweg 5');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00003', 'Peter Schmidt', 'auf Regierungsliste', 0.00, TO_DATE('2020-03-10', 'YYYY-MM-DD'), '3456789012', 'Hauptstraße 10');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00004', 'Julia Fischer', 'beschäftigt', 5200.00, TO_DATE('2017-09-23', 'YYYY-MM-DD'), '4567890123', 'Nebenstraße 2');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00005', 'Daniel Weber', 'in Verwahrung', 0.00, TO_DATE('2019-11-01', 'YYYY-MM-DD'), '5678901234', 'Versteckplatz 7');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse) VALUES
('M00006', 'Lisa Schubert', 'verfügbar', 4800.00, TO_DATE('2021-05-10', 'YYYY-MM-DD'), '6789012345', 'Sonnengasse 12');
COMMIT;



-- Chemiker Tabelle
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten) VALUES
('C00001', 'M00001', 'Diplom', 5, 3);
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten) VALUES
('C00002', 'M00002', 'Doktor', 10, 2);
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten) VALUES
('C00003', 'M00004', 'Professor', 3, 1);
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten) VALUES
('C00004', 'M00006', 'Andere', 7, 4);
Commit;

INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit) VALUES
('S00001', 'M00003', 'Route A, Route B', 85, 'verschwiegen');
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit) VALUES
('S00002', 'M00005', 'Route C', 60, 'Plaudertasche');
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit) VALUES
('S00003', 'M00006', 'Route D, Route E', 70, 'bestechlich');
COMMIT;


-- Vertriebler Tabelle
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten) VALUES
('V00001', 'M00002', 8, 30000, 2);
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten) VALUES
('V00002', 'M00004', 7, 25000, 3);
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten) VALUES
('V00003', 'M00006', 6, 20000, 1);
COMMIT;


-- KartellKunde Tabelle
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde001', '111222333', TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'Produkt001:20');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde002', '444555666', TO_DATE('2021-06-15', 'YYYY-MM-DD'), 'Produkt002:15');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde003', '777888999', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'Produkt003:10');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde004', '123456789', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'Produkt004:30');
COMMIT;


-- Lagerart Tabelle
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde001', '111222333', TO_DATE('2020-01-10', 'YYYY-MM-DD'), 'Produkt001:20');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde002', '444555666', TO_DATE('2021-06-15', 'YYYY-MM-DD'), 'Produkt002:15');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde003', '777888999', TO_DATE('2022-08-20', 'YYYY-MM-DD'), 'Produkt003:10');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf) VALUES
('Kunde004', '123456789', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'Produkt004:30');
COMMIT;

-- Lager_inventar Tabelle
INSERT INTO Lager_inventar (InventarID, LagerNummer, Größe, Einlagerungsdatum) VALUES
(1, 'L00001', 500, TO_DATE('2023-01-01', 'YYYY-MM-DD'));
INSERT INTO Lager_inventar (InventarID, LagerNummer, Größe, Einlagerungsdatum) VALUES
(2, 'L00002', 1200, TO_DATE('2023-02-01', 'YYYY-MM-DD'));
INSERT INTO Lager_inventar (InventarID, LagerNummer, Größe, Einlagerungsdatum) VALUES
(3, 'L00003', 800, TO_DATE('2023-03-15', 'YYYY-MM-DD'));
INSERT INTO Lager_inventar (InventarID, LagerNummer, Größe, Einlagerungsdatum) VALUES
(4, 'L00004', 1500, TO_DATE('2023-04-10', 'YYYY-MM-DD'));
COMMIT;


-- Drogenart Tabelle
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel) VALUES
('Meth', 'Flüssigkeit', 'Zutat1,Zutat2', 120, 95, 9);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel) VALUES
('Kokain', 'Pulver', 'Zutat3,Zutat4', 90, 80, 8);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel) VALUES
('LSD', 'Aerosol', 'Zutat5,Zutat6', 60, 70, 7);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel) VALUES
('Heroin', 'Feststoff', 'Zutat7,Zutat8', 150, 99, 10);
COMMIT;


-- Produkt Tabelle
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial) VALUES
('Produkt001', 200, TO_DATE('2022-12-10', 'YYYY-MM-DD'), 20, 90);
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial) VALUES
('Produkt002', 250, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 15, 85);
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial) VALUES
('Produkt003', 300, TO_DATE('2023-02-20', 'YYYY-MM-DD'), 10, 80);
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial) VALUES
('Produkt004', 350, TO_DATE('2023-03-25', 'YYYY-MM-DD'), 5, 95);
COMMIT;

-- Labor Tabelle
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel) VALUES
('LAB001', 'Berlin', 'Standard', 5, 7);
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel) VALUES
('LAB002', 'München', 'Erweitert', 8, 8);
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel) VALUES
('LAB003', 'Hamburg', 'Hochsicher', 10, 9);
COMMIT;

