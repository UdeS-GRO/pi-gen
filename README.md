# S3 GRO - pi-gen 

Lien vers la dernière version de l'image prête à être copiée sur votre carte SD :

[S3GRO 0.2.1](https://github.com/UdeS-GRO/pi-gen/releases/tag/2018-05-09-s3gro-0.2.1)


## Guide d'installation de l'image

* Télécharger la dernière version de l'image [S3GRO 0.2.1](https://github.com/UdeS-GRO/pi-gen/releases/tag/2018-05-09-s3gro-0.2.1)

* Télécharger et installer le logiciel [balenaEtcher](https://www.balena.io/etcher/)

* Suivre les instructions du logiciel*

_*Attention à ne pas reformater la carte SD lorsque le logiciel à fini l'installation de l'image sur la carte SD._



## Guide d'utilisation du pi avec câble Ethernet

* Télécharger et installer le logiciel [realVNC viewer](https://www.realvnc.com/en/connect/download/viewer/)

* Brancher le câble Ethernet entre votre pi et votre poste de travail et alimenter le raspberry pi

* Les informations nécessaires pour établir la connexion avec realVNC viewer sont par défaut* : 

```
IP adress : 192.168.100.100 
Username : pi
password : raspberry
```
_*Un guide pour modifier le nom d'utilisateur sera ajouté sous peu_



### Modifier la résolution

Pour modifier la résolution du raspberry pi il faut suivre l'arborescence suivante : 
```
Menu -> Preferences -> Raspberry Pi Configuration -> Set Resolution
```


### Description

L'outil *pi-gen* est utilisé pour générer automatiquement des images Raspbian 
pour RaspberryPi.
Dans le cadre de la session 3 de génie robotique, nous avons préparé
configuration utile pour votre projet. 
Une copie pré-compilée de l'image est disponible dans la section "Release".

Pour plus d'information sur le processus de génération d'images, vous pouvez
lire la documentation officielle [ici](README-pigen.md).
