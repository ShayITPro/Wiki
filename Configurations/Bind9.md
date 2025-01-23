# Installation de bind9

```bash
sudo apt-get update
sudo apt-get install bind9 dnsutils
```

# Configuration globale de Bind

```bash
sudo nano /etc/bind/named.conf.options
```

```bash
options {
        // Répertoire de travail de Bind
        directory "/var/cache/bind";

         // Mode récursif, pour résoudre les noms externes 
        recursion yes;
        allow-query { 192.168.1.0/24; };
        listen-on { <adresse-IP>; };
        listen-on-v6 { none; };

        // Redirecteurs DNS (résolveurs externes)        
        forwarders {
                1.1.1.1;
                9.9.9.9;
        };

        dnssec-validation no;
};
```

Vérifier la configuration 

```
sudo named-checkconf
```

# Créer une nouvelle zone DNS

## Déclarer la zone DNS

```bash
sudo nano /etc/bind/named.conf.local
```

```bash
zone <nom-zone> {
    type master;
    file "/etc/bind/<db.nom-zone>";
    allow-update { none; };
};
```

## Configurer la zone DNS

Copier le fichier "**db.local**" pour l'utiliser comme base pour la nouvelle zone

```bash
sudo cp /etc/bind/db.local /etc/bind/<db.nom-zone>
```

```bash
; BIND data file for <nom-zone>
$TTL    604800
@       IN      SOA     <nom-machine.nom-zone>. admin.<nom-zone>. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; Définition des serveurs DNS
@               IN      NS      <nom-machine.nom-zone>.
<nom-machine>     IN      A       <Adresse-IP>
```

Tester la syntaxe 

```bash
named-checkzone <nom.zone> /etc/bind/<db.nom-zone> 
```

# Démarrage de Bind9

```bash
sudo systemctl start bind9
sudo systemctl enable named.service
sudo systemctl status bind9
```

# # Tester la résolution de noms Bind

```bash
sudo nano /etc/resolv.conf
```

```bash
nameserver <Adresse-IP>
```

```bash
nslookup <nom-machine.nom-zone>
```

# # Créer une zone de recherche inversée

```bash
sudo nano /etc/bind/named.conf.local
```

```bash
zone 1.168.192.in-addr.arpa {
    type master;
    file "/etc/bind/db.reverse.<nom-zone>";
    allow-update { none; };
};
```

Créer le fichier de la zone inverse 

```
sudo nano /etc/bind/db.reverse.nom-zone
```

```bash
; BIND data file for 1.168.192.in-addr.arpa
$TTL  604800
@     IN SOA <nom-machine.nom-zone>. <admin.nom-zone>. (
 2 ; Serial
 604800 ; Refresh
 86400 ; Retry
 2419200 ; Expire
 604800 ) ; Negative Cache TTL
;
; Définition des serveurs DNS
@ IN NS <nom-machine.nom-zone>.
<dernier oct adresse IP> IN PTR <nom-machine.nom-zone>
```

Vérifier la syntaxte 

```bash
named-checkzone 1.168.192.in-addr.arpa /etc/bind/db.reverse.local 
```

Relancer Bind9

```bash
sudo systemctl restart bind9
```

Tester la résolution inversée

```bash
nslookup <adresse-IP>
```

# Tester sur la machine machine client

## Modifier les paramètres DNS

```bash
sudo nano /etc/resolv.conf
```

```bash
nameserver <adresse IP serveur DNS>
```
