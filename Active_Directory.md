---
title: Active Directory
description: 
published: true
date: 2024-12-10T20:49:57.936Z
tags: 
editor: markdown
dateCreated: 2024-12-08T14:06:15.068Z
---

LDAP (Lightweight Directory Access Protocol)  = un protocole logiciel permettant à quiconque de localiser des données sur des organisations, des personnes et d'autres ressources telles que des fichiers et des périphériques dans un réseau, que ce soit sur l'Internet public ou sur un intranet d'entreprise.


- Forêt =  ensemble de domaines partageant la même structure, données et fonctionnalités
	- Domaine = ensemble de serveurs partageant une structure logique, des données et des fonctionnalités identiques
		- OU (*Organisational Units*)  = division logique regroupant les objets
			- Objets = utilisateurs, imprimantes, ordinateurs,etc.
			
# Rôles des contrôleurs de domaine

Serveur hébergeant l'Active Directory = contrôleur de domaine
	Contrôleur de domaine hébergeant les services d’Active Directory ->  Active Directory Domain Services (AD-DS)

Rôles de l'AD-DS : 
- gestion du stockage des données d’annuaire,
- gestion de l’authentification et la réplication si plusieurs contrôleurs de domaines présents

Rôles d'opérations à maître unique flottant ou rôles FSMO (*Flexible Single Master Operation*)
- Rôle de Maître de schéma (*Schema Master*) :
	- Contrôle les modifications apportées au schéma de données Active Directory.
- Rôle de Maître d'attribution de noms de domaine (*Domain Naming Master*) :
	- Contrôle l'ajout et la suppression des noms de domaines dans une forêt.
- Rôle d’Émulateur de Contrôleur de Domaine Principal (*Primary Domain Controller Emulator*) :
	- Supporte les clients NT4;
	- Fournit   l'horloge de référence du domaine via le protocole NTP.
- Rôle de Maître RID (*Registered ID Master*) :
	- Fournit des tranches d'identifiants uniques aux autres contrôleurs de domaine.
		- RID : identifiant unique relatif à un domaine, fait parti du SID (*Security Identifier*)
- Rôle de Maître d'infrastructure (*Infrastructure Master*)
	- Synchronise les changements effectués sur les objets au sein des différents domaines, en gérant les réplications.

# Objets de l’annuaire

- OU -> Organiser et structurer l'annuaire
- Groupes -> Simplifier la gestion des ressources en centralisant des objets selon des critères statiques ou dynamiques 
- Ressources -> Utilisateur, ordinateurs, imprimantes, etc.

## Types de groupes

Groupes de type domaine local : Objets se trouvant au sein d’un même domaine ;

Groupe de type global : Objets se trouvant dans des domaines disposant d’une relation d’approbation 

Groupe de type universel : Objets se trouvant dans toute la forêt


### Stratégie de groupe (GPO)

GPO peut être liée à un domaine, un site ou une unité organisationnelle d’un AD

Par défaut, application d'une GPO à tous les objets authentifiés d’une UO





