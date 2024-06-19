CREATE DATABASE  IF NOT EXISTS `tsw`; 
USE `tsw`;

DROP TABLE IF EXISTS utente;

CREATE TABLE IF NOT EXISTS utente (
    email VARCHAR(256) NOT NULL UNIQUE,
    nome VARCHAR(50) NOT NULL,
    cognome VARCHAR(50) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    ruolo INT DEFOULT 0,
    PRIMARY KEY(email)
  
);
