CREATE DATABASE GESTIONALE;

USE GESTIONALE;

CREATE TABLE Prodotti (
    IDProdotto INTEGER PRIMARY KEY,
    NomeProdotto VARCHAR(100),
    Prezzo DECIMAL(10 , 2 )
);

CREATE TABLE Clienti (
    IDCliente INTEGER PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Ordini (
    IDOrdine INTEGER PRIMARY KEY,
    IDProdotto INTEGER,
    IDCliente INTEGER,
    Quantità INTEGER,
    FOREIGN KEY (IDProdotto)
        REFERENCES Prodotti (IDProdotto),
    FOREIGN KEY (IDCliente)
        REFERENCES Clienti (IDCliente)
);

CREATE TABLE DettaglioOrdini (
IDOrdine INTEGER,
IDProdotto INTEGER,
IDCliente INTEGER,
PrezzoTotale DECIMAL,
PRIMARY KEY (IDOrdine, IDProdotto, IDCliente),
FOREIGN KEY (IDOrdine) REFERENCES Ordini(IDOrdine),
FOREIGN KEY (IDProdotto) REFERENCES Prodotti(IDProdotto),
FOREIGN KEY (IDCliente) REFERENCES Clienti(IDCliente)
);

INSERT INTO Prodotti(IDProdotto, NomeProdotto, Prezzo)
VALUES
(1, 'Tablet', 300.00),
(2, 'Mouse', 20.00),
(3, 'Tastiera', 25.00),
(4, 'Monitor', 180.00),
(5, 'HHD', 90.00),
(6, 'SSD', 90),
(7, 'RAM', 100.00),
(8, 'Router', 80.00),
(9, 'Webcam', 45.00),
(10, 'GPU', 1250.00),
(11, 'Trackpad', 500.00),
(12, 'Techmagazine', 5.00),
(13, 'Martech', 50.00);

INSERT INTO Clienti(IDCliente, Nome, Email)
VALUES
(1, 'Antonio', null),
(2, 'Battista', 'battista@mailmail.it'),
(3, 'Maria', 'maria@posta.it'),
(4, 'Franca', 'franca@lettere.it'),
(5, 'Ettore', null),
(6, 'Arianna', 'arianna@posta.it'),
(7, 'Piero', 'piero@lavoro.it');

INSERT INTO Ordini(IDOrdine, IDProdotto, IDCliente, Quantità)
VALUES
(1, 2, 2, 10),
(2, 6, 4, 2),
(3, 5, 7, 3),
(4, 1, 5, 1),
(5, 9, 5, 1),
(6, 4, 6, 2),
(7, 11, 1, 6),
(8, 10, 4, 2),
(9, 3, 2, 3),
(10, 3, 6, 1),
(11, 2, 1, 1);

