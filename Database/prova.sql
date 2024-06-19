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
CREATE TABLE IF NOT EXISTS prodotto (
    prodotto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descrizione varchar(1024),
    prezzo double  NOT NULL,
    iva enum('22','4','5'),
    quantità INT NOT NULL,
   );
CREATE TABLE IF NOT EXISTS ACQUISTA (
    prodotto_id INT NOT NULL,
    email varchar(256) NOT NULL,
     FOREIGN KEY (email) REFERENCES utente(email),
     FOREIGN KEY (prodotto_id) REFERENCES utente(prodotto_id),
    PRIMARY KEY( prodotto_id ,email)
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

INSERT INTO prodotto (nome, descrizione, prezzo, iva, quantità) VALUES
('Vodka Absolut', 'Ingredienti: Acqua, Alcool, Grano. Allergen: Nessuno.', 20.99, '22', 50),
('Whiskey Jack Daniels', 'Ingredienti: Alcool, Mais, Segale, Orzo. Allergen: Nessuno.', 35.50, '22', 30),
('Rum Bacardi', 'Ingredienti: Acqua, Alcool, Melassa. Allergen: Nessuno.', 25.75, '22', 40),
('Gin Bombay Sapphire', 'Ingredienti: Acqua, Alcool, Bacche di Ginepro. Allergen: Nessuno.', 28.99, '22', 20),
('Tequila Jose Cuervo', 'Ingredienti: Alcool, Agave. Allergen: Nessuno.', 29.99, '22', 25),
('Margarita Tropical', 'Ingredienti: Tequila, Triple Sec, Succo di Lime, Sale. Emotions: Freschezza, Energia, Gioia.', 8.50, '22', 100),
('Cosmopolitan Rosé', 'Ingredienti: Vodka, Triple Sec, Succo di Mirtillo, Succo di Lime. Emotions: Eleganza, Raffinatezza, Semplicità.', 9.00, '22', 100),
('Mojito di Mezzanotte', 'Ingredienti: Rum, Succo di Lime, Menta, Soda. Emotions: Relax, Vitalità, Freschezza.', 7.50, '22', 120),
('Negroni Imperiale', 'Ingredienti: Gin, Vermouth Rosso, Campari. Emotions: Intensità, Complessità, Tradizione.', 9.50, '22', 80),
('Pina Colada Paradiso', 'Ingredienti: Rum, Latte di Cocco, Succo di Ananas. Emotions: Dolcezza, Esotismo, Relax.', 8.00, '22', 90),
('Bicchiere da Cocktail', 'Utilizzo: Ideale per servire cocktail come Martini, Margarita.', 5.50, '22', 200),
('Shaker in Acciaio Inox', 'Utilizzo: Per mescolare e raffreddare gli ingredienti dei cocktail.', 15.00, '22', 150),
('Misurino Jigger', 'Utilizzo: Per misurare con precisione gli ingredienti liquidi dei cocktail.', 7.00, '22', 150),
('Cucchiaio da Bar', 'Utilizzo: Per mescolare gli ingredienti nel bicchiere e versare con precisione.', 6.00, '22', 180),
('Filtro Hawthorne', 'Utilizzo: Per trattenere il ghiaccio e i pezzi di frutta mentre si versa il drink.', 8.00, '22', 170);
