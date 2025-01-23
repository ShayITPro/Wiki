---
title: Fichier /etc/passwd
description: Gestion des Comptes Utilisateurs
published: true
date: 2025-01-22T13:19:21.983Z
tags: 
editor: markdown
dateCreated: 2024-12-07T11:27:39.756Z
---

# Fichier /etc/passwd : Gestion des Comptes Utilisateurs

## Rôle du Fichier

Le fichier `/etc/passwd` contient les informations essentielles sur les comptes utilisateurs du système Linux.

## Structure Détaillée

### Format d'une Entrée

```
nom_utilisateur:mot_de_passe:UID:GID:commentaire:répertoire_personnel:shell_par_défaut
```

### Composants de l'Entrée

1. **Nom d'Utilisateur**
   - Identifiant unique de connexion
   - Utilisé pour l'authentification et l'identification

2. **Mot de Passe**
   - Historiquement : mot de passe crypté
   - Actuellement : généralement un "x"
   - Mots de passe réels stockés dans `/etc/shadow` pour des raisons de sécurité

3. **UID (User ID)**
   - Identifiant numérique unique de l'utilisateur
   - Catégories principales :
     * root : UID = 0
     * Utilisateurs système : UID = 1-999
     * Utilisateurs physiques : UID ≥ 1000

4. **GID (Group ID)**
   - Identifiant du groupe principal de l'utilisateur
   - Définit l'appartenance au groupe par défaut

5. **Commentaire**
   - Champ informatif facultatif
   - Souvent utilisé pour le nom complet de l'utilisateur
   - Peut contenir des informations supplémentaires

6. **Répertoire Personnel**
   - Chemin du dossier personnel
   - Généralement `/home/nom_utilisateur`
   - Espace de travail personnel de l'utilisateur

7. **Shell par Défaut**
   - Interface de ligne de commande utilisateur
   - Exemples courants :
     * `/bin/bash`
     * `/bin/sh`
     * `/bin/zsh`

