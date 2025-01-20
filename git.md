---
title: Git
description: 
published: true
date: 2024-12-18T16:02:42.467Z
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
git commit -m "description"
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

## Visualiser des modifications 

```git
git diff
```

## Modifierla zone d’index

Restaurer les fichier d’un arbre de travail

```git
git restore --staged <file>
```

# Opérations de base des branches 

- Créer une  nouvelle branche

```git
git branch <nom-branche>
```

* Basculer sur une autre branche 

```git
git checkout <nom-branche>
```

- Créer et basculer vers une nouvelle branche
```git
git checkout -b <nom-branche>
```

## Fusionner des branches

- Aller sur la branche master
```git
git checkout master
```
- Fusionner la branche avec la branche principale

```git
git merge >nom-branche>
```

## Supprimer une branche devenur inutile

```git
git branch -d feature-dimension
```

# Opérations avancées de Git Commit

## Modifier le dernier commit

```git
git commit --amend -m "nouvelle description"
```


## Annuler un commit

- Créer un nouveau commit qui annule les changements introduits par le dernier commit 
```git
git revert HEAD
```

## Fusionner certains commit d'une branche dans une aute branche

- Aller sur la branche master
```git
git checkout master
```

- Fusionner le commit plus récent avec la branche principale
```git
git cherry-pick <nom-branche>
```

## Remise en forme interactive
```git
git rebase -i HEAD~3
```

Différentes actions pour chacun de ces commits :
- `pick` : Utilisé par défaut, cela garde le commit tel quel.
- `reword` : Change uniquement le message du commit.
- `edit` : Fais une pause après le commit pour permettre des modifications.
- `squash` : Combine ce commit avec le précédent.
- `fixup` : Comme squash, mais ne garde pas le message du commit.
- `drop` : Supprime le commit.

Quand l'éditeur s'ouvre à nouveau, faire les actions prévues

## Remise en forme depuis la racine
```git
git rebase -i --root
```

# Sauvegarder un travail en cours

## Sauvegarder des modifications

- Sauvegarder temporairement les modifications non validées (uncommitted)
```git
git stash
```

## Appliquer des modifications cachées
```git
git stash apply
```
- supprimer tous les stashs sauvegardés
```git
git stash clear
```
- stash les modifications suivies et les fichiers non suivis (uncommitted)
```git
git stash -u
```

- Afficher la liste de tous les stashs actuellement sauvegardés.

```git
git stash list
```

- Appliquer et supprimer le dernier stash :
```git
it stash pop
```
```

## Créer une branche à partir d'une réserve

- Créer une nouvelle branche à partir du dernier stash
```git
git stash branch nouvelle-branche
```
