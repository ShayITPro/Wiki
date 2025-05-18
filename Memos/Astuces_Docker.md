---
title: 🐳 Astuces Docker
description: 
published: true
date: 2025-05-18T09:20:15.697Z
tags: 
editor: markdown
dateCreated: 2025-05-18T09:20:15.697Z
---


Quelques commandes utiles et rappels pour l'utilisation de Docker au quotidien.

## 📦 Conteneurs

```bash
docker ps --format "{{.Names}}"              # Liste les noms des conteneurs
docker stop nom_conteneur                    # Stopper un conteneur
docker restart nom_conteneur                 # Redémarrer un conteneur
docker logs -f nom_conteneur                 # Suivre les logs en direct
```

## 🧼 Nettoyage

```bash
docker system prune -af                      # Supprimer tout ce qui est inutilisé
docker volume prune                          # Supprimer les volumes orphelins
docker image prune                           # Supprimer les images inutilisées
```

## 🔍 Volumes & Réseaux

```bash
docker volume ls
docker network ls
```

> 🕓 Dernière mise à jour : 2025-05-18