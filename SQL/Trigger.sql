-- Trigger 1:

CREATE OR REPLACE TRIGGER trg_validate_chemiker_drogenart
BEFORE INSERT ON Kann_Herstellen
FOR EACH ROW
DECLARE
    v_count INTEGER;
BEGIN
    -- Überprüfe, ob die Bezeichnung in Drogenart existiert
    SELECT COUNT(*)
    INTO v_count
    FROM Drogenart
    WHERE Bezeichnung = :NEW.Bezeichnung;

    -- Wenn nicht vorhanden, Fehler auslösen
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Die Bezeichnung existiert nicht in der Tabelle Drogenart.');
    END IF;
END;

-- Trigger 2:

CREATE OR REPLACE TRIGGER trg_validate_chemiker_drogenart
BEFORE INSERT ON Kann_Herstellen
FOR EACH ROW
DECLARE
    v_count INTEGER;
BEGIN
    -- Überprüfe, ob die Bezeichnung in Drogenart existiert
    SELECT COUNT(*)
    INTO v_count
    FROM Drogenart
    WHERE Bezeichnung = :NEW.Bezeichnung;

    -- Wenn nicht vorhanden, Fehler auslösen
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Die Bezeichnung existiert nicht in der Tabelle Drogenart.');
    END IF;
END;
