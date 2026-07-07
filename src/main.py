import sqlite3

def connecter_base():
    """Connexion à la base de données du cabinet."""
    try:
        conn = sqlite3.connect('cabinet.db')
        print("Connexion au système médical réussie.")
        return conn
    except Exception as e:
        print(f"Erreur de connexion : {e}")
        return None

if __name__ == "__main__":
    print("--- Gestion du Dossier Médical Informatisé ---")
    conn = connecter_base()
    if conn:
        print("Système prêt à l'emploi.")
        conn.close()