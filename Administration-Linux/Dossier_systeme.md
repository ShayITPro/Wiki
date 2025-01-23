---
title: Dossier système
description: 
published: true
date: 2025-01-22T13:25:14.888Z
tags: 
editor: markdown
dateCreated: 2024-12-07T11:25:24.706Z
---

# Répertoires Système Linux

## Répertoires Essentiels

### /bin
Contient les applications binaires fondamentales du système.

### /boot
Fichiers critiques pour le démarrage :
- Configuration du démarrage
- Noyaux Linux
- Fichiers essentiels à l'initialisation du système

### /dev
Fichiers de périphériques représentant les matériels et périphériques du système.

### /etc
Centre de configuration système :
- Fichiers de configuration globaux
- Scripts de démarrage
- Paramètres systèmes

### /lib
Bibliothèques système partagées essentielles au fonctionnement des applications.

## Répertoires de Montage

### /mnt
Point de montage manuel pour systèmes de fichiers externes.

### /media
Points de montage automatiques pour :
- Périphériques amovibles 
- Supports multimédia (CD, clés USB)
- Appareils photo numériques

## Répertoires Spéciaux

### /proc
Répertoire dynamique fournissant des informations en temps réel sur le système :
- **/proc/cpuinfo** : Détails du processeur
- **/proc/mdstat** : État des configurations RAID

### /root
Répertoire personnel de l'utilisateur root (administrateur système).

### /sbin
Exécutables et binaires réservés à l'administration système.

## Répertoires Utilisateurs et Données

### /usr
Applications et ressources pour les utilisateurs.

### /tmp
Espace pour fichiers temporaires.

### /var
Répertoire pour données variables et fréquemment modifiées :
- Logs
- Files d'attente
- Fichiers temporaires de programmes