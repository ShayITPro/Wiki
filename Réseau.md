---
title: Configuration réseau
description: (pour Debian)
published: true
date: 2024-12-07T15:26:29.335Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:26:21.880Z
---

Configuration réseau (pour Debian)

Le fichier principal pour configurer le réseau est : `/etc/network/interfaces`

- **Auto** : Définit les interfaces démarrées automatiquement au boot.    
- **Allow-hotplug** : Définit les interfaces démarrées si elles sont branchées.    
- **iface eth1 inet static/dhcp** : Choix entre DHCP ou statique pour l’interface.    
    - **address** : Adresse IP.        
    - **netmask** : Masque de sous-réseau.        
    - **gateway** : Passerelle.        

### Fichiers de configuration complémentaires

- **DNS** : `/etc/resolv.conf`    
- **Hosts** : `/etc/hosts`    
- **NTP** : `/etc/ntpd.conf`    
