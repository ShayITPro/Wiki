---
title: 🐳 Conventions de nommage Docker
description: 
published: true
date: 2025-05-17T13:39:32.755Z
tags: 
editor: markdown
dateCreated: 2025-05-17T13:39:32.755Z
---

# 📦 Noms des conteneurs

| Service         | Nom du conteneur       |
|-----------------|------------------------|
| Leantime        | `leantime`             |
| Base Leantime   | `mysql_leantime`       |
| Wiki.js         | `wikijs`               |
| Base Wiki.js    | `postgres_wikijs`      |
| Traefik         | `traefik`              |
| Homer           | `homer`                |

---

# 🔗 Réseaux Docker utilisés

| Nom du réseau    | Rôle                      |
|------------------|---------------------------|
| `traefik_net`    | Réseau commun Traefik     |
| `leantime-net`   | Réseau privé Leantime     |

---

# ✅ Règles internes

- Tous les conteneurs critiques ont un `container_name` explicite.
- Les noms sont courts, lisibles et sans tirets multiples.
- Les bases sont préfixées selon leur moteur (`mysql_`, `postgres_`).
- Les réseaux sont externalisés quand partagés (ex : `traefik_net`).

---

> 🕓 Dernière mise à jour : 2025-05-17

