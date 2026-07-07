-- Insertion de données de test
INSERT INTO MEDECIN (nom, prenom, specialite) VALUES ('Diop', 'Moussa', 'Cardiologie');
INSERT INTO PATIENT (nom, prenom, date_naissance, adresse) VALUES ('Sow', 'Fatou', '1995-05-12', 'Dakar, Point E');
INSERT INTO VISITE (date_visite, motif, id_medecin, id_patient) VALUES ('2026-07-07 10:00:00', 'Consultation de contrôle', 1, 1);
INSERT INTO ORDONNANCE (date_ordonnance, instructions, id_visite) VALUES ('2026-07-07', 'Prendre un comprimé par jour', 1);