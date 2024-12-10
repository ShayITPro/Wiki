---
title: Fichier /etc/group
description: Gestion des Groupes Utilisateurs
published: true
date: 2024-12-07T13:38:22.027Z
tags: 
editor: markdown
dateCreated: 2024-12-07T11:38:19.462Z
---

# Fichier /etc/group : Gestion des Groupes Utilisateurs

## Structure du Fichier

Le fichier `/etc/group` contient la définition des groupes d'utilisateurs sur le système Linux.

### Format d'une Entrée

``` 
nom_du_groupe:mot_de_passe:GID:liste_des_membres
```

### Composants de l'Entrée

1. **Nom du Groupe**
   - Identifiant textuel unique du groupe
   - Utilisé pour référencer le groupe dans le système

2. **Mot de Passe**
   - Généralement vide ou contient un "x"
   - Historiquement utilisé pour des accès de groupe restreints
   - Actuellement obsolète pour des raisons de sécurité
   - Mots de passe de groupe potentiellement stockés dans `/etc/gshadow`

3. **GID (Group ID)**
   - Identifiant numérique unique du groupe
   - Utilisé par le système pour gérer les permissions et l'appartenance aux groupes

4. **Liste des Membres**
   - Utilisateurs appartenant au groupe
   - Séparés par des virgules
   - Aucun espace entre les noms d'utilisateurs

