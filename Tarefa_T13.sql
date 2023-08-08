CREATE DATABASE dbpessoal;
USE dbpessoal;

CREATE TABLE departamento (
idDepto INTEGER PRIMARY KEY,
nomeDepto VARCHAR(50)
);

CREATE TABLE funcionario(
idFunc INTEGER PRIMARY KEY,
nomeFunc VARCHAR(100),
cpf CHAR(14),
idDepto INTEGER,
FOREIGN KEY (idDepto) REFERENCES departamento(idDepto)
);

insert into departamento (idDepto, nomeDepto) values

		(10, "Compras"),
		(20, "Vendas"),
        (30, "Marketing"),
        (40, "Engenharia"),
        (50, "RH"),
        (60, "TI"),
        (70, "Almoxarifado"),
        (80, "Manutenção"),
        (90, "Segurança"),
        (100, "Contabilidade"),
        (120, "Compras Internacionais"), 
        (130, "Segurança Internacional"); 


insert into funcionario (idFunc, nomeFunc, cpf, idDepto) values 
(1000, "Paulo de Souza Alves", "234.876.855-10", 10),
(1001, "Ana da Silva", "666.876.855-10", 10), 
(1002, "Pedro Candido", "444.876.855-10", 10),
(1010, "Antonio Alves", "269.876.855-45", 20),
(1021, "Henrique Souza Alves", "903.876.855-42", 20),
(1032, "Beatriz Silva Santos", "084.457.123-42", 30),
(1034, "Fernando Xavier Santos", "991.670.120-77", 30),
(1045, "Pedro Diógenes Santos", "042.668.234-22", 40),
(1056, "Sandro Gimenez", "816.803.129-33", 50),
(1067, "Carlos Eduardo Bognar", "775.662.127-33", 60), 
(1068, "Mauro Favoretto", "225.662.127-33", 60),
(1078, "Maria Aparecida Flores", "388.800.120-49", 70),
(1081, "Saulo de Souza", "691.389.114-91", 80),
(1098, "Ivo de Alcantara", "892.339.966-66", 90),
(1099, "Carlos Alberto de Macedo", "447.100.590-19", 90),
(1101, "Renato Carioca", "778.124.801-17", 100),
(1110, "Valmir de Souza", "786.761.999-10", null),
(1200, "Pedro Rangel", "983-333-998-12", null),
(1210, "Sandro da Silva", "450-120-666-43", null),
(1250, "Saulo Pedro Souza", "999-129-077-65", null);


SELECT f.nomeFunc AS NomeFuncionario, d.NomeDepto AS NomeDepartamento
FROM funcionario f JOIN departamento d ON f.idDepto = d.idDepto;

SELECT f.nomeFunc AS NomeFuncionario, COALESCE(d.nomeDepto, 'Sem Departamento') AS NomeDepartamento
FROM funcionario f LEFT JOIN departamento d ON f.idDepto = d.idDepto;

SELECT COALESCE(f.nomeFUNC, 'Sem Funcionário') AS NomeFuncionario, d.nomeDepto AS NomeDepartamento
FROM funcionario F RIGHT JOIN departamento d ON f.idDepto = d.idDepto;

SELECT f.nomeFunc AS NomeFuncionario, d.NomeDepto as NomeDepartamento
FROM funcionario f JOIN departamento d ON f.idDepto = d.idDepto
WHERE f.nomeFunc LIKE "A%";


SELECT f.nomeFunc AS NomeFuncionario, d.NomeDepto as NomeDepartamento
FROM funcionario f JOIN departamento d ON f.idDepto = d.idDepto
WHERE f.nomeFunc LIKE "%S";

SELECT f.nomeFunc AS NomeFuncionario, d.NomeDepto as NomeDepartamento
FROM funcionario f JOIN departamento d ON f.idDepto = d.idDepto
WHERE f.idFunc > 1030;
