CREATE DATABASE clients;

USE clients;

CREATE TABLE clients(
  last_name VARCHAR(255),
  first_name VARCHAR(255),
  birthday DATE,
  postal_code VARCHAR(255)
);

INSERT INTO clients (last_name, first_name, birthday, postal_code) VALUES ("Le Naour", "Thomas", "2000-03-21","33000");
INSERT INTO clients (last_name, first_name, birthday, postal_code) VALUES ("Salles", "Sascha", "2000-03-21","24000");
INSERT INTO clients (last_name, first_name, birthday, postal_code) VALUES ("Test", "Test", "2000-03-21","33000");

SELECT first_name, postal_code FROM clients;