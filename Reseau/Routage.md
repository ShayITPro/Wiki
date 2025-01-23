---
title: Routage
description: 
published: true
date: 2025-01-22T13:10:30.014Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:51:46.580Z
---

## Routage


*   Vérification dans la table de routage si la destination est dans le réseau local ou pas
*   Envoie à la destination ou à la passerelle par défaut si réseau distant
*   Peut être statique ou dynamique

### STP (Spanning-Tree)

*   Gère les boucles dans le réseau
*   Niveau 2 ((liaison de données))
*   Mécanismes principaux :
    *   Election du root bridge (tous ces ports passent à l’état opérationnel).
    *   Sélection du port root (port par lequel on peut joindre le root bridge le plus rapidement possible qui est calculée selon la bande passante)
    *   Blocage des ports des routes secondaires vers le root bridge.
*   Fonctionnalités supplémentaires:
    *   Root guard : permet à un équipement de désactiver le port sur lequel il reçoit une trame STP indiquant un meilleur root bridge que celui existant
    *   Portfast : permet à un port de passer directement à l’état opérationnel en ignorant toutes les étapes nécessaires à STP afin de vérifier qu’il n’y ait pas de boucle.
    *   BPDU Guard : permet dans le cas où portfast a été implémentée de désactiver le port si celui-ci reçoit des trames STP


Protocole de routage

*   **RIP** : pour les petits réseaux (15 routeurs maximum), la convergence est plus lente que sur EIGRP et OSPF et ce n’est pas un protocole hiérarchisé.
*   **EIGRP** : les grands réseaux, mais propriétaire Cisco (il faut obligatoirement que des routeurs Cisco pour utiliser ce protocole)
*   **OSPF** : les grands réseaux, protocole ouvert à état de liens.

Protocole de routage

*   **RIP** : pour les petits réseaux (15 routeurs maximum), la convergence est plus lente que sur EIGRP et OSPF et ce n’est pas un protocole hiérarchisé.
*   **EIGRP** : les grands réseaux, mais propriétaire Cisco (il faut obligatoirement que des routeurs Cisco pour utiliser ce protocole)
*   **OSPF** : les grands réseaux, protocole ouvert à état de liens.

### OSPF (_**Open Shortest Path First)**_

*   état de liens : description de l’interface d’un routeur
    *   Son adresse IP
    *   Son masque
    *   Le type de réseau
    *   Son voisin (un routeur)
*   E**nsemble des liens OSPF enregistré dans une base de données (link-state database),** identique sur tous les routeurs d’une même aire.
*   zones OSPF (appelée aussi area ou aire) = regroupements logiques de routeurs, ce qui permet de supporter les réseaux très larges grâce aux échanges inter-réseaux, c'est-à-dire inter-zones.
    *   aire  BackBone _:_ aire OSPF obligatoire : en charge de diffuser les informations des autres zones OSPF.
    *   A**ire standard** : zone par défaut, les LSA de type 1 et 2 reste dans la zone, les types 3, 4 et 5 peuvent circuler entre les zones.
    *   **L’aire stubby** : Une route par défaut est utilisée à la place des LSA de types 4 et 5.
    *   **L’aire totally stubby** : empêche les LSA de type 3,4 et 5 de rentrer dans la zone.
    *   **L’aire not so stubby** (abrégée en NSSA) : permet la présence d’un routeur ASBR dans une zone OSPF de type stubby, utilise les LSA de type 7.
    *   **L’aire totally stubby not so stubby** : fonctionne comme une NSSA mais pour une aire totally stubby.