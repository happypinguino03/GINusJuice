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
INSERT INTO utente (email, nome, cognome, password_hash, ruolo) VALUES
('mario.rossi@example.com', 'Mario', 'Rossi', 'cane', 0),
('anna.bianchi@example.com', 'Anna', 'Bianchi', 'pollo', 0),
('luca.verdi@example.com', 'Luca', 'Verdi', 'ramo', 0),
('giulia.neri@example.com', 'Giulia', 'Neri', 'gatto', 0),
('francesco.gialli@example.com', 'Francesco', 'Gialli', 'topo',0 ),
('paola.marra@example.com', 'Paola', 'Marra', 'leone', 0),
('davide.azzurri@example.com', 'Davide', 'Azzurri', 'tigre', 0),
('valentina.rosa@example.com', 'Valentina', 'Rosa', 'orso', 0),
('giovanni.blu@example.com', 'Giovanni', 'Blu', 'lupo', 0),
('elisabetta.viola@example.com', 'Elisabetta', 'Viola', 'volpe', 0),
("RusselCrowel@libero.it","Russel","Crowel","imperoRomano",1);
