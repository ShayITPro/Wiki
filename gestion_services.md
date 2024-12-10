---
title: Gestion des services
description: 
published: true
date: 2024-12-07T14:42:47.706Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:42:40.129Z
---

# Commandes de Gestion de Services

| Action | Commande | Description |
|--------|----------|-------------|
| **Contrôle de Service** | `systemctl stop <service>` | Arrêter un service |
| | `systemctl start <service>` | Démarrer un service |
| | `systemctl restart <service>` | Redémarrer un service |
| | `systemctl reload <service>` | Recharger la configuration d'un service |
| **Information de Service** | `systemctl list-units --type service` | Afficher les services installés et actifs |
| | `systemctl status <service>` | Afficher l'état d'un service |
| **Configuration de Service** | `systemctl enable <service>` | Activer un service au démarrage |
| | `systemctl disable <service>` | Désactiver un service au démarrage |
| **Système Global** | `systemctl status` | Afficher l'état global du système |
| **Arrêt et Redémarrage** | `halt -p` | Éteindre la machine |
| | `reboot` | Redémarrer la machine |

# Notes Importantes

- Les commandes `systemctl` requièrent généralement des privilèges administrateur (sudo)
- Utilisez `sudo` devant chaque commande si vous n'êtes pas connecté en tant que root
- Le nom du service doit correspondre exactement à son fichier de configuration systemd