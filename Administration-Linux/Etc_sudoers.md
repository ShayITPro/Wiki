---
title: Fichier /etc/sudoers
description: 
published: true
date: 2025-01-22T13:19:45.251Z
tags: 
editor: markdown
dateCreated: 2024-12-07T14:00:46.831Z
---

# Fichier /etc/sudoers
définit qui peut utiliser la commande `sudo` et quelles commandes ils peuvent exécuter.

## Structure et syntaxe du fichier :

`utilisateur machine=(utilisateur_cible) commandes`

*   **utilisateur** : Le nom d'utilisateur ou le groupe (précédé d'un `%`) qui est autorisé à exécuter des commandes via `sudo`.
*   **machine** : Le nom d'hôte de la machine sur laquelle l'utilisateur peut exécuter les commandes. Cela permet de définir des permissions spécifiques à certaines machines dans un environnement réseau.
*   **utilisateur_cible** : L'utilisateur en tant que lequel les commandes peuvent être exécutées. Le plus souvent, il s'agit de `root`.
*   **commandes** : La liste des commandes que l'utilisateur est autorisé à exécuter. Le mot `ALL` signifie que l'utilisateur peut exécuter n'importe quelle commande.