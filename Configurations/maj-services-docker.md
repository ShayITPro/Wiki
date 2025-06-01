---
title: Mise à jour des services Docker
description: 
published: true
date: 2025-06-01T17:12:22.402Z
tags: 
editor: markdown
dateCreated: 2025-06-01T17:12:22.402Z
---

## Étapes

1. Identifier la nouvelle version du service (sur Docker Hub ou GitHub)
2. Ouvrir le fichier `docker-compose.yml`
3. Modifier la ligne `image:` pour remplacer l'ancienne version par la nouvelle :
  
  ```yaml
  image: mon-service:NEW_VERSION
  ```
  
4. Mettre à jour l'image et redémarrer le service :
  
  ```bash
  docker compose pull mon-service
  docker compose up -d mon-service
  ```
  
5. (Optionnel) Nettoyer les images inutilisées :
  
  ```bash
  docker image prune -a
  ```

---

## Résumé rapide

```bash
docker compose pull mon-service
docker compose up -d mon-service
docker image prune -a  # Optionnel
```