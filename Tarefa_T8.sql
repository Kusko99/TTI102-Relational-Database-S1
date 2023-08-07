CREATE DATABASE dbocorrencias;
USE dbocorrencias;

CREATE TABLE tbClientes(
idCliente INTEGER UNIQUE PRIMARY KEY,
CPF CHAR(14) UNIQUE,
nomeCliente VARCHAR(100),
emailCliente VARCHAR(100)
);

CREATE TABLE tbAutomóveis(
placa CHAR(8) UNIQUE,
modelo VARCHAR(50),
cor VARCHAR(20),
renavan VARCHAR(50) UNIQUE,
fabricante VARCHAR(30),
idCliente INTEGER,
FOREIGN KEY (idCliente) REFERENCES tbClientes(idCliente)
);

CREATE TABLE tbOcorrências(
idOcorrencia INTEGER PRIMARY KEY UNIQUE,
descOcorrencia VARCHAR(100),
localOcorrencia VARCHAR(100),
dataOcorrencia DATE,
placa CHAR(8),
FOREIGN KEY (placa) REFERENCES tbAutomóveis(placa)
);

ALTER TABLE tbAutomóveis
ADD CONSTRAINT DeleteCliente
FOREIGN KEY (idCliente) REFERENCES tbClientes(idCliente)
ON DELETE CASCADE;

ALTER TABLE tbOcorrências
ADD CONSTRAINT DeleteCarro
FOREIGN KEY (placa) REFERENCES tbAutomóveis(placa)
ON DELETE CASCADE;

INSERT INTO tbClientes (idCliente, nomeCliente, CPF, emailCliente) VALUES
(1056,'Paulo de Souza Alves','111.333,878-10','paulo.souza@gmail.com'),
(45789,'Antonio de Assis','345.987.675-16','antonio.assis@gmail.com'),
(65432,'Ana Ferreira Santos','776.875.123-88','ana,ferreira@hotmail.com'),
(98765,'Pedro Aguiar','987.098.665-17','pedro.aguiar@gmail.com'),
(54321,'Beatriz Santos Silva','987.092.333-12','beatriz.silva@gmail.com');

INSERT INTO tbAutomóveis (placa,modelo,cor,renavan,fabricante,idCliente) VALUES
('KJU-3456','Fox','Branco','9B45095698JKL00067','Volkswagen',1056),
('DQJ-7890','Corolla','Preto','AB4509569BJKL222334','Toyota',45789),
('UJY-0976','Golf','Vermelho','XY45095698JK67890','Volkswagen',54321),
('DRE-9912','Uno','Branco','ZZ45095698JK67890','Fiat',54321),
('RTY-9816','Prisma','Cinza','AB45095698JK778800','Chevrolet',65432);

INSERT INTO tbOcorrências (idOcorrencia,descOcorrencia,localOcorrencia,dataOcorrencia,placa) VALUES
(10067,'Acidente sem vítma','São Paulo', '2014-02-10','DQJ-7890'),
(34567,'Acidente sem vítma','São Caetano do Sul', '2018-07-23','DQJ-7890'),
(23098,'Colisão','São Paulo','2020-08-29','UJY-0976'),
(12009,'Colisão com motociclista','Guarulhos','2021-03-31','DRE-9912'),
(15998,'Veículo assaltado','São Paulo','1993-07-26','RTY-9816');

DROP DATABASE dbocorrencias;