---
title: Droits d'accès
description: 
published: true
date: 2025-01-22T13:37:09.161Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:15:47.911Z
---

# Droits d'accès

## Types de fichier

- `-` : Fichier    
- `d` : Répertoire    
- `l` : Lien

## Structure des droits

- Les 3 premières lettres : Droits du propriétaire (owner)    
- Les 3 lettres suivantes : Droits du groupe    
- Les 3 dernières lettres : Droits des autres

## Symboles des droits

- `R` : (Read) Droit de lecture    
- `W` : (Write) Droit de modification
- `X` : (eXecute) Droit d’exécuter

## Colonnes de détails

- 3ème colonne : Propriétaire du fichier    
- 4ème colonne : Groupe du fichier

## Droits sur un fichier

- `R` : Avoir accès au contenu d'un fichier (écouter une piste audio, visionner un film, lire un texte, etc.)    
- `W` : Apporter des modifications à un fichier (corriger un texte, une image, etc., et enregistrer les changements)    
- `X` : Exécuter le fichier s'il s’agit d’un script

## Droits sur les répertoires

- `R` : Lister le contenu (commande `ls`) et naviguer à l'intérieur d'un répertoire    
- `W` : Ajouter, modifier, renommer ou supprimer un fichier dans un répertoire    
- `X` : Accéder à ce répertoire (commande `cd`)

# Modification des permissions :

## Tableau des Valeurs de Permission


| Valeur de Permission | Description de la Permission         |
| -------------------- | ------------------------------------ |
| 0                    | Aucune permission (---)              |
| 1                    | Exécution (--x)                      |
| 2                    | Écriture (-w-)                       |
| 3                    | Écriture et exécution (-wx)          |
| 4                    | Lecture (r--)                        |
| 5                    | Lecture et exécution (r-x)           |
| 6                    | Lecture et écriture (rw-)            |
| 7                    | Lecture, écriture et exécution (rwx) |


## Utilisation de `chmod`

`chmod` (change mode) pour modifier les droits d’un fichier ou répertoire.

```bash
chmod [OPTIONS] mode fichier
```

## Utilisation de `chown`

`chown` (change owner) permet de changer le propriétaire et le groupe.

```bash
chown [OPTIONS] [PROPRIO][:GROUPE] fichier
```

## Utilisation de `chgrp`

`chgrp` (change group) permet de changer le groupe.

```bash
chgrp [OPTIONS] GROUPE fichier
```


## Modifications octale

Les droits peuvent être modifiés à l'aide d'une notation octale.

- `r` (read) : 4    
- `w` (write) : 2    
- `x` (execute) : 1
## Modifications symbolique

- `u` : Pour le propriétaire (user)    
- `g` : Pour le groupe (group)    
- `o` : Pour les autres (other)    
- `a` : Pour tous (all)    
- `+` : Attribuer    
- `-` : Retirer    
- `=` : Fixer l'accès exact