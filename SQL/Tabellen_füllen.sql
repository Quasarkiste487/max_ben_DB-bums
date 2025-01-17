-- 1. Tabellen mit Eltern-Schlüsseln (Primärschlüssel) füllen

-- Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K001', 'Max Wandrey', 'verfügbar', 5500.00, TO_DATE('2020-05-10', 'YYYY-MM-DD'), '1234567890', 'Brandvorwerkstr. 8');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K002', 'Ben Kaden', 'beschäftigt', 4800.00, TO_DATE('2020-03-15', 'YYYY-MM-DD'), '0987654321', 'Kurt-Eisner-Str. 35');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K003', 'Farin Förster', 'auf Regierungsliste', 4350.98, TO_DATE('2023-03-15', 'YYYY-MM-DD'), '09876545321', 'Hauptstraße 5');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K004', 'Chiara Geier', 'verfügbar', 3125.00, TO_DATE('2024-03-15', 'YYYY-MM-DD'), '0987612321', 'Breitenfelder Str. 9');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K005', 'Ben Beckschäfer', 'in Verwahrung', 0.00, TO_DATE('2022-03-15', 'YYYY-MM-DD'), '8817654321', 'Sonderhausener Weg 32');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K006', 'Robin Wiemer', 'verfügbar', 2408.00, TO_DATE('2024-03-15', 'YYYY-MM-DD'), '1087654323', 'Woauchimmer 44');
INSERT INTO Kartell_Mitarbeiter (MitarbeiterNummer, Name, Status, Gehalt, Eintrittsdatum, Telefonnummer, Adresse)
VALUES ('K007', 'Matthes Böttcher', 'verfügbar', 5200.45, TO_DATE('2024-03-15', 'YYYY-MM-DD'), '5930154321', 'Nobodycares 12');

-- Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Kokain', 'Pulver', 'Zutat A, Zutat B', 180, 80, 1);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Speed', 'Flüssigkeit', 'Zutat C, Zutat D', 30, 50, 5);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('LSD', 'Pille', 'Zutat C, Zutat D', 90, 20, 3);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Lachgas', 'Aerosol', 'Zutat C, Zutat D', 45, 5, 2);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Meth', 'Kristall', 'Zutat C, Zutat D', 240, 95, 10);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Heroin', 'Feststoff', 'Zutat C, Zutat D', 120, 100, 6);
INSERT INTO Drogenart (Bezeichnung, Aggregatsart, Zutaten, Kochzeit, Abhaengigkeitsfaktor, KochGefahrenlevel)
VALUES ('Ecstasy', 'Pille', 'Zutat C, Zutat D', 40, 25, 4);

-- Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Container', 1000, 365, 30);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Toter Briefkasten', 20, 1, 1);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Lagerhalle', 50000, 90, 15);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Kofferraum', 150, 5, 5);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Dünndarm', 5, 3, 3);
INSERT INTO Lagerart (LagerTyp, MaximaleKapazitaet, InventarWechselIntervall, BesuchsIntervall)
VALUES ('Werkstatt', 500, 30, 23);

-- 2. Weitere Tabellen füllen, die auf die primären Schlüssel der vorherigen Tabellen verweisen

-- Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
VALUES ('C001', 'K003', 'Doktor', 9, 2);
INSERT INTO Chemiker (ChemikerNummer, MitarbeiterNummer, Bildungsgrad, Unfallrate, notwendigeAssistenten)
VALUES ('C002', 'K005', 'Diplom', 45, 4);

-- Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
VALUES ('S001', 'K004', 'Route 66', 75, 'verschwiegen');
INSERT INTO Schmuggler (SchmugglerNummer, MitarbeiterNummer, Route, Risikobereitschaft, Verschwiegenheit)
VALUES ('S002', 'K006', 'Route 42', 50, 'bestechlich');

-- Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
VALUES ('V001', 'K002', 9, 210, 0);
INSERT INTO Vertriebler (VertrieblerNummer, MitarbeiterNummer, Charismalevel, Quote, verpassteQuoten)
VALUES ('V002', 'K007', 6, 120, 7);

-- Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Viktor', '01123456789', TO_DATE('2021-06-01', 'YYYY-MM-DD'), 'Lachgas, LSD');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Brenner', '11234567890', TO_DATE('2022-06-25', 'YYYY-MM-DD'), 'Meth, Heroin, Speed');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Meise', '56234567430', TO_DATE('2023-07-11', 'YYYY-MM-DD'), 'Kokain');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Typ ohne Hose', '10534567777', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 'Speed, Lachgas');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Der Professor', '86234567567', TO_DATE('2023-09-11', 'YYYY-MM-DD'), 'LSD');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Labersack', '33034567840', TO_DATE('2021-03-22', 'YYYY-MM-DD'), 'Kokain, Speed');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('das Gesicht', '59034567897', TO_DATE('2024-12-09', 'YYYY-MM-DD'), 'Meth, Kokain, Speed');
INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('Suchtibert', '44134567223', TO_DATE('2020-5-01', 'YYYY-MM-DD'), 'Lachgas, Speed, Heroin, LSD, Kokain, Meth');

-- Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
INSERT INTO Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
VALUES ('LG001', TO_DATE('2021-01-01', 'YYYY-MM-DD'), 'unbekannt', 'Leipzig', 1000, TO_DATE('2021-01-15', 'YYYY-MM-DD'), 'Container');
INSERT INTO Lager_Inventar (LagerNummer, Startdatum, Geheimhaltungsstatus, Ort, Groeße, Einlagerungsdatum, LagerTyp)
VALUES ('LG002', TO_DATE('2022-02-20', 'YYYY-MM-DD'), 'vermutet', 'Breitenfeld', 400, TO_DATE('2022-02-25', 'YYYY-MM-DD'), 'Werkstatt');

-- 3. Tabellen füllen, die auf bereits erstellte Schlüssel referenzieren

-- Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial, C-Nr., Bezeichnung)
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial, Chemiker, Bezeichner)
VALUES ('P001', 100.00, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 1, 90, 'C001', 'Meth');
INSERT INTO Produkt (ProduktNummer, Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial, Chemiker, Bezeichner)
VALUES ('P002', 150.00, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 6, 20, 'C002', 'Lachgas');

-- Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
VALUES ('LB001', 'Grünau', 'Ausrüstung A', 5, 8);
INSERT INTO Labor (LaborNummer, Standort, Ausstattung, Kochplaetze, Sicherheitslevel)
VALUES ('LB002', 'Paunsdorf', 'Ausrüstung B', 3, 4);

-- Wird_Hergestellt (Bezeichnung, LaborNummer)
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Meth', 'LB001');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Heroin', 'LB001');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Speed', 'LB001');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Kokain', 'LB002');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('Lachgas', 'LB002');
INSERT INTO Wird_Hergestellt (Bezeichnung, LaborNummer)
VALUES ('LSD', 'LB002');

-- Kann_Herstellen (Bezeichnung, ChemikerNummer)
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Meth', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Heroin', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Speed', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Kokain', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('LSD', 'C001');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Kokain', 'C002');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('LSD', 'C002');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Lachgas', 'C002');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Meth', 'C002');
INSERT INTO Kann_Herstellen (Bezeichnung, ChemikerNummer)
VALUES ('Speed', 'C002');

-- Besitzt (ProduktNummer, LagerNummer)
INSERT INTO Besitzt (ProduktNummer, LagerNummer)
VALUES ('P001', 'LG001');
INSERT INTO Besitzt (ProduktNummer, LagerNummer)
VALUES ('P002', 'LG002');

-- Transportiert (SchmugglerNummer, LagerNummer)
INSERT INTO Transportiert (SchmugglerNummer, LagerNummer)
VALUES ('S001', 'LG001');
INSERT INTO Transportiert (SchmugglerNummer, LagerNummer)
VALUES ('S002', 'LG002');

-- Verkauft (VertrieblerNummer, LagerNummer)
INSERT INTO Verkauft (VertrieblerNummer, LagerNummer)
VALUES ('V001', 'LG001');
INSERT INTO Verkauft (VertrieblerNummer, LagerNummer)
VALUES ('V002', 'LG002');

-- Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Suchtibert', '44134567223', 'P001');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Meise', '56234567430', 'P002');
/*INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Suchtibert', '44134567223', 'P003');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Viktor', '01123456789', 'P004');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Brenner', '11234567890', 'P005');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Labersack', '33034567840', 'P006');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Der Professor', '86234567567', 'P007');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Suchtibert', '44134567223', 'P008');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Suchtibert', '44134567223', 'P009');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Typ ohne Hose', '10534567777', 'P010');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Das Gesicht', '59034567897', 'P011');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Der Professor', '86234567567', 'P012');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Meise', '56234567430', 'P013');
INSERT INTO Wird_Verkauft (Alias, Telefonnummer, ProduktNummer)
VALUES ('Viktor', '01123456789', 'P014');
*/

-- Kennt (VertrieblerNummer, LagerTyp)
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V001', 'Container');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V001', 'Werkstatt');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V001', 'Kofferraum');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V001', 'Lagerhalle');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V002', 'Toter Briefkasten');
INSERT INTO Kennt (VertrieblerNummer, LagerTyp)
VALUES ('V002', 'Dünndarm');

-- Änderungen eintragen
COMMIT;