-- Tables principales pour le cabinet médical
CREATE TABLE MEDECIN (
    id_medecin INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    specialite VARCHAR(100)
);

CREATE TABLE PATIENT (
    id_patient INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    date_naissance DATE,
    adresse TEXT
);

CREATE TABLE VISITE (
    id_visite INT PRIMARY KEY AUTO_INCREMENT,
    date_visite DATETIME,
    motif TEXT,
    id_medecin INT,
    id_patient INT,
    FOREIGN KEY (id_medecin) REFERENCES MEDECIN(id_medecin),
    FOREIGN KEY (id_patient) REFERENCES PATIENT(id_patient)
);
-- Création de la table ORDONNANCE
CREATE TABLE ORDONNANCE (
    id_ordonnance INT PRIMARY KEY AUTO_INCREMENT,
    date_ordonnance DATE,
    instructions TEXT,
    id_visite INT,
    FOREIGN KEY (id_visite) REFERENCES VISITE(id_visite)
);