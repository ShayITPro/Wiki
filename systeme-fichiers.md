---
title: Système de fichiers de Windows Server
description: 
published: true
date: 2024-12-09T08:35:00.655Z
tags: 
editor: markdown
dateCreated: 2024-12-09T08:34:52.812Z
---

# Présentation du système de fichiers


Un système de fichiers est un composant essentiel de tout système d'exploitation. Il fournit une façon de stocker et de récupérer des fichiers sur les périphériques de stockage.

### Composants d'un système de fichiers

-   Volume : L'abstraction la plus haute pour stocker des données.
    -   Répertoires  : Contiennent des fichiers et autres répertoires.
	    -   Fichiers : Stockent des données, telles que des documents ou des images.
		    -   Données : Le contenu réel stocké dans le système de fichiers.

### Types de systèmes de fichiers sur Windows Server

-   FAT (File Allocation Table) : Un système de fichiers simple avec une approche basée sur les tables. Deux copies de la table sont maintenues pour garantir la redondance.
    -   FAT32 : Supporte des volumes jusqu'à 64 Go.
    -   exFAT : Conçu pour les lecteurs flash et autres appareils portables, supporte de grandes fichiers et volumes.

### NTFS (New Technology File System)

-   Le système de fichiers le plus populaire sur Windows Server.
-   Fournit des fonctionnalités de sécurité intégrées :
    -   Listes de contrôle d'accès (ACL)
    -   Auditing
    -   Journalisation du système de fichiers et chiffrement.
-   Supporte la compression et le chiffrement au niveau des fichiers.

### ReFS (Resilient File System)

-   Introduit dans Windows Server 2012, fournit une résilience améliorée.
-   Supporte de grandes fichiers et volumes, y compris leur déduplication.
-   Idéal pour stocker des données sur Windows Server 2022.
-   Ne supporte pas la compression ou le chiffrement au niveau des fichiers.
-   Pas adapté aux volumes d'amarrage ni aux supports amovibles.

### Secteurs et unités d'allocation

-   Secteur : La plus petite unité de stockage qui peut être lue ou écrite sur un disque dur. (512 octets)
-   Unité d'allocation (Cluster) : La plus petite quantité d'espace disque qui peut être utilisée pour stocker un fichier, déterminée par le format du système de fichiers.
-   Un cluster est une unité d'allocation.



