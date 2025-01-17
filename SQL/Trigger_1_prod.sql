-- Prozedur für Produkt-ID
CREATE OR REPLACE PROCEDURE gen_product_id
(new_num OUT VARCHAR2)
AS
    max_num NUMBER;
BEGIN
    -- höchste Produkt-id ermitteln und erhöhen
    SELECT NVL(MAX(TO_NUMBER(SUBSTR(ProduktNummer, 2))), 0) + 1
    INTO max_num
    FROM Produkt;

    -- error wenn maximale Grenze erreicht wurde
    IF max_num > 999 THEN
        RAISE_APPLICATION_ERROR(-20202, 'Maximale Anzahl an Produkten erreicht. Bitte das Lager aufräumen!');
    END IF;

    -- neue Produkt-id im Format 'PXXX' generieren
    new_num := 'P' || LPAD(max_num, 3, '0');
END;
