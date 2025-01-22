---
title: Redondance et fiabilité
description: 
published: true
date: 2024-12-10T20:51:20.406Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:51:01.485Z
---

Redondance de lien

*   Permet la continuité de service en cas de coupure d’un des liens
*   Création d’un lien logique pour plusieurs liens physiques
*   STP sur le lien logique, non plus sur les liens physiques
*   Protocoles de redondance doivent être similaires de part et d’autre des liens
*   3 protocoles existants :
    *   LACP (Link Aggregation Control Protocol)
    *   Etherchannel
    *   Pagp (Port Aggregation Protocol)

### Etherchannel

*   Agrégation statique
*   Aucun contrôle n’est effectué lors de la mise en place du lien
*   Commandes
    *   `Channel-group <numéro> mode on`

### LACP :

Agrégation dynamique

Plusieurs modes :

*   Active: L’interface va tenter de joindre l’équipement connecté afin d’établir un lien LACP
*   Passive: L’interface écoute et est en attente d’une demande
*   Combinaisons possibles:
    *   Active/Active
    *   Active/Passive

Commande :

*   `Interface range fa0/1-2`  
    `Channel-group <numero> mode active/passive`

### Pagp :

*   Propriétaire Cisco (fonctionne donc qu’entre équipements de cette marque)
*   Agrégation dynamique
*   Modes :
    *   Desirable (équivalent active)
    *   Auto (équivalent passive)
*   Commande :
    *   `Interface range Fa0/1-2`  
        `Channel-group <numéro> mode desirable/auto`

Redondance matériel
-------------------

### StackWise/VSF

*   Plusieurs équipements physiques forment un seul équipement logique
*   Même plan de contrôle
*   Même plan de management
*   Même plan de données
*   Problèmes lors de mise à jour
*   Non optimisé car la majeur partie du temps carte stack nécessaire et donc longueur de câble limité

### VSS/VPC/VSX

*   Plusieurs équipements physiques forment un seul équipement logique
*   Plan de contrôle séparé
*   Plan de management séparé
*   Plan de données séparé
*   Plus d’équipements à maintenir
*   Nécessité d’avoir une configuration homogène sur les membres d’une stack

### VRRP/HSRP

*   VRRP (Virtual Router Redundancy Protocol) : version ouverte
*   HSRP (Hot Standby Router Protocol) : version propriétaire de cisco
*   Mécanismes permettant d’avoir de la redondance de passerelle
*   Adresse ip virtuelle partagée par plusieurs switchs
*   Membre actif (priorité la plus haute) désigné comme active forwarder et l’autre en standby
*   Nécessite que les switchs communiquent sur le même vlan pour élire le membre actif
*   Membre actif (active forwarder) répondra au requête ARP

### GLBP

*   Propriétaire CISCO
*   Même mécanisme que VRRP et HSRP
*   Plusieurs équipements peuvent être actifs en même temps
*   Possibilité de load-balancing native