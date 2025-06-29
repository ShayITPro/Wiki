---
title: Uptime Kuma
description: 
published: true
date: 2025-06-29T07:55:08.273Z
tags: 
editor: markdown
dateCreated: 2025-06-29T07:55:08.273Z
---

# 📈 Supervision Uptime Kuma + Alerte Discord

## 🎯 Objectif

Mettre en place une surveillance automatique de services auto-hébergés (ex. WikiJS) avec **Uptime Kuma**, et recevoir des alertes en temps réel via **Discord**.

---

## ✅ Déploiement Uptime Kuma (Docker Compose)

```yaml
version: "3.7"

services:
  uptime-kuma:
    image: louislam/uptime-kuma:latest
    container_name: uptime-kuma
    restart: unless-stopped
    volumes:
      - ./uptime-kuma-data:/app/data
    networks:
      - traefik_net
    ports:
      - "3001:3001" # Accès direct par IP:PORT
    labels:
      - "traefik.enable=true"
      - "traefik.http.routers.uptimekuma.rule=Host(`uptimekuma.exemple.local`)"
      - "traefik.http.routers.uptimekuma.entrypoints=websecure"
      - "traefik.http.routers.uptimekuma.tls.certresolver=letsencrypt"

networks:
  traefik_net:
    external: true
```

- **Accès direct** : `http://IP_SERVEUR:3001`
- **Accès Traefik** : `https://uptimekuma.exemple.local`

---

## ✅ Créer un Webhook Discord

1. Aller sur Discord ➜ Paramètres du salon ➜ **Intégrations ➜ Webhooks**.
2. Créer un **nouveau webhook** ➜ Copier l’URL.
3. Exemple :
  
  ```
  https://discord.com/api/webhooks/xxxxxxxx/yyyyyyyyyy
  ```
  

---

## ✅ Configurer la notification Discord dans Kuma

- Aller dans **Paramètres ➜ Notifications ➜ Ajouter ➜ Discord**.
- Coller l’URL du webhook.
- Cliquer **Tester** ➜ Vérifier que le message de test arrive sur Discord.
- Sauvegarder.

---

## ✅ Créer un monitor

- **Type** : HTTP(S)
- **Nom** : `WikiJS`
- **URL** : `https://wiki.fenris-shay.net/`
- **Intervalle** : 30 s
- **Essais** : 1 *(important pour éviter les faux positifs)*
- Associer la notification Discord.
- Sauvegarder.

---

## ✅ Vérifier le workflow

1️⃣ Couper le service WikiJS ➜ Kuma déclenche **DOWN**.

2️⃣ Vérifier que Discord reçoit :

```
❌ Your service WikiJS went down.
```

3️⃣ Redémarrer le service ➜ Kuma détecte **UP** ➜ Discord reçoit :

```
✅ Your service WikiJS is up!
```

---

## ✅ Points clés

- `Essais = 1` ➜ Le monitor bascule `DOWN` après un seul échec.
- `uptime-kuma-data` ➜ À sauvegarder dans les backups.
- Les alertes **DOWN** et **UP** partent automatiquement.
- Possibilité d’ajouter plusieurs notifications (mail, Telegram…).

---

## ✅ Vérifier en ligne de commande

```bash
docker logs -f uptime-kuma
```

Suivre :

- `Failing` ➜ Kuma constate une erreur.
- `Send Notification` ➜ Discord reçoit l’alerte.

---

## ✅ Exemple de résultat Discord

```
❌ Your service WikiJS went down.
✅ Your service WikiJS is up!
```

