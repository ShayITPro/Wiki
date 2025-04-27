---
title: Git
description: 
published: true
date: 2025-04-27T17:02:32.825Z
tags: 
editor: markdown
dateCreated: 2025-04-27T17:02:32.825Z
---

# Git - Commandes et Gestion de Dépôt

## Commandes de base

- Initialiser un dépôt Git :
```bash
git init
```

- Vérifier l'état du dépôt :
```bash
git status
```

- Ajouter des fichiers à l'index :
```bash
git add file.txt
```

- Créer un commit :
```bash
git commit -m "description"
```

- Consulter l'historique du projet :
```bash
git log
```

---

## Gestion de la configuration Git

- Afficher tous les paramètres :
```bash
git config --list
```

- Afficher un paramètre spécifique :
```bash
git config <paramètre>
```

### Configuration des paramètres utilisateur

- Définir son nom :
```bash
git config --global user.name "Your Name"
```

- Définir son adresse mail :
```bash
git config --global user.email "your.email@example.com"
```

### Améliorer l'affichage

- Utiliser automatiquement des couleurs :
```bash
git config --global color.ui auto
```

- Choisir l'éditeur par défaut (ex: nano) :
```bash
git config --global core.editor nano
```

- Synchronisation des fins de ligne :
```bash
git config --global core.autocrlf input
```

- Créer des raccourcis Git :
```bash
git config --global alias.<raccourci> <commande>
```

---

## Travailler avec des fichiers et la zone d'index

- Ajouter des fichiers à la zone d'index :
```bash
git add file.txt
```

### Ignorer des fichiers avec .gitignore

- Créer un fichier `.gitignore` :
```bash
echo "*.log" > .gitignore
```

### Visualiser les modifications

```bash
git diff
```

- Restaurer un fichier depuis l'index :
```bash
git restore --staged <file>
```

---

## Opérations de base sur les branches

- Créer une nouvelle branche :
```bash
git branch <nom-branche>
```

- Basculer sur une autre branche :
```bash
git checkout <nom-branche>
```

- Créer ET basculer vers une nouvelle branche :
```bash
git checkout -b <nom-branche>
```

### Fusionner des branches

- Se positionner sur `master` :
```bash
git checkout master
```

- Fusionner une branche avec `master` :
```bash
git merge <nom-branche>
```

### Supprimer une branche devenue inutile

```bash
git branch -d feature-dimension
```

---

## Opérations avancées sur les commits

- Modifier le dernier commit :
```bash
git commit --amend -m "nouvelle description"
```

- Annuler un commit :
```bash
git revert HEAD
```

- Fusionner un commit spécifique d'une branche :
```bash
git cherry-pick <id-commit>
```

### Remise en forme interactive

- Modifier les 3 derniers commits :
```bash
git rebase -i HEAD~3
```

- Depuis la racine du dépôt :
```bash
git rebase -i --root
```

---

## Sauvegarder un travail en cours avec `stash`

- Sauvegarder temporairement les modifications :
```bash
git stash
```

- Appliquer les modifications sauvegardées :
```bash
git stash apply
```

- Afficher tous les stashs :
```bash
git stash list
```

- Supprimer tous les stashs :
```bash
git stash clear
```

- Appliquer et supprimer le dernier stash :
```bash
git stash pop
```

- Créer une branche depuis un stash :
```bash
git stash branch nouvelle-branche
```
