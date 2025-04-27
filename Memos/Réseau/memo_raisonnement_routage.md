# 🧠 Fiche Mémo – Raisonnement Réseau : Communication entre machines

## 🎯 Objectif : Savoir si deux machines peuvent communiquer

---

## ✅ Étapes à vérifier

### 1. Sont-elles dans le même sous-réseau ?

- Compare les adresses IP + masque
- Même sous-réseau → communication directe possible
- Réseaux différents → nécessite un routeur

### 2. Ont-elles une passerelle correcte ?

- La passerelle (default gateway) doit être dans le même réseau que la machine
- C’est vers elle que la machine envoie les paquets destinés à l’extérieur

### 3. Existe-t-il un routeur entre les réseaux ?

- Le routeur doit avoir une interface dans chaque réseau
- Il joue le rôle d’intermédiaire entre les réseaux

### 4. Le routage est-il activé et autorisé ?

- Le routeur doit avoir le routage IP activé
- Les pare-feu doivent autoriser les flux (ex : ICMP, TCP/UDP selon les services)

---

## 🧪 Exemple typique :

```
[ PC1 ] IP: 192.168.1.10/24
Passerelle : 192.168.1.1

[ PC2 ] IP: 192.168.2.10/24
Passerelle : 192.168.2.1

[ Routeur ]
- Interface 1 : 192.168.1.1
- Interface 2 : 192.168.2.1
```

➡️ PC1 et PC2 peuvent communiquer grâce au routeur

---

## 🔁 À garder en tête :

> Une machine isolée dans son réseau ne peut pas parler à l’extérieur **sans passerelle**.  
> Deux réseaux séparés ne peuvent pas se parler **sans routeur**.  
> Le routeur ne peut pas router si le **routage IP est désactivé** ou bloqué.
