---
title: Sudoers
description: 
published: true
date: 2024-12-07T15:17:50.313Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:17:43.117Z
---

# Configuration du Fichier Sudoers

- Aller dans `/etc/sudoers`

## Limiter le Nombre de Tentatives à l'Authentification par Sudo

- Limiter le nombre de tentatives à l'authentification par sudo en cas de mot de passe incorrect
```bash
Defaults    passwd_tries=3
```

## Afficher un Message en Cas de Mot de Passe Incorrect

```bash
Defaults    badpass_message="Password is wrong, please try again!"
```

## Enregistrer les Logs de Sudo et les Entrées/Sorties

```bash
Defaults    logfile="/var/log/sudo/sudo.log"
Defaults    log_input, log_output
```

## Activer le Mode TTY

```bash
Defaults    requiretty
```