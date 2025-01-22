---
title: Commandes Cisco
description: 
published: true
date: 2024-12-10T20:50:20.499Z
tags: 
editor: markdown
dateCreated: 2024-12-07T15:35:37.175Z
---

# Modes de configuration CISCO

+ Mode Utilisateur
+ Mode Privilège
```bash
NomDuRouter > enable
```
- Mode de configuration Globale
```bash
NomDuRouter# configure terminal
```

# Configurer le routeur

## Ajouter un hostname

```
NomDuRouter# hostname NomduRouteur
```

## Vérifier la Configuration par Défaut

```
NomDuRouter# show running-config
```

## Configurer une interface 

```
Router1(config)#interface NomInterface
! activer interface
Routeur1(config-if)#no shutdown 
Routeur1(config-if)#ip address AdresseIP MasqueRéseau
Routeur1(config-if)#exit
```

## Sauvegarder la configuration

```
copy running-config startup-config
```

# Configurer des VLAN 

## Créer un VLAN

```
switch1(config)# vlan { vlan-id | vlan-range }
```

## Configurer le  VLAN

```
switch1(config)# vlan 2 (pour entrer en mode configuration vlan)
switch1(config-vlan)# name e-commerce (pour lui donner un nom)
switch1(config-vlan)# state active
switch1(config-vlan)# no shutdown (pour l’activer)
```

## Attribuer un port au VLAN

```
switch1(config)# interface gigabitethernet 0/0/0 (on passe sur l’interface voulue)
switch1(config-if)# switchport access vlan 2 (on ajoute le VLAN)
```

## Faire passer plusieurs VLAN sur le même câble

```
switch1# configure terminal
switch1(config)# interface GigabitEthernet 0/1
switch1(config-if)# switchport mode trunk
switch1(config-if)# switchport trunk allow vlan 2-3
```

# Créer des liens entre les VLAN pour l’administration

## Manager les switchs en s'attribuant un VLAN

Ajouter un VLAN pour l’administration

```
switch1(config)# vlan 99 (pour entrer en mode configuration vlan)
switch1(config-vlan)# name Administration (pour lui donner un nom)
switch1(config-vlan)# state active
switch1(config-vlan)# no shutdown (pour l’activer)
```

Ajouter une interface virtuelle pour le management

```
switch2(config)#interface vlan 99
switch2(config-if)# ip address 192.168.99.2 255.255.255.0
switch2(config-if)#no shutdown
switch2(config-if)#end
```

## Manager les serveurs depuis le poste de l’administrateur

### Créer des sub-interfaces et relier les VLANs à Internet

```
Router1#configure terminal
Router1(config)#int gigabitEthernet 0/0/0 
Router1(config-if)#no shut
Router1(config-if)#exit

# On créé la sub-interface et on la déclare comme étant le VLAN 1 et le VLAN natif

Router1(config)#int gigabitEthernet 0/0/0.1
Router1(config-subif)#encapsulation dot1Q 1 native
Router1(config-subif)#ip address 192.168.1.254 255.255.255.0
Router1(config-subif)#exit

# On créé le sub-interface et on la déclare comme étant le VLAN 2

Router1(config)#int fastEthernet 0/0/0.2
Router1(config-subif)#encapsulation dot1Q 2
Router1(config-subif)#ip address 192.168.2.254 255.255.255.0
Router1(config-subif)#exit

# On créé le sub-interface et on la déclare comme étant le VLAN 99

Router1(config)#int fastEthernet 0/0/0.99
Router1(config-subif)#encapsulation dot1Q 99
Router1(config-subif)#ip address 192.168.99.254 255.255.255.0
Router1(config-subif)#exit
```

### Administration depuis n'importe quel Poste

En ajoutant des VLANs interfaces au switch et aux routeurs, administration administrer depuis n’importe quel poste : 

```
switch(config)#interface vlan 99      
switch(config-if)# ip address adresse-ip masque
switch(config-if)#no shutdown
switch(config-if)#end
```

### Relier les VLANs aux Routeurs

Créer des **sub-interfaces** et leur attribuer un VLAN et une adresse IP. Cette interface deviendra la **gateway** du VLAN :
```
Router(config)#int fastEthernet 0/0.X
Router(config-subif)#encapsulation dot1Q X
Router(config-subif)#ip address adresse-ip masque
Router(config-subif)#exit
```

Une fois les VLANs reliés au routeur, ce dernier crée les routes permettant la communication entre eux.

# Configurer les protocoles NTP, NAT et DHCP

## DHCP

- Activer le Service DHCP sur le Routeur
```
Router1(config)#service dhcp
```

- Configurer le Service DHCP pour chaque VLAN
```
routeur1(config)#ip dhcp pool nomDuPool
routeur1(dhcp-config)#network adresse masque
routeur1(dhcp-config)#default-router adresseDeLInterface
```

- Vérifier la Configuration sur les PC
```
ipconfig /renew
```

## NTP
 
 - Configurer le Routeur
```
routeur1(config)#ntp master 1
```

- Configurer les Switchs
```
switch1(config)#ntp server 192.168.99.254
```

- Configurer une Route par Défaut
```
routeur1(config)#ip route 0.0.0.0 0.0.0.0 adresseGateway
```

## NAT

- Créer un Groupe
```
routeur1(config)#ip access-list standard nomDuGroupe
routeur1(config-std-nacl)#permit adresseRéseau masqueInversé
```

- Indiquer les Interfaces de Sortie et d'Entrée du NAT
```
routeur1(config)#int interfaceDeSortie
routeur1(config-if)#ip nat outside
routeur1(config)#int interfaceDEntrée
routeur1(config-if)#ip nat inside
```

- Appliquer la Règle de Groupe à l'Interface de Sortie du NA
```
ip nat inside source list nomDuGroupe interface GigabitEthernet0/1 overload
```

- Configurer une Redirection Statique depuis Internet vers un Serveur Privé 
```
ip nat inside source static tcp adressePrivée portPrivé adressePublique portPublique
```



# Configuration de l’interface « loopback »

```
Router> enable
Router# configure terminal
Router(config)# interface loopback X
Router(config-if)# ip address <Adresse IP> <Masque de sous-réseau>
```

# Configuration de la session BGP entre RX et RY

RX :

```
R1(config)\#router bgp <n°>
R1(config-router)\#neighbor <IP RY> remote-as <n°bgp RY>
```

RY:

```
R2(config)\#router bgp <n°>
R2(config-router)\#neighbor <IP RX> remote-as 100 <n°bgp RX>
```

Annonces réseaux (à faire sur les 2 routeurs)

```
RX(config)\#router bgp n°RX
RX(config-router)\#network <ip loopback> mask <mask>
```

Redistribution des Routes BGP dans OSPF sur un Routeur Cisco IOS

```
R1(config)\#router ospf 1
R1(config-router)\#redistribute bgp 65535 subnets
```

[https://www.mustbegeek.com/redistribute-bgp-route-into-ospf-in-cisco-ios-router/](https://www.mustbegeek.com/redistribute-bgp-route-into-ospf-in-cisco-ios-router/) [https://www.mustbegeek.com/redistribute-ospf-route-into-bgp-in-cisco-ios-router/](https://www.mustbegeek.com/redistribute-ospf-route-into-bgp-in-cisco-ios-router/)