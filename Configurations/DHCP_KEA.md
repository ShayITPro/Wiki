---
title: DHCP KEA
description: 
published: true
date: 2025-01-23T14:00:11.208Z
tags: 
editor: markdown
dateCreated: 2025-01-23T14:00:03.980Z
---

# Installation du serveur DHCP KEA

```bash
sudo apt-get update
sudo apt-get install kea-dhcp4-server
```



# Configuration du serveur DHCP KEA

## Configuration globale du serveur DHCP

Renommer le fichier de configuration par défaut

```bash
sudo mv /etc/kea/kea-dhcp4.conf /etc/kea/kea-dhcp4.conf.bkp
```

Créez et éditer le fichier de configuration 

```bash
sudo nano /etc/kea/kea-dhcp4.conf
```

```bash
{
 "Dhcp4": {
    // Interface réseau sur laquelle le service DHCP doit être en écoute
    "interfaces-config": {
        "interfaces": [ "<nom-interface>" ]
    },

    // Durée des baux DHCP (bail de 8 jours, renouvelable à partir de 4 jours)
    "valid-lifetime": 691200,
    "renew-timer": 345600,
    "rebind-timer": 604800,

    // Serveur DHCP principal sur ce réseau local
    "authoritative": true,

    // Configuration de la base des baux DHCP
    "lease-database": {
        "type": "memfile",
        "persist": true,
        "name": "/var/lib/kea/kea-leases4.csv",
        "lfc-interval": 3600
    }
    }
}
```

## Créer une étendue DHCP

Ajouter dans le fichier `/etc/kea/kea-dhcp4.conf`

```bash
"subnet4": [
        {
            "subnet": "<sous réseau>",
            "pools": [ { "pool": "<IP début d'étendue> - <IP fin d'étendue>" } ],
            "option-data": [
                {
                    "name": "domain-name-servers",
                    "data": "<adresse IP serveur DNS>"
                },
                {
                    "name": "domain-search",
                    "data": "<nom domaine>"
                },
                {
                    "name": "routers",
                    "data": "<ip-passerelle-par-défaut>"
                }
            ]
        }
    ]
```


Fichier complet : 

```bash
{
 "Dhcp4": {
    "interfaces-config": {
        "interfaces": "<nom-interface>s18" ]
    },
    "valid-lifetime": 691200,
    "renew-timer": 345600,
    "rebind-timer": 604800,

    "authoritative": true,

    "lease-database": {
        "type": "memfile",
        "persist": true,
        "name": "/var/lib/kea/kea-leases4.csv",
        "lfc-interval": 3600
    },
    "subnet4": [
        {
            "subnet": "<sous réseau>",
            "pools": [ { "pool": "<IP début d'étendue> - <IP fin d'étendue> " } ],
            "option-data": [
                {
                    "name": "domain-name-servers",
                    "data": "<adresse IP serveur DNS>"
                },
                {
                    "name": "domain-search",
                    "data": "<nom domaine>"
                },
                {
                    "name": "routers",
                    "data": "<ip-passerelle-par-défaut>"
                }
            ]
        }
    ]
    }
}
```

Enregistrer le fichier et relancer le service du serveur DHCP :

```bash
sudo systemctl restart kea-dhcp4-server.service
```

## Créer une réservation DHCP

>  Pour permettre de réserver une adresse IP pour l'associer à une adresse MAC

> Seul la machine avec l'adresse MAC correspondante qui pourra obtenir cette adresse IP.



Ajouter dans le fichier `/etc/kea/kea-dhcp4.conf`

```bash
"reservations": [
                    {
                        "hw-address": "<adresse MAC>",
                        "ip-address": "<IP à attribuer>",
                        "hostname": "<nom-machine>"
                    }
                ]
```

Enregistrer le fichier et relancer le service du serveur DHCP :

```bash
sudo systemctl restart kea-dhcp4-server.service
```

# Test de bon fonctionnement du DHCP

Dans le fichier `/etc/network/interfaces` de la machine client

```bash
auto <nom interface>
iface <nom interface> inet dhcp
```

Demander un bail dhcp 

```bash
dhclient <non interface> 
```