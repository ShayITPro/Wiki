#!/bin/bash

# Aller dans le bon dossier
cd "Administration-Linux" || { echo "Erreur : dossier Administration-Linux introuvable."; exit 1; }

# Créer les sous-dossiers
mkdir -p Commandes Fichiers Services Utilisateurs

# Déplacer les fichiers dans les bons dossiers
mv Commandes_base.md Commandes/
mv Commandes_VIM.md Commandes/

mv Consultation_recherche_fichiers.md Fichiers/
mv Dossier_systeme.md Fichiers/
mv Fichiers_systeme.md Fichiers/
mv Gestion_fichiers_repertoires.md Fichiers/

mv Gestion_processus.md Services/
mv Gestion_services.md Services/
mv Peripheriques_amovibles.md Services/

mv Droits_acces.md Utilisateurs/
mv Etc_group.md Utilisateurs/
mv Etc_passwd.md Utilisateurs/
mv Etc_shadow.md Utilisateurs/
mv Etc_sudoers.md Utilisateurs/
mv Utilisateurs_groupes.md Utilisateurs/

echo "Organisation terminée avec succès ! 🚀"
