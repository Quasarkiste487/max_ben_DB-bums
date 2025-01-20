-- Trigger 2:
-- Kunden-ID
CREATE OR REPLACE TRIGGER trg_customer_no_dbl_alias
BEFORE INSERT ON Kartell_Kunde
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    -- Prüfen, ob der Alias (unabhängig von Groß-/Kleinschreibung) bereits existiert
    SELECT COUNT(*)
    INTO v_count
    FROM Kartell_Kunde
    WHERE UPPER(Alias) = UPPER(:NEW.Alias);

    -- Wenn der Alias existiert, eine benutzerdefinierte Fehlermeldung auslösen
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20201, 'Der Alias ist schon vergeben, du Erbse!');
    END IF;
END;