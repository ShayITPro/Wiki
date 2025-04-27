# 🔥 Fiche Mémo – Types de Filtrage sur un Firewall

---

## 🎯 Objectif : Comprendre les méthodes de filtrage disponibles sur un firewall

---

## 1. 📦 Filtrage par IP (source / destination)

- Autoriser ou bloquer des adresses IP précises
- ✅ Simple à configurer
- ❌ Peu fiable pour les services publics (ex : Facebook, TikTok)

---

## 2. 🌐 Filtrage par port (TCP/UDP)

- Autoriser ou bloquer un ou plusieurs ports réseau
- Ex : autoriser HTTP (80), bloquer FTP (21)
- ✅ Très courant
- ❌ Ne suffit pas pour bloquer une application entière

---

## 3. 🔤 Filtrage par nom de domaine (FQDN / DNS filtering)

- Bloquer un domaine entier (ex : facebook.com, tiktok.com)
- 🔁 Dynamique : suit les changements d’IP
- ✅ Efficace pour le contrôle web
- ❌ Doit être supporté par le firewall

---

## 4. 📱 Filtrage applicatif (UTM / NGFW)

- Identification du trafic **par type d'application**
- Ex : bloquer YouTube, Facebook, TikTok même via HTTPS
- ✅ Très précis et puissant
- ❌ Nécessite un firewall Next-Gen (ex : Sophos XG, Fortinet)

---

## 5. 📄 Filtrage par contenu / URL

- Analyse le contenu ou les mots-clés dans les requêtes HTTP/HTTPS
- ✅ Fait partie des fonctionnalités UTM avancées
- ❌ Plus gourmand en ressources, nécessite déchiffrement SSL

---

## 🧠 À retenir :

> - Pour du contrôle simple → ports et IP  
> - Pour du contrôle web → DNS ou FQDN  
> - Pour un vrai contrôle applicatif → firewall UTM / NGFW
