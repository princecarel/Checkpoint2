### Q.1.1
ip config serveur
![1 0](https://github.com/user-attachments/assets/e34bf045-8b12-4462-8d6d-3eac4a74dd6b)

ipconfig client
![1 1](https://github.com/user-attachments/assets/05979812-832b-4f95-9314-c83be894905c)


ping vers client

![1 2](https://github.com/user-attachments/assets/d18c9915-3c36-4e6c-827b-51f12994d05f)

Le serveur et client ne communiquent pas,car le ping ne fonctionne pas. Il va falloir modifier IP client en 172.16.10.11 pour être dans même sous réseaux

![1 6](https://github.com/user-attachments/assets/fc8c2f33-e2be-4984-aaa7-ec03f49c4a89)

![1 5](https://github.com/user-attachments/assets/03516fc4-e40d-4f22-9850-f911fc0fde09)




### Q.1.2
ping client vers serveur et ping serveur vers client

![image](https://github.com/user-attachments/assets/90b7aaec-f9a6-4fbc-9732-565baa3c516d)

![image](https://github.com/user-attachments/assets/a67c8904-6c4c-4ab6-b9bd-d0f0b7bed96f)


### Q.1.3
Désactivation IPV6 sur client

![image](https://github.com/user-attachments/assets/6202b72f-6556-487c-9334-63b8f9c38729)

ping ne fonctionne pas car les paquets ICMP envoyés utilisent IPV4 et IPV6 pour vérifier la connectivité entre les machines

![image](https://github.com/user-attachments/assets/8abba46b-33ec-4cb6-b63d-d308a9bc369d)

Taper Ping -4 pour envoyer les paquets ICMP pour utiliser que IPV4 pour vérifier la connectivité entre machines

![image](https://github.com/user-attachments/assets/42453357-c6c9-4bc3-8fcb-71e2c173bf9e)

### Q.1.4
configuration DHCP serveur
![image](https://github.com/user-attachments/assets/f35cb889-9db6-482b-9f3f-ed9bb484b1ec)

![image](https://github.com/user-attachments/assets/5d6dada0-6d31-4f5c-a5e3-144e132a1aba)

![image](https://github.com/user-attachments/assets/0720f3ea-75bc-4fde-a91c-aecf4d55264b)

![image](https://github.com/user-attachments/assets/7cb165b1-6fde-44c5-80e8-15ea40b2e446)

![image](https://github.com/user-attachments/assets/a05e0ee5-943d-467d-a091-9e89e34be439)

![image](https://github.com/user-attachments/assets/5e7de4ae-9112-4088-ae6a-6d9f4bdb4d22)

![image](https://github.com/user-attachments/assets/2c4711b8-ebb6-4033-9242-e5ac9259d88d)

![image](https://github.com/user-attachments/assets/39f140dd-24d9-4003-82b7-6d37e06bc6ae)

![image](https://github.com/user-attachments/assets/f96e267e-a663-4199-91b0-96c7827f54dc)

![image](https://github.com/user-attachments/assets/9a68bdd8-57b3-4984-9030-a4f572060213)

![image](https://github.com/user-attachments/assets/fe349533-a582-46c9-8e9d-3b4508f36679)

![image](https://github.com/user-attachments/assets/dd6b6339-075f-45c3-bcd7-c1aa0a783992)

![image](https://github.com/user-attachments/assets/9520b40f-52d5-4820-8e37-932ae0d925f5)

![image](https://github.com/user-attachments/assets/55550079-6e38-4c5c-8479-4f9550b7d1b9)

![image](https://github.com/user-attachments/assets/bc78839e-4e53-49ed-b44a-03385bc7aa79)

![image](https://github.com/user-attachments/assets/e303e487-2bb9-4e56-bf7e-8c54aec2ca86)

![image](https://github.com/user-attachments/assets/0386b39d-251e-4a57-909b-734d6c2f602c)

![image](https://github.com/user-attachments/assets/302038e5-8af3-486f-bccf-fc01ec39b7b4)

configuration client
Aller dans les parametres et Configurez l'interface réseau pour obtenir une adresse IP automatiquement (DHCP).

![image](https://github.com/user-attachments/assets/19ccd208-3223-4b12-87d1-9b736b56b72b)



### Q.1.5

![image](https://github.com/user-attachments/assets/632e93d2-75c3-41cb-8722-d9af3946c674)

 Le client ne récupère pas la première adresse disponible car le serveur DHCP attribue les adresses en fonction de plusieurs critères, y compris l'historique d'adresse MAC et la base de données DHCP.

### Q.1.6
![image](https://github.com/user-attachments/assets/242ee096-7fa3-4bd5-980a-f4b34f528a9d)

![image](https://github.com/user-attachments/assets/fa50cf0a-029f-442e-a04e-f03c0300cfb9)

![image](https://github.com/user-attachments/assets/8f7de1e6-eed1-42a3-bc82-097f49e2b35f)


### Q.1.7
L'intérêt de passer en IPv6 inclut :

Une plus grande plage d'adresses IP, évitant les problèmes d'épuisement d'IPv4.

Améliorations de la gestion du réseau et de la sécurité.

Simplification de l'administration des adresses IP avec des adresses auto-configurées.

### Q.1.8
Non, le serveur DHCP n'est pas obsolète. Il peut être configuré pour gérer les adresses IPv6 avec DHCPv6.


