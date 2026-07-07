-- Trigger pour empêcher une date de visite future
DELIMITER //
CREATE TRIGGER check_date_visite
BEFORE INSERT ON VISITE
FOR EACH ROW
BEGIN
    IF NEW.date_visite > NOW() THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La date de visite ne peut pas être dans le futur.';
    END IF;
END;
//
DELIMITER ;