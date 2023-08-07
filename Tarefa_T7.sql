CREATE DATABASE dbdep;
USE dbdep;

CREATE TABLE Departamento(
idDepto INTEGER PRIMARY KEY,
nomeDepto CHAR(30) NOT NULL
);

CREATE TABLE Funcionário(
idFunc INTEGER PRIMARY KEY,
nomeFunc CHAR(40) NOT NULL,
CPF CHAR(14) NOT NULL UNIQUE,
idDepto INTEGER,
FOREIGN KEY (idDepto) REFERENCES Departamento(idDepto)
);

INSERT INTO Departamento (idDepto,nomeDepto) VALUES
(10,'Compras'),
(20,'Engenharias'),
(40,'Vendas'),
(55,'Financeiro');

SELECT * FROM departamento;

ALTER TABLE Funcionário ADD CONSTRAINT FK_Funcionário
FOREIGN KEY (idDepto) REFERENCES Departamento(idDepto)
ON UPDATE RESTRICT ON DELETE RESTRICT;

INSERT INTO Funcionário (idFunc,nomeFunc,CPF,idDepto) VALUES
(3456,'Paulo de Souza Alves','345.987.123-98',10),
(9872,'Jose da Silva','987.243.098-01',10),
(1890,'Pedro Range de Souza','112.872.340-81',NULL),
(4680,'Angela Silva Medereios','567.982.045-27',40);

SELECT * FROM Funcionário;

DELETE FROM Departamento WHERE idDepto = 10;

ALTER TABLE Funcionário 
DROP FOREIGN KEY FK_Funcionário;

ALTER TABLE Funcionário
ADD CONSTRAINT FK_Funcionário
FOREIGN KEY (idDepto) REFERENCES Departamento(idDepto)
ON UPDATE RESTRICT
ON DELETE SET NULL;

DELETE FROM Departamento;
DELETE FROM Funcionário;

ALTER TABLE Funcionário
ADD CONSTRAINT FK_Funcionário
FOREIGN KEY (idDepto) REFERENCES Departamento (idDepto)
ON UPDATE RESTRICT
ON DELETE CASCADE;

DROP DATABASE dbdep;

