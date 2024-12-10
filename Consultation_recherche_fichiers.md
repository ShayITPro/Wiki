---
title: Consultation et recherche de fichiers
description: 
published: true
date: 2024-12-10T20:50:28.016Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:08:24.913Z
---

# Affichage du contenu des fichiers

## Afficher le contenu d’un fichier

```bash
cat nom_du_fichier
```
-  `cat ./-` : Lire un fichier qui s'appelle "-"
- `cat ' '` : Lire un fichier qui s'appelle " "    
- `cat spaces\ in\ this\ filename` : Lire un fichier avec des espaces dans le nom

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
# Copie et déplacement de fichiers

## Copier un fichier

```bash
cp fichier_source destination
```

## Copier un répertoire et son contenu

```bash
cp -R répertoire_source destination
```

## Déplacer un fichier ou un répertoire

```bash
mv source destination
```

### Renommer un fichier ou un répertoire

```bash
mv ancien_nom nouveau_nom
```

# Recherche de fichiers avec `find`

## Faire une recherche de fichiers correspondant à des critères

```bash
find [chemin] [OPTIONS] [critère]
```
- `-name` : Recherche par nom de fichier.    
- `-size` : Rechercher par taille.    
- `-perm` : Rechercher par droits.
- `-group` : Rechercher par groupe.
- `-type` : Rechercher par type 
	- `f` : Rechercher des fichiers normaux
	- `d` : Rechercher des répertoires
- `-readable` : Rechercher des fichiers lisibles par l'homme
- `! -executable` : Rechercher des fichiers non exécutables 
- `-user` : Rechercher par utilisateur

# Recherche dans le contenu des fichiers

## Rechercher des lignes correspondant à un motif

```bash
grep "motif" fichier
```
- `-i` : Ignorer la casse.    
- `-n` : Afficher le numéro de la ligne où se trouve la recherche effectuée.    
- `-v` : Afficher les lignes ne correspondant pas au filtre.    
- `-r` : Rechercher dans les sous-dossiers.