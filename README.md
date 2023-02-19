# AOC - Basic Computer Vision Project

Ceci est la notice d'instruction du projet d'AOC : Basic Computer Vision Project. Ce projet a été réalisé par SOLCOURT Antoine et VIDAL Antoine dans le cadre du Master 2 Calcul Haute Performance et Simulation (CHPS) de l'UVSQ.

## Sommaire

1. Présentation du projet
2. Structure du projet
3. Installation du programme
4. Utilisation du programme
5. Crédits

## Présentation du projet

L'objectif est, à partir d'une vidéo, de pouvoir détecter les contours de cette vidéo (dans l'optique de pouvoir y effectuer des traitements par la suite). Plusieurs méthodes existent pour la détection de contours : la méthode choisie est le filtre de *Sobel*. Le but est de produire le code le plus performant utilisant ce filtre.

## Structure du projet

* `arch/` : contient les caractéristiques de l'environnement d'exécution (processeur, version du noyau...)

* `data_runs_sobel/` : contient les performances du programme (nombre de cycles...). *gnuplot* est ensuite utilisé pour réaliser des graphiques permettant de comparer les résultats des différentes versions.

* `in/` : contient la vidéo source sur laquelle nous essayons de détecter les contours (versement de thé sur une tasse de thé).

* `maqao/` : contient les rapports *Maqao* nous permettant d'avoir avec détail les performances, le code assembleur... de notre code source.

* `sout/` : contient les vidéos de sortie avec les contours en blanc et le fond en noir.

## Prise en main du programme

### Version automatique

Il suffit d'exécuter `./run_sobel.sh`. Ce script va traiter toutes les versions avec toutes les optimisations possibles puis va utiliser *gnuplot* pour afficher les résultats sous forme de graphiques. 

Si l'on souhaite traiter uniquement une seule version ou une certaine optimisation, il suffit d'éditer le fichier `run_sobel.sh` avec n'importe quel éditeur de texte et de modifier les lignes `for opt in "O1" "O2" "O3" "Ofast"` et `for variant in sob_baseline sobel_v1 sobel_v2 sobel_v3`.

### Version manuelle

#### Compilation

Il est nécessaire d'avoir le compilateur `gcc` avec la librairie `OpenMP`. La compilation se fait ensuite à l'aide d'un `Makefile`. Il suffit donc de taper `make` puis la version de son choix :

* `sob_baseline` : la version de base non optimisée
* `sobel_v1` : version de base avec des options de compilation ajoutées
* `sobel_v2` : modification et optimisation du code source au niveau du filtre de *Sobel*
* `sobel_v3` : parallélisation et réduction des entrées / sorties

Chaque nouvelle version cumule les modifications des versions précédentes. L'exécutable produit se nomme toujours `sobel`.

#### Exécution

##### Convertir la vidéo du format mp4 au format binaire

Une fois l'exécutable obtenu, il est nécessaire de tout d'abord convertir la vidéo au format binaire pour pouvoir détecter ses contours. Ceci se fait à l'aide de *ffmpeg* avec la commande suivante : 

`./cvt_vid.sh v2r in/input.mp4 in/input.raw >> /dev/null 2>> /dev/null`. 

##### Application du filtre de *Sobel*

La commande suivante permet de lancer le filtre de *Sobel* sur la vidéo au format binaire :

`./sobel in/input.raw sout/output.raw | cut -d';' -f1,3 > data_runs_sobel/Ofast/data/sobel_v3`

Ici les résultats sont stockés dans le fichier `data_runs_sobel/Ofast/data/sobel_v3` mais il est tout à fait possible de changer la destination et le nom de fichier. La vidéo filtrée se trouve dans le fichier `sout/output.raw`

##### Convertir la vidéo du format binaire au format mp4

La conversion de la vidéo au format binaire (après avoir appliqué le filtre de *Sobel* et ici stockée dans `sout/output.raw`) vers le format .mp4 se fait avec la commande suivante : 

`./cvt_vid.sh r2v sout/output.raw sout/output_sobel_v3.mp4 >> data_runs_sobel/logs/cvt.log 2>> data_runs_sobel/logs/cvt_err.log`

Il est également possible ici de remplacer `output_sobel_v3.mp4` par le nom de son choix (par exemple `output_sobel_v2.mp4` pour la version 2).


## Scripts utiles

Divers scripts ont été ajoutés pour faciliter l'utilisation du programme :

* `get_arch.sh` : script créant le dossier `arch/` et contient diverses informations sur l'environnement d'exécution : la version du noyau, la version du compilateur `gcc`, la version de `ldd` (pour les bibliothèques partagées), des informations sur le processeur comme la taille des caches ou les flags (jeux d'instructions supportés...).

* `get_report_maqao.sh` : script permettant de créer les rapports *Maqao* en fournissant simplement la version qui doit être analysée, par exemple `./get_report_maqao v2`. Ce script suppose que les fichiers `in/input.raw` et `sout/output.raw` sont déjà présents (obtenus avec *ffmpeg*).

## Crédits

### Auteurs 

* SOLCOURT Antoine et VIDAL Antoine : réalisation du projet
* IBNAMAR Mohammed-Salah : encadrant et apport des connaissances et ressources sur les vidéos et le filtre de *Sobel*

### Outils

* compilateur `gcc` avec la librairie `OpenMP`
* *Gnuplot* pour les graphiques
* *ffmpeg* pour la conversion des vidéos
* *Godbolt* pour l'analyse du code assembleur
* *Maqao* pour l'obtention des rapports de performances
* *Visual Studio Code* et *VIM* pour l'édition de texte
* *Git* et *Github* pour le versioning et l'hébergement des fichiers
* *Overleaf* (et donc LaTeX) pour la rédaction du rapport
