/* En tant que root */

CREATE DATABASE IF NOT EXISTS teams;

CREATE TABLE IF NOT EXISTS teams.games (
	match_date DATE,
	victory BOOLEAN,
	observations TEXT
);

CREATE TABLE IF NOT EXISTS teams.players (
	firstname VARCHAR(255),
	lastname VARCHAR(255),
	start_date DATE
);

CREATE USER IF NOT EXISTS 'manager'@'localhost' IDENTIFIED BY 'manager_password';
GRANT ALL ON teams.* TO 'manager'@'localhost';

CREATE USER IF NOT EXISTS 'recruiter'@'localhost' IDENTIFIED BY 'recruiter_password';
GRANT SELECT, INSERT, UPDATE ON teams.* TO 'recruiter'@'localhost';

FLUSH PRIVILEGES;