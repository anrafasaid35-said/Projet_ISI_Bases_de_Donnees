# Projet de Gestion de Cabinet Médical

## 1. Objectif du projet
Ce projet vise à informatiser la gestion d'un cabinet médical. L'objectif est de remplacer le suivi papier par une base de données relationnelle permettant un accès rapide et sécurisé aux informations des patients et à l'historique des consultations.

## 2. Structure de la base de données
Le système repose sur quatre tables principales liées entre elles :

*   **MEDECIN** : Contient les informations sur les praticiens (nom, prénom, spécialité).
*   **PATIENT** : Centralise les données administratives et médicales des patients.
*   **VISITE** : Table pivot reliant un patient à un médecin pour une consultation donnée.
*   **ORDONNANCE** : Document médical lié à une visite spécifique, détaillant les prescriptions.

## 3. Règles de gestion
*   Chaque visite est obligatoirement rattachée à un médecin et à un patient via leurs identifiants uniques.
*   L'intégrité référentielle est assurée par des clés étrangères (Foreign Keys) entre la table `VISITE` et les tables `MEDECIN` et `PATIENT`.
*   Toute ordonnance est strictement liée à une visite unique.

## 4. Confidentialité et Éthique
Conformément aux principes de déontologie médicale, l'accès aux données est réservé au personnel autorisé. La structure de la base est conçue pour garantir la traçabilité des soins tout en assurant la confidentialité des informations de santé.