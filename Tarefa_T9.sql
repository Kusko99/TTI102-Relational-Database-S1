CREATE DATABASE dbprojetos;
USE dbprojetos;

CREATE TABLE Departamentos(
idDepto INTEGER PRIMARY KEY UNIQUE,
nomeDepto VARCHAR(20)
);

CREATE TABLE Funcionários(
idFunc INTEGER PRIMARY KEY UNIQUE,
nomeFunc VARCHAR(100),
CPF CHAR(14) UNIQUE,
idDepto INTEGER,
FOREIGN KEY (idDepto) REFERENCES Departamentos(idDepto)
);

CREATE TABLE Projetos(
idProjeto INTEGER PRIMARY KEY UNIQUE,
nomeProjeto VARCHAR(100)
);

CREATE TABLE FunProj(
idFunc INTEGER,
idProj INTEGER,
funcaoFunc VARCHAR(50),
dataInicio DATE,
PRIMARY KEY (idFunc,idProj),
FOREIGN KEY (idFunc) REFERENCES Funcionários(idFunc),
FOREIGN KEY (idProj) REFERENCES Projetos(idProjeto)
);

ALTER TABLE Funcionários
ADD CONSTRAINT DeleteFunc
FOREIGN KEY (idDepto) REFERENCES Departamentos(idDepto)
ON DELETE CASCADE;

ALTER TABLE FunProj
ADD CONSTRAINT DeleteProj
FOREIGN KEY (idFunc) REFERENCES Funcionários(idFunc)
ON DELETE CASCADE;

INSERT INTO Departamentos (idDepto,nomeDepto) VALUES
(10,'Compras'),
(20,'Vendas'),
(30,'Marketing'),
(40,'Engenharia'),
(50,'RH'),
(60,'TI'),
(70,'Almoxarifado'),
(80,'Manutenção'),
(90,'Segurança'),
(100,'Contabilidade');

INSERT INTO Funcionários (idFunc, nomeFunc, cpf, idDepto) VALUES
(1000,'Paulo de Souza Alves','234.876.855-10',10),
(1001,'Ana da Silva','666.876.855-10',10),
(1002,'Pedro Candido','444.876.855-10',10),
(1010,'Antonio Alves','269.876.855-45',20),
(1021,'Henrique Souza Alves','903.876.855-42',20),
(1032,'Beatriz Silva Santos','084.457.123-42',30),
(1034,'Fernando Xavier Santos','991.670.120-77',30),
(1045,'Pedro Diógenes Santos','042.668.234-22',40),
(1056,'Sandro Gimenez','816.803.129-33',50),
(1067,'Carlos Eduardo Bognar','775.662.127-33',60),
(1068,'Mauro Favoretto','225.662.127-33',60),
(1078,'Maria Aparecida Flores','388.800.120-49',70),
(1081,'Saulo de Souza','691.389.114-91',80),
(1098,'Ivo de Alcantara','892.339.966-66',90),
(1099,'Carlos Alberto de Macedo','447.100.590-19',90),
(1101,'Renato Carioca', '778.124.801-17',100);

INSERT INTO Projetos (idProjeto, nomeProjeto) VALUES
(100,'ABC'),
(200,'XYZ'),
(300,'YB88'),
(400,'Z3400'),
(500,'UFY78');

INSERT INTO FunProj (idFunc, idProj, funcaoFunc, dataInicio) VALUES
(1021,100,'Programador','2020-10-01'),
(1021,100,'Gerente','2021-10-31'),
(1021,100,'Assistente','2021-11-10'),
(1034,200,'Secretário','2021-10-10'),
(1081,300,'Gerente','2019-12-12'),
(1081,300,'Programador Junior','2020-12-12'),
(1081,300,'Programador Junior','2020-12-31'),
(1101,400,'Gerente','2021-12-01'),
(1101,400,'Gerente','2022-01-05');


