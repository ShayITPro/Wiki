
# 📋 FICHE MÉMO — Monitoring Certificat SSL sur Discord

## 1. Organisation des fichiers Certbot
- `/etc/letsencrypt/live/` → liens symboliques vers `/archive/`
- `/etc/letsencrypt/archive/` → fichiers réels (`cert6.pem`, `fullchain6.pem`, etc.)

---

## 2. Permissions importantes
| Dossier/Fichier | Permissions | Objectif |
|:----------------|:-------------|:---------|
| `/etc/letsencrypt/` | `755` (r-x pour tous) | Traverser le dossier |
| `/etc/letsencrypt/live/` | `755` (r-x pour tous) | Traverser pour atteindre les liens |
| `/etc/letsencrypt/archive/` | `755` (r-x pour tous) | Traverser pour atteindre les certificats |
| `/etc/letsencrypt/archive/fenris-shay.net/` | `755` (r-x pour tous) | Traverser pour accéder aux certificats |
| `fullchain6.pem` | `640`, groupe `ssl-cert` | Lecture uniquement pour ssl-cert |
| `privkey6.pem` | `600` | Lecture seulement pour root (sécurité maximale) |

---

## 3. Utilisateur
- **Utilisateur `shay`** doit être membre du groupe `ssl-cert`.
- Vérification avec :
  ```bash
  groups
  ```
- S’il manque :
  ```bash
  sudo usermod -aG ssl-cert shay
  (puis déconnexion / reconnexion)
  ```

---

## 4. Test du certificat (lecture sans sudo)
```bash
cat /etc/letsencrypt/live/fenris-shay.net/fullchain.pem | head -n 5
```
✅ Si tu vois `-----BEGIN CERTIFICATE-----`, tout est ok.

---

## 5. Test du script Discord
```bash
/usr/local/bin/ssl-check-discord.sh --force
```
✅ Devrait envoyer un message dans ton salon Discord avec l'état du certificat.

---

## 6. Cronjob (automatisation quotidienne)
- Renouvellement automatique du certificat :
  ```bash
  0 0 * * * /usr/bin/certbot renew --quiet --config /etc/letsencrypt/renewal/fenris-shay.net.conf
  ```
- Vérification quotidienne + alertes Discord :
  ```bash
  0 9 * * * /usr/local/bin/ssl-check-discord.sh
  ```

---

# 🚀 En bonus
- Si besoin, logs de cron dans un fichier :
  ```bash
  0 9 * * * /usr/local/bin/ssl-check-discord.sh >> /var/log/ssl-monitor.log 2>&1
  ```

- Ou recevoir des mails en cas d'erreur en configurant `MAILTO="ton@email.com"` en haut du crontab.

---

# 🏆 Ton setup final :
- Certificat toujours à jour ✅
- Monitoring SSL automatique ✅
- Alertes Discord propres ✅
- Sécurité parfaite (pas d'exposition de clé privée) 🔒

---

**Félicitations pour ton super boulot !** 🎉

(Si besoin d'évoluer plus tard vers du multi-domaines, uptime monitoring, etc., c'est possible ⚡️)
