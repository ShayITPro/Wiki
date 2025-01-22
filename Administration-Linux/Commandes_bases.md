---
title: Commandes de base
description: 
published: true
date: 2024-12-10T20:50:12.729Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:02:47.731Z
---

# Connexion
Pour se connecter à un autre compte (depuis root) :

```bash
su - user
```
# Commandes utiles

## Compter avec `wc`

```bash
wc [OPTIONS] nom_du_fichier
```
- `-l` : Liste les lignes.    
- `-w` : Liste les mots.    
- `-c` : Liste les caractères.

## Autres commandes utiles


| Commande et option     | Description                                                |
| ---------------------- | ---------------------------------------------------------- |
| `date`                 | Afficher la date et l’heure du système.                    |
| `file nom_du_fichier`  | Connaître le type du fichier (image, script, texte, etc.). |
| `clear`                | Nettoyer l’écran.                                          |
| `ip a`                 | Voir la configuration réseau.                              |
| `touch nom_du_fichier` | Créer un fichier vide.                                     |
| `echo "texte"`         | Afficher une ligne de texte.                               |
## Gestion des ressources

Voir la quantité de mémoire RAM et de SWAP :
```bash
free [OPTIONS]
```
- `-k` : Afficher en kilo-octets.    
- `-m` : Afficher en méga-octets.    
- `-g` : Afficher en giga-octets.    
- `-t` : Afficher une ligne de total.




