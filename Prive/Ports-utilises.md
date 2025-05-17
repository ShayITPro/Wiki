---
title: 🔐 Ports utilisés – Version complète 
description: 
published: true
date: 2025-05-17T14:05:10.608Z
tags: 
editor: markdown
dateCreated: 2025-05-17T14:05:10.608Z
---


Cette page contient tous les ports utilisés localement, y compris les services internes et non exposés.

| Service | Port conteneur | Port exposé (si applicable) | Domaine associé / usage |
| --- | --- | --- | --- |
| Traefik | 8080 | 8080 | Dashboard local |
| Wiki.js | 3000 | via proxy | wiki.fenris-shay.net |
| PostgreSQL Wiki | 5432 | -   | Accès DB interne |
| Leantime | 9000 | via proxy | leantime.fenris-shay.net |
| MySQL Leantime | 3306 | -   | Accès DB interne |
| Homer | 8081 | -   | Dashboard interne |
| SSH | 22  | 22  | Connexion au serveur |

> 🕓 Dernière mise à jour : 2025-05-17