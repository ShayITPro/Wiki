---
title: Périphériques amovibles
description: 
published: true
date: 2024-12-10T20:53:50.801Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:44:14.341Z
---

# Types de fichiers de périphériques

### Périphériques bloc (Block Devices)

- fichier `b` : Périphérique bloc qui lit ou écrit des données sous forme de blocs de tailles fixes.

### Périphériques caractère (Character Devices)

- fichier `c` : Périphérique caractère qui lit ou écrit des flux d'octets en série.

## Noms des périphériques

- `sd` : Noms des disques durs (SCSI, SATA, IDE, USB, Firewire).
- `sr` **ou** `scd` : Lecteurs CD/DVD SCSI.

## Répertoires et fichiers spéciaux

- `/dev/input` : Périphériques d'entrée (clavier, souris).    
- `/dev/null` : Pour envoyer des données censées disparaître.    
- `/dev/zero` : Source de zéros pour remplir certains fichiers.    
- `/dev/random` **et** `/dev/urandom` : Génération de nombres aléatoires.

## Afficher les systèmes de fichiers montés
```bash
mount
```

# Montage et Démontage des Périphériques

## Monter manuellement un CD ou DVD

### Identifier le périphérique

+ `/dev/cdrom` : Fichier de périphérique pour le lecteur CD.

### Afficher les périphériques bloc

```bash
lsblk
```
- Affiche des renseignements sur tout ou partie des périphériques bloc.

### Monter le CD ou DVD

```bash
sudo mount -v -t <système de fichier> /dev/cdrom /mnt
```
- `-v` : Mode “verbeux”, afficher des messages détaillés.    
- `-t` : Préciser le système de fichier.    
- `/dev/cdrom` : Fichier de périphérique représentant le lecteur CD.    
- `/mnt` : Point de montage.    
- `-r` : Monter en mode lecture seule.

### Démonter le CD ou DVD

```bash
sudo umount -v /mnt
```

## Monter et démonter manuellement une clé USB

### Monter une clé USB

```BASH
sudo mount -v -t vfat /dev/sdb1 /mnt
```
- `-v` : Mode “verbeux”.    
- `-t` : Préciser le système de fichier (ex. `vfat`).    
- `/dev/sdb1` : Fichier de périphérique représentant la clé USB.    
- `/mnt` : Point de montage.

### Démonter une clé USB

```BASH
sudo umount -v /mnt
```

## Ejecter un CD/DVD

```bash
sudo eject
```

## Monter plusieurs périphériques en même temps

1. Créer nouveaux points de montages :

```bash
sudo mkdir -v /mnt/{cdrom,disk}
```

2. Monter le lecteur DVD

```bash
sudo mont /dev/cdrom /mnt/cdrom
```

3. Monter la clé USB

```bash
sudo mont /dev/sdb1/mnt/disk
```