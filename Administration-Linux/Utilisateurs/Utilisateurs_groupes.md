---
title: Utilisateurs et groupes
description: 
published: true
date: 2025-01-22T11:20:58.036Z
tags: 
editor: markdown
dateCreated: 2025-01-22T11:03:53.268Z
---

# Utilisateurs 

| Commande     | Description                                                 |
| ------------ | ----------------------------------------------------------- |
| `useradd`    | Créer un utilisateur                                        |
| `usermod`    | Modifier un utilisateur                                     |
| `userdel`    | Supprimer un utilisateur                                    |
| `userdel -r` | Supprimer un utilisateur et son répertoire                  |
| `passwd`     | Changer le mot de passe                                     |
| `id -u`      | Affiche l'IUD de l'utilisateur                              |
| `id -g`      | Affiche le GUD de l'utilisateur                             |
| `id -gn`     | Afficher le nom du groupe principal                         |
| `id -G`      | Afficher les groupes dont l'utilisateur est membre          |
| `id -Gn`     | Afficher les noms des groupes dont l'utilisateur est membre |
| `groups`     | Afficher les groupes auxquels l'utilisateur appartient      |

# Groupes


| Commande                    | Description                          |
| --------------------------- | ------------------------------------ |
| `groupadd`                  | Créer un groupe                      |
| `groupmod`                  | Modifier un groupe                   |
| `groupdel`                  | Supprimer un groupe                  |
| `gpasswd -d <user> <group>` | Supprimer un utilisateur d'un groupe |
