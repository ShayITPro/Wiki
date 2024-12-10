---
title: Introduction aux réseaux
description: 
published: true
date: 2024-12-07T15:47:11.181Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:47:03.589Z
---

# Réseaux Informatiques : Fondamentaux

## LAN (Local Area Network)

Un réseau local caractérisé par :
- Connexion d'équipements au sein d'une même organisation par câble
- Equipements géographiquement proches

### Technologies
- **Ethernet**
- **CSMA/CD(CA)**

### Protocoles de routage
- **OSPF**
- **EIGRP**
- **RIP**

## WLAN (Wireless Local Area Network)

Equivalent du LAN, mais avec des connexions sans fil :
- Même fonctionnalité que le LAN
- Utilisation de technologies wireless

## WAN (Wide Area Network)

Caractéristiques principales :
- Interconnexion de plusieurs LANs
- Equipements géographiquement éloignés
- Débit généralement plus lent que le LAN
- Connectivité fournie par un Fournisseur d'Accès Internet (FAI)

### Protocoles de routage
- **BGP**
- **MPLS**

## VLAN (Virtual Local Area Network)

### Définition
Réseau virtuel permettant de :
- Regrouper des machines/utilisateurs connectés à différents équipements réseau
- Créer des segmentations logiques indépendantes de la topologie physique

### Caractéristiques techniques
- Opère au niveau 2 (liaison de données)
- Ne peut être étendu nativement après routage

### Modes de configuration

#### VLAN taggé
- Port réseau en mode trunk
- Permet le transport de plusieurs VLAN sur une même liaison

#### VLAN non taggé
- Port réseau en mode accès ou VLAN natif
- Deux configurations possibles :
  1. **Mode accès** : un seul équipement attaché (switch vers équipement final)
  2. **Mode trunk** : connexion entre deux équipements réseau