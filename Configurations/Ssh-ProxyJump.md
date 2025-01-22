---
title: SSH ProxyJump
description: 
published: true
date: 2025-01-22T12:02:31.503Z
tags: 
editor: markdown
dateCreated: 2025-01-20T15:18:42.204Z
---

Le ProxyJump permet de se connecter à une machine distante en passant par un ou plusieurs serveurs intermédiaires (jump hosts) avec une seule commande SSH.

# Commande directe
```bash
ssh -J user_jump@IP_Proxmox user_target@192.168.1.11`
```

`-J` : Définit le jump host.
`user_jump` : Nom d'utilisateur pour le jump host.
`IP_Proxmox` : Adresse IP ou nom d'hôte du jump host.
`user_target` : Nom d'utilisateur sur la machine cible.
`IP_Machine-locale` : Adresse IP ou nom d'hôte de la machine cible



# Configurer ProxyJump dans le fichier SSH

- Aller dans le fichier `~/.ssh/config` sur sa machine locale.

- Ajouter ce bloc pour définir le serveur intermédiaire et la cible :
```bash
Host vm-target
    HostName IP_Machine-locale
    User user_target
    ProxyJump user_jump@IP_Proxmox
```
`Host vm-target` : Alias pour la machine cible.
 `HostName` : Adresse IP ou nom d’hôte de la machine cible.
 `User` : Utilisateur sur la machine cible.
 `ProxyJump` : Serveur intermédiaire (jump host).
 
 - Une fois configuré, se connecter  avec l'alias :
 ```bash
 ssh vm-target
```
