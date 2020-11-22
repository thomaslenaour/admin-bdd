# Rendu Thomas LE NAOUR

* Dans un premier temps, j'ai récupéré le fichier docker-compose fournis dans l'énoncé.
* Ensuite j'ai exécuté la commande `docker-compose build`
* Puis `docker-compose up -d` pour lancer les container en mode detach
* Ensuite on se connecte dans un premier temps au container mysql
* `docker-compose exec mysql sh` puis `mysql -u root -p`
* On crée une DB `CREATE DATABASE thomas;` puis une table `CREATE TABLE thomas.infos (name VARCHAR(255));` puis on insère de la data `INSERT INTO thomas.infos VALUES("thomas lol");`
* Ensuite on fait un dump `mysqldump -u root -p thomas > /backups/dump.sql`
---
* Ensuite on se connecte au container mariadb `docker-compose exec maria sh`, on se connecte `mariadb -u root -p` et on crée la DB `CREATE DATABASE thomas;`
* On importe ensuite la DB `mariadb -u root -p thomas < /backups/dump.sql`
* On vérifie en se reconnectant et on regarde si on obtient bien la ligne quand on sélectionne la table