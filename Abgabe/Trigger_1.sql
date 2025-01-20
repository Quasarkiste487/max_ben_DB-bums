-- Trigger 1:
-- Trigger Produkt-ID
CREATE OR REPLACE TRIGGER trg_product_id_gen
BEFORE INSERT ON Produkt
FOR EACH ROW
BEGIN
    -- Produkt-id wird sie automatisch hinzugefügt
    IF :NEW.ProduktNummer IS NULL THEN
        gen_product_id(:NEW.ProduktNummer);
    END IF;
END;