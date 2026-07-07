-- Compter le nombre de visites par médecin
SELECT m.nom, m.prenom, COUNT(v.id_visite) AS total_visites
FROM MEDECIN m
LEFT JOIN VISITE v ON m.id_medecin = v.id_medecin
GROUP BY m.id_medecin;

-- Lister toutes les ordonnances avec le nom du patient
SELECT p.nom, p.prenom, o.date_ordonnance, o.instructions
FROM ORDONNANCE o
JOIN VISITE v ON o.id_visite = v.id_visite
JOIN PATIENT p ON v.id_patient = p.id_patient;