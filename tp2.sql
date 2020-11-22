/* En tant que root */

CREATE DATABASE IF NOT EXISTS events;
CREATE TABLE public_event (
	even_date DATE,
	event_name VARCHAR(255),
	event_age_requirement INT
);
CREATE TABLE private_event LIKE public_event;
CREATE USER 'event_manager'@'localhost' IDENTIFIED BY 'password';
GRANT ALL ON events.* TO 'event_manager'@'localhost';
CREATE USER 'event_supervisor'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON events.public_event TO 'event_supervisor'@'localhost';

FLUSH PRIVILEGES;

/* En tant que event_manager */

INSERT INTO public_event VALUES("2020-09-28", "Cours de Flutter", 16), ("2020-09-30", "Cours de SQL", 15);
INSERT INTO public_event VALUES("2020-09-28", "Cours de Flutter", 16), ("2020-09-30", "Cours de SQL", 15);

/* En tant que event_supervisor */

SELECT * FROM public_event; /* On a accès aux données */
SELECT * FROM private_event; /* On obtient une erreur */
/* Query 1 ERROR: SELECT command denied to user 'event_supervisor'@'localhost' for table 'private_event' */

/* En tant que root */

DROP USER 'event_supervisor'@'localhost'
