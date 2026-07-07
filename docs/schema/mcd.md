erDiagram
    PATIENT ||--o{ VISITE : effectue
    MEDECIN ||--o{ VISITE : realise
    VISITE ||--|| ORDONNANCE : genere
    
    PATIENT {
        int id_patient
        string nom
        string prenom
    }
    MEDECIN {
        int id_medecin
        string nom
        string specialite
    }
    VISITE {
        int id_visite
        date date_visite
        string motif
    }
    ORDONNANCE {
        int id_ordonnance
        string medicaments
    }