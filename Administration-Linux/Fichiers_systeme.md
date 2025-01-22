---
title: Fichiers système
description: 
published: true
date: 2025-01-22T10:52:28.499Z
tags: 
editor: markdown
dateCreated: 2024-12-07T11:22:58.533Z
---

# Fichiers système
# Fichiers Système Linux 

## Utilisateurs et Authentification

### Gestion des Utilisateurs
- **[`/etc/passwd`](etc_passwd.md)** : Informations détaillées des utilisateurs
- **[`/etc/shadow`](etc_shadow.md)** : Stockage sécurisé des mots de passe chiffrés
- **[`/etc/group`](etc_group.md)** : Liste et configuration des groupes
- **[`/etc/sudoers`](etc_sudoers.md)** : Gestion des permissions sudo

## Démarrage et Initialisation

### Processus de Démarrage
- **`/etc/inittab`** : Configuration d'initialisation (obsolète)
- **`/etc/rc.d/`** ou **`/etc/init.d/`** : Scripts de démarrage
- **`/etc/systemd/`** : Configuration systemd

## Configuration Réseau

### Paramètres Réseau
- **`/etc/hosts`** : Mappage IP/noms d'hôtes
- **`/etc/resolv.conf`** : Serveurs DNS
- **`/etc/network/interfaces`** : Configuration réseau
- **`/etc/hostname`** : Nom du système

## Configuration Système

### Paramètres Systèmes
- **`/etc/fstab`** : Points de montage
- **`/etc/sysctl.conf`** : Paramètres du noyau
- **`/etc/crontab`** : Tâches planifiées

## Gestion des Paquets

### Systèmes de Gestion de Paquets
- **`/etc/apt/`** : Configuration APT
- **`/etc/yum.conf`** : Configuration YUM
- **`/etc/dnf/`** : Configuration DNF

## Journalisation

### Fichiers de Logs
- **`/var/log/`** : Répertoire principal des logs
- **`/var/log/messages`** : Logs système
- **`/var/log/auth.log`** : Logs d'authentification
- **`/var/log/boot.log`** : Logs de démarrage

## Configuration Shell

### Scripts d'Initialisation Utilisateur
- **`~/.bashrc`**
- **`~/.bash_profile`**
- **`~/.profile`**

## Sécurité

### Configurations de Sécurité
- **`/etc/ssh/sshd_config`** : Configuration SSH
- **`/etc/selinux/`** : Configuration SELinux

## Gestion des Services

### Configuration des Services
- **`/etc/xinetd.d/`** : Services xinetd
- **`/etc/systemd/system/`** : Services systemd

## Autres Fichiers Importants

### Configuration Globale
- **`/etc/environment`** : Variables globales
- **`/etc/motd`** : Message du jour
- **`/etc/issue`** : Message avant connexion


[Dossier_systeme](/Dossier_systeme)

