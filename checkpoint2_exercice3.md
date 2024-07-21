# Q.3.1
Quel est le matériel réseau A ? Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?

**Le matériel réseau A** est un commutateur (switch). Son rôle est de connecter les différents ordinateurs (PC1, PC2, PC3, PC4, et PC5) afin de permettre la communication entre eux au sein du même réseau local (LAN).

# Q.3.2
Quel est le matériel réseau B ? Quel est son rôle pour le réseau 10.10.0.0/16 ?

**Le matériel réseau B** est un routeur. Son rôle est de gérer le routage des paquets entre les différents sous-réseaux. Pour le réseau 10.10.0.0/16, il agit comme une passerelle par défaut pour les ordinateurs, permettant ainsi la communication avec d'autres réseaux externes via le routeur R2.

# Q.3.3
Que signifie f0/0 et g1/0 sur l’élément B ?

Les désignations f0/0 et g1/0 font référence aux interfaces réseau sur le routeur B :

- **f0/0** : Interface Fast Ethernet 0/0.
- **g1/0** : Interface Gigabit Ethernet 1/0.

# Q.3.4
Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?

Le /16 dans l'adresse IP de l'ordinateur PC2 (10.11.80.2/16) représente la longueur du préfixe de sous-réseau, indiquant que les 16 premiers bits de l'adresse IP sont utilisés pour identifier le réseau. Cela signifie que le masque de sous-réseau est 255.255.0.0.

# Q.3.5
Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?

L'adresse 10.10.255.254 représente la passerelle par défaut configurée pour l'ordinateur PC2. C'est l'adresse IP de l'interface du routeur B (f0/0) dans le réseau 10.10.0.0/16.

# Q.3.6
Pour les ordinateurs PC1, PC2, et PC5 donne :

**PC1 (10.10.4.1/16)** :
- Adresse de réseau : 10.10.0.0
- Première adresse disponible : 10.10.0.1
- Dernière adresse disponible : 10.10.255.254
- Adresse de diffusion : 10.10.255.255

**PC2 (10.11.80.2/16)** :
- Adresse de réseau : 10.11.0.0
- Première adresse disponible : 10.11.0.1
- Dernière adresse disponible : 10.11.255.254
- Adresse de diffusion : 10.11.255.255

**PC5 (10.10.4.7/15)** :
- Adresse de réseau : 10.10.0.0
- Première adresse disponible : 10.10.0.1
- Dernière adresse disponible : 10.11.255.254
- Adresse de diffusion : 10.11.255.255

# Q.3.7
En t'aidant des informations que tu as fournies à la question 3.6, et à l'aide de tes connaissances, indique parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.

- **PC1, PC3, et PC4** peuvent communiquer entre eux car ils partagent le même sous-réseau 10.10.0.0/16.
- **PC2** est dans un sous-réseau différent (10.11.0.0/16) et ne pourra pas communiquer directement avec les autres PC sans passer par un routeur.
- **PC5** a une adresse dans un sous-réseau /15 (10.10.0.0/15) couvrant à la fois 10.10.0.0/16 et 10.11.0.0/16, ce qui signifie qu'il peut communiquer avec tous les autres PC directement.

# Q.3.8
De même, indique ceux qui vont pouvoir atteindre le réseau 172.16.5.0/24.

Tous les ordinateurs pourront atteindre le réseau 172.16.5.0/24 en utilisant le routage via les routeurs B et R2, à condition que les routes IP soient correctement configurées.

# Q.3.9
Quelle incidence y a-t-il pour les ordinateurs PC2 et PC3 si on intervertit leurs ports de connexion sur le matériel A ?

Si on intervertit les ports de connexion de PC2 et PC3 sur le commutateur A :
- Les adresses IP des ordinateurs resteront les mêmes.
- PC2 et PC3 continueront à fonctionner normalement et pourront toujours communiquer avec les mêmes appareils qu'avant. Cependant, la disposition physique sur le commutateur sera différente.

# Q.3.10
On souhaite mettre la configuration IP des ordinateurs en dynamique. Quelles sont les modifications possibles ?

Pour passer à une configuration IP dynamique :
- Configurer un serveur DHCP sur le réseau.
- Configurer les ordinateurs pour qu'ils obtiennent leur adresse IP automatiquement via DHCP au lieu d'utiliser des adresses IP statiques.

# Q.3.11
Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ? Déduis-en le nom du matériel.

**Adresse MAC source** : 00:50:79:66:68:00  
**Nom du matériel** : PC1 (selon les informations fournies)

# Q.3.12
Est-ce que la communication enregistrée dans cette capture a réussi ? Si oui, indique entre quels matériels, si non indique pourquoi cela n'a pas fonctionné.

**Communication réussie** : Oui  
**Matériels impliqués** : PC1 et le matériel répondant

# Q.3.13
Dans cette capture, à quel matériel correspond le request et le reply ? Donne le nom, l'adresse IP, et l'adresse mac de chaque matériel.

**Request** :  
Nom : PC1, Adresse IP : 10.10.4.1, Adresse MAC : 00:50:79:66:68:00

**Reply** :  
Nom : PC5, Adresse IP : 10.10.4.7, Adresse MAC : 00:50:79:66:68:12

# Q.3.14
Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?

**Protocole** : ARP (Address Resolution Protocol)  
**Rôle** : Résolution d'adresse IP en adresse MAC

# Q.3.15
Quels ont été les rôles des matériels A et B dans cette communication ?

**Matériel A** : Switch, achemine les paquets entre les PC.  
**Matériel B** : Routeur, achemine les paquets entre différents sous-réseaux.

# Q.3.16
Dans cette trame, qui initialise la communication ? Donne l'adresse IP ainsi que le nom du matériel.

**Initialisateur** : Nom : PC2, Adresse IP : 10.11.80.2

# Q.3.17
Quel est le protocole encapsulé ? Quel est son rôle ?

**Protocole** : ICMP (Internet Control Message Protocol)  
**Rôle** : Utilisé pour envoyer des messages de contrôle, comme les requêtes et réponses de ping.

# Q.3.18
Est-ce que cette communication a réussi ? Si oui, indique entre quels matériels, si non indique pourquoi cela n'a pas fonctionné.

**Communication réussie** : Oui  
**Matériels impliqués** : PC2 et PC4

# Q.3.19
Explique la ligne du paquet N° 2

La ligne du paquet N° 2 montre une requête ICMP envoyée de PC2 (10.11.80.2) à PC4 (10.10.4.2).

# Q.3.21
Dans cette trame, donne les noms et les adresses IP des matériels sources et destination.

**Source** : Nom : PC3, Adresse IP : 10.10.80.3  
**Destination** : Nom : PC1, Adresse IP : 10.10.4.1

# Q.3.22
Quelles sont les adresses mac source et destination ? Qu'en déduis-tu ?

**Adresse MAC source** : 00:50:79:66:66:F3  
**Adresse MAC destination** : 00:50:79:66:68:00  
**Déduction** : La communication se fait entre PC3 et PC1

# Q.3.23
À quel emplacement du réseau a été enregistré cette communication ?

**Emplacement** : Très probablement sur le switch (Matériel A) ou sur un des routeurs (Matériel B).
