# Explication du Dockerfile

- On commence dans un premier temps par importer l'image `mysql`
- On crée une variable d'environnement `MYSQL_ROOT_PASSWORD`qui sera une variable d'environnement par défaut pour notre utilisateur `root`
- Ensuite, on exécute les commandes pour mettre à jour les paquets et installer `vim` et `cron` qui vont nous servir pour ce TP.
- On exécute une commande qui va nous permettre d'écrire une ligne de confguration dans notre fichier `/var/spool/cron/crontabs/root` afin de configurer la tâche cron
- On installe maintenant `logrotate`
- On crée un dossier `backups` ainsi qu'une configuration pour `logrotate` qui va nous permettre de garder les 5 derniers dump de notre database
