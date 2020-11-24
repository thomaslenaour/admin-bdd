# Explication du Docker Compose

- Version 3.7 de docker compose
- On crée 2 containers basées sur une image `mariadb`: un master et un slave
- On définit une variable d'environnement sur chaque container correspondant au mot de passe root de l'utilisateur root de la database
- On défini différents Bind Mounts afin que le partage de fichiers/dossiers entre le container et la machine local soit possible (il faut au péalable avoir les dossiers de présents sur sa machine)

```yml
volumes:
  - ./master/data:/var/lib/mysql
  - ./backups:/backups
  - ./master/master.cnf:/etc/mysql/mariadb.conf.d/master.cnf
  - ./scripts:/scripts
```

- Enfin on associe un network avec un bridge pour que ces containers puissent communiquer entre eux
