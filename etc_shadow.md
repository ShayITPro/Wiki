---
title:  Fichier /etc/shadow
description: Gestion Sécurisée des Mots de Passe
published: true
date: 2024-12-07T11:37:15.504Z
tags: 
editor: markdown
dateCreated: 2024-12-07T11:37:07.959Z
---

# Fichier /etc/shadow : Gestion Sécurisée des Mots de Passe

## Rôle du Fichier

Le fichier `/etc/shadow` assure le stockage sécurisé des informations d'authentification des utilisateurs.

## Structure Détaillée

### Format d'une Entrée
```bash
nom_utilisateur:mot_de_passe_crypté:dernière_modif:min:max:avertissement:période_inactivité:expiration:flag
```

### Composants de l'Entrée

1. **Nom d'Utilisateur**
   - Identifiant de connexion unique

2. **Mot de Passe Crypté**
   - Représentation chiffrée du mot de passe
   - États spéciaux :
     * Champ vide : Pas de mot de passe
     * Contient "!" : Compte verrouillé

3. **Dernière Modification**
   - Nombre de jours depuis le 1er janvier 1970
   - Date de la dernière modification du mot de passe

4. **Durée Minimale de Mot de Passe**
   - Délai minimum avant de pouvoir changer le mot de passe

5. **Durée Maximale de Mot de Passe**
   - Période de validité maximale du mot de passe
   - Impose un changement périodique

6. **Avertissement d'Expiration**
   - Délai avant l'expiration où l'utilisateur est prévenu

7. **Période d'Inactivité**
   - Durée après expiration pendant laquelle le compte reste actif

8. **Date d'Expiration du Compte**
   - Date de désactivation du compte
   - Calculée depuis le 1er janvier 1970

9. **Flag**
   - Champ réservé pour des utilisations futures

## Sécurité et Bonnes Pratiques

- Accès restreint au fichier (permissions root uniquement)
- Utilisation de hachages forts (comme SHA-512)
- Mise en place de politiques de mot de passe robustes