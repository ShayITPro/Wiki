---
title: Git
description: 
published: true
date: 2024-12-18T14:20:26.855Z
tags: 
editor: markdown
dateCreated: 2024-12-18T14:20:26.855Z
---

# Commandes de base 

Créer un dépôt Git : 
``` git
git init
```

Vérifier l'état du dépôt

```git
git status
```

Créer des fichiers et les préparer pour le commit

```git
git add file.txt
```

Créer un commit (un point de sauvegarde dans le temps) 

```git
git commit
```

Consulter l'historique du projet 
```git
git log
```

# Gestion de la configuration Git 

Pour afficher tous les paramètres :
```git
git config --list
```

Pour afficher un paramètre spécifique
```git
git config <paramètre>
```

## Configuration des paramètres utilisateur

Définir son nom 
```git
git config --global user.name "Your Name"
```

Définir son adresse mail : 
```git
git config --global user.email "your.email@example.com"
```

## Améliorer l'affichage

Utiliser automatiquement des couleurs dans la sortie de ses commandes lorsque cela est possible

```git
git config --global color.ui auto
```

Choisir l'éditeur par défaut (nano par ex)

```git
git config --global core.editor nano
```

Synchronisation des échéances
```git
git config --global core.autocrlf input
```

Créer des raccourcis
```git
git config --global alias.<raccourci> <commande>
```
# Travailler avec des fichiers et la zone d’index

Ajouter des fichiers à la zone d’index :
```git
git add file.txt
```

## Ignorer les fichiers avec .gitignore

- Créer un fichier .gitignore qui indique à Git d'ignorer tout fichier portant l'extension .log.

```git
echo "*.log" > .gitignore
```

## Visualisation des modifications 

```git
git diff
```

## Modifications de la zone d’index

Restaurer les fichier d’un arbre de travail

```git
git restore --staged <file>
```

# Opérations de base des branches 