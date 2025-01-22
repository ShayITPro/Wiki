---
title: UFW
description: 
published: true
date: 2024-12-10T20:51:57.670Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:19:15.596Z
---

# Installation

1.  Installer UFW

```bash
sudo apt install ufw -y
```

2. Activer le Service UFW

```bash
sudo systemctl enable ufw
```

# Configuration

1. Vérifier la Version d'UFW

```bash
sudo ufw version
```

2. Autoriser les Connexions SSH

```bash
sudo ufw allow ssh
```

3. Utiliser un Port SSH Personnalisé
```bash
sudo ufw allow 4242/tcp
```