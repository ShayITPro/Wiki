---
title: SSH
description: 
published: true
date: 2025-01-22T12:02:42.387Z
tags: ssh
editor: markdown
dateCreated: 2024-12-07T15:15:13.282Z
---

# Installation

1. Installer le paquet `openssh-server` 
```
	sudo apt install openssh-server
```

2.  Activer et démarrer le service SSH
```
sudo systemctl start ssh	
sudo systemctl enable ssh
```
# Configuration 

- Ouvrir le fichier de configuration `sshd_config`
```
sudo nano /etc/ssh/sshd_config
```
	
## Changer le port SSH

1.  Cherchez la ligne `Port 22`. 

2. Décommenter cette ligne (enlevez le #) et remplacer le numéro de port par celui de votre choix
```
Port 2222
```

3. Redémarrer le service SSH pour appliquer les changements :
```
sudo systemctl restart ssh
```

## Désactiver l’accès SSH pour l’utilisateur root

1. Chercher la ligne `PermitRootLogin`
2. Modifier la valeur de `PermitRootLogin` de `yes` à `no` :
```
PermitRootLogin no
```

## Générer une clé SSH

- Générer une clé SSH avec :
```
ssh-keygen -b 4096
```

## Connexion via clé SSH

- Mettre la clé publique dans le fichier :
```
~/.ssh/authorized_keys
```

