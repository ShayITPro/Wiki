---
title: Politique de mot de passe
description: 
published: true
date: 2025-01-22T12:02:09.799Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:11:39.462Z
---

# Modifier la Politique de Mot de Passe

1.  Éditer le fichier `/etc/login.defs`

2. Installer le paquet universel `libpam-pwquality`

```
sudo apt-get install libpam-pwquality
```

3. Définir une Expiration pour les Mots de Passe

- Rechercher la ligne qui commence par `PASS_MAX_DAYS`
- Modifier la valeur (par exemple, `PASS_MAX_DAYS 30`) pour définir une expiration de 30 jours pour les mots de passe.

4. Forcer l’Expiration d’un Mot de Passe

- Utiliser la commande `passwd` avec l’option `--expire` ou `-e` pour forcer l’expiration d’un mot de passe :
```bash
sudo passwd --expire <nom d'utilisateur>
```

5. Définir un Délai Minimum avant de Pouvoir Changer un Mot de Passe

- Rechercher la ligne qui commence par `PASS_MIN_DAYS` 
- Modifier la valeur (par exemple, `PASS_MIN_DAYS 2`) pour définir un délai minimum de 2 jours avant de pouvoir changer un mot de passe.

6. Mettre en Place un Avertissement 7 Jours avant l’Expiration d’un Mot de Passe

- Rechercher la ligne qui commence par `PASS_WARN_AGE`
- Modifier la valeur (par exemple, `PASS_WARN_AGE 7`) pour définir un avertissement 7 jours avant l’expiration du mot de passe.

7. Définir la Taille du Mot de Passe

- Éditer le fichier `/etc/security/pwquality.conf`
- Fixer la longueur minimale du mot de passe à 10 caractères :

```bash
minlen=10
```

8. Définir la Complexité du Mot de Passe

- Définir au moins 1 majuscule dans le mot de passe
```bash
ucredit=-1
```

- Définir au moins 1 minuscule dans le mot de passe :
```bash
dcredit=-1
```

- Définir au moins un caractère spécial :
```bash
ocredit=-1
```

- Limiter le nombre de caractères identiques consécutifs à 3 :
```bash
maxrepeat=3
```

- Empêcher qu’un mot de passe contienne le nom de l’utilisateur :
```bash
usercheck=1
```