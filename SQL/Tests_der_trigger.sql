INSERT INTO Kartell_Kunde (Alias, Telefonnummer, Erstkaufdatum, Einkaufsverlauf)
VALUES ('viktor', '01123456789', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'Drogen XYZ');

INSERT INTO Produkt (Preis, Herstellungsdatum, Streckungsgrad, Gefahrenpotenzial, Chemiker, Bezeichner)
VALUES (200.00, TO_DATE('2024-07-01', 'YYYY-MM-DD'), 3, 60, 'C002', 'Ecstasy');
COMMIT;