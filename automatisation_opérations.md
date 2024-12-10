---
title: Automatisation des opérations
description: 
published: true
date: 2024-12-10T20:52:13.097Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:00:08.514Z
---

# Découverte de Ansible

Ansible est un outil d'automatisation informatique écrit en Python. Il peut configurer des systèmes, déployer des logiciels et orchestrer des tâches informatiques avancées, telles que des déploiements continus.

> **Node** (ou managed node, ou host) : Un poste connecté au node manager en SSH, sur lequel Ansible viendra pousser les tâches d’automatisation. Ansible n’est pas installé sur les nodes.
{.is-info}


> **Node manager** (ou control node) : Un poste qui contrôle les nodes grâce à sa connexion SSH. Il dispose d'une version Ansible installée pour leur pousser les tâches d’automatisation grâce aux commandes `ansible` et `ansible-playbook`. Ça peut être n’importe quelle machine Linux, mais pas Windows.
{.is-info}



# Installation d'Ansible

## Installation des Pré-requis

```bash
sudo apt install python3.11-venv sshpass virtualenv tree
```

## Création d'un Utilisateur pour Ansible

```bash
adduser user-ansible
```

## Création de l'Environnement de Travail Virtuel sur le Node Manager

### Créer l'Environnement de Travail

```bash
virtualenv ansible
```

### Activer l'Environnement Virtuel

```bash
source ansible/bin/activate
```

## Installation d'Ansible dans l'Environnement Virtuel

### Installer Ansible avec pip
```bash
pip install ansible
```

### Vérifier la Version de Ansible
```bash
ansible --version
```

##  Préparation de la Communication avec les Nodes

### Création du Fichier Inventaire Ansible

> Se placer dans l'environnement virtuel.
{.is-info}


Editer le fichier `inventaire.ini`et ajouter les noms des nodes.

### Utiliser la Commande Ansible en Mode Ad-Hoc

Lancer un **ping** avec **Ansible** :

```bash
ansible -i inventaire.ini -m ping http1 --user root --ask-pass
```
- **-i** : Emplacement du fichier **i**nventaire. 
- **-m** : Utilisation du **m**odule ping.    
- **http1** : Node ciblé pour l'action, ici **http1**.    
- **--user** : Utilisateur **root** pour se connecter au node.    
- **--ask-pass** : Demander le **mot de passe SSH**.

> **Module** : Programme utilisé pour exécuter une tâche ou une commande Ansible. Chaque tâche utilise un module unique, qui peut être personnalisé avec des arguments. Ansible fournit de nombreux modules, mais vous pouvez également créer les vôtres. {.is-info}


### Vérification de l'Installation de Python sur les Nodes

```bash
ansible -i inventaire.ini -m raw -a "apt install -y python3" http1 --user root --ask-pass
```
- **-i** : Emplacement du fichier **i**nventaire.    
- **-m** : Utilisation du **m**odule raw.    
- **-a** : Argument "commande à exécuter".    
- **http1** : Node ciblé pour l'action, ici **http1**.    
- **--user** : Utilisateur **root** pour se connecter au node.    
- **--ask-pass** : Demander le **mot de passe SSH**.

### Création de l’Utilisateur user-ansible sur les Nodes

```bash
ansible -i inventaire.ini -m user -a 'name=user-ansible password=\$6\$secretsalt\$X5YDmUgDphPxnMkByvHbNaiP4T5Uk0WjEZ9TukWKQnXmXN81jG3DcGZnNJiSz9ltgPhplH92HOR/RqgmyS.zN1' --user root --ask-pass all
```
- Module **user** avec les arguments **name** et **password**.    
- **all** : Lancer la commande sur tous les nodes présents dans le fichier inventaire

### Donner les Droits Sudo à user-ansible


```bash
ansible -i inventaire.ini -m user -a 'name=user-ansible groups=sudo append=yes' --user root --ask-pass all
```
- `--become` : Permet de "devenir" un autre utilisateur en utilisant sudo.    
- `--ask-become-pass` : Demander le mot de passe sudo.

### Créer les Clés SSH

```bash
ssh-keygen -t ecdsa
```