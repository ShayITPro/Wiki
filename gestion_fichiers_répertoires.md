---
title: Gestion des fichiers et répertoires
description: 
published: true
date: 2024-12-07T14:17:21.859Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:17:14.404Z
---

# Création de fichiers et répertoires

## Créer un dossier

```bash
mkdir [OPTIONS] nom_du_dossier
```
- `-p, --parents` : Créer les répertoires parents s'ils manquent.


## Créer un fichier vide

```bash
touch nom_du_fichier
```

# Déplacement et renommage de fichiers et répertoires

## Déplacer un fichier ou un répertoire

```bash
mv source destination
```

## Renommer un fichier ou un répertoire

```bash
mv ancien_nom nouveau_nom
```

# Copie de fichiers et répertoires

## Copier un fichier

```bash
cp source destination
```

## Copier un répertoire et son contenu

```bash
cp -R répertoire_source destination
```

# Suppression de fichiers et répertoires

## Supprimer un fichier

```bash
rm [OPTIONS] nom_du_fichier
```
- `-f` : Ignorer toute invite lors de la suppression d’un fichier protégé en écriture.    
- `-i` : Afficher une invite avant la suppression de chaque fichier.    
- `-I` : Afficher une invite une seule fois avant de supprimer plus de trois fichiers

##  Supprimer un répertoire

```bash
rm -r [OPTIONS] nom_du_répertoire
```
- `-d` : Supprimer un répertoire vide. 
- `-r` : Supprimer un répertoire non vide et son contenu.    
- `-rf` : Ignorer toute invite lors de la suppression d’un dossier non vide protégé en écriture.    
- `-i` : Afficher une invite avant la suppression de chaque fichier.    
- `-I` : Afficher une invite une seule fois avant de supprimer plus de trois fichiers.

## Supprimer un répertoire vide

```bash
rmdir [OPTIONS] nom_du_répertoire
```
- `-p` : Supprimer un sous-répertoire vide et son répertoire parent.    
- `-v` : Imprimer l’information que le répertoire spécifié a été supprimé.

# Liste des fichiers et répertoires

## Lister les fichiers et répertoires

```bash
ls [OPTIONS]
```
- `-a` : Lister les fichiers cachés.    
- `-F` : Lister les fichiers et les répertoires avec le caractère ‘/’ à la fin.    
- `-l` : Afficher la taille, la date et l’heure de modification, le nom du fichier ou du répertoire, le propriétaire du fichier et son autorisation.    
- `-lh` : Lister les fichiers avec un format lisible par l’homme.    
- `-ld` : Lister les noms de répertoires, pas leur contenu.

## Afficher le chemin absolu du répertoire courant

```bash
pwd
```

# Affichage du contenu des fichiers

## Afficher le contenu d’un fichier

```bash
cat nom_du_fichier
```

## Afficher le contenu d’un fichier page par page

```bash
more nom_du_fichier
```
ou
```bash
less nom_du_fichier
```

# Redirection du contenu

## Rediriger le contenu d’un fichier vers un autre fichier

```bash
cat fichier_source > fichier_destination
```

## Ajouter le contenu d’un fichier à la suite d’un autre fichier

```bash
cat fichier_source >> fichier_destination
```