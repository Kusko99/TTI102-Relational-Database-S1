CREATE DATABASE dbemployee;
USE dbemployee;

DROP DATABASE dbemployee;

CREATE TABLE funcionarios(
idFuncionario INTEGER PRIMARY KEY,
nomeFuncionario VARCHAR(100),
dataAdmissaoFuncionario DATE,
salarioFuncionario DOUBLE,
funcaoFuncionario VARCHAR(100),
idSupervisor INTEGER
);

CREATE TABLE automoveis(
idAutomovel INTEGER PRIMARY KEY,
fabricanteAutomovel VARCHAR(100),
anoAutomovel CHAR(4),
modeloAutomovel VARCHAR(100),
chassiAutomovel VARCHAR(100),
idFuncionario INTEGER,
FOREIGN KEY (idFuncionario) REFERENCES funcionarios(idFuncionario)
);

insert into funcionarios (idFuncionario, nomeFuncionario, dataAdmissaoFuncionario, salarioFuncionario, funcaoFuncionario, idSupervisor) values 
    
    (1, 'Pedro Paulo', '2001-10-31', 25000.00, 'Gerente de Sistemas de Software', null) , 
    (2, 'Ana da Silva', '2009-01-30', 15000.00,'Programadora de Sistemas', 1), 
    (3, 'André de Souza', '2020-04-29', 16000.00, 'Engenheiro de Software', 1), 
    (4, 'Carlos Macedo', '1988-09-27', 23000.00,'Gerente de Suporte Técnico', null),
    (5, 'Benededito da Silva', '1995-09-28',16500.00, 'Analista de Sistemas', 4), 
    (6, 'Carlos Aguiar Souza', '2012-11-28',9500.00, 'Analista Front End',4), 
    (7, 'Sandra de Souza Freitas', '2015-07-30',11500.00,'Analista Back End',4), 
    (8, 'Saulo André Magalhães', '2016-10-10', 12000.00,'Analista de Suporte Técnico', 1), 
    (9, 'Pio de Souza Xavier', '2017-05-25', 14500.00,'Programador Java Senior',4),
    (10, 'Pedro Paulo Andrade', '2018-01-27',6500.00, 'Programador Java Junior', 4),
    (11, 'Beatriz Silveira', '2015-01-21', 9500.00, 'Gerente de Vendas', null),
    (12, 'Carlos Bitencourt', '2018-08-26', 3800.00, 'Analista de Vendas', 11),
    (13, 'José Alencar Brito', '2001-07-16', 7800.00, 'Analista de Vendas', 11),
    (14, 'Emerson Godoy', '2013-01-23', 11500.00, 'Gerente de Marketing', null),
    (15, 'Kemelly Andrade', '2021-02-24', 7900.00, 'Analista de Marketing', 14),
    (16, 'Armando Queiroz', '2022-02-01', 5900.00, 'Analista de Marketing', 14),
    (17, 'Fernando Marins', '1997-01-23', 31500.00, 'Gerente de Produção', null),
    (18, 'Fernando Marins', '2001-01-29', 18500.00, 'Engenheiro de Produção', 17),
    (19, 'Sandro Xavier', '2003-01-13', 19500.00, 'Engenheiro de Produção', 17),
    (20, 'Camila de Souza Rocha Xavier', '2006-01-18', 19500.00, 'Engenheira de Produção', 17);
    
  
insert into automoveis (idAutomovel, fabricanteAutomovel, anoAutomovel, modeloAutomovel, chassiAutomovel, idFuncionario) values 
(100, 'Volkswagen', 2010, 'Fox', 'BW5987654W0001', null), 
(200, 'GM', 2011, 'Celta', 'BF4398373770003', 20), 
(300, 'Fiat', 2020, 'Toro', 'WBY9998770885', 17), 
(400, 'Volkswagen', 2021, 'Passat', 'BWW234871349871239', 12),
(500, 'Volkswagen', 2005, 'Gol', 'BWW3248917398471', 10),
(600, 'Fiat', 2015, 'Mile', 'BWW3249081340981', 9),
(700, 'Toyota', 2020, 'Corolla', 'BWW1239041234890', 6),
(800, 'Toyota', 2022, 'Camry', 'BWW14238901234890', 5),
(900, 'GM', 2009, 'Corsa', 'BWW790-79034563465', null);


SELECT modeloAutomovel FROM automoveis;

SELECT modeloAutomovel FROM automoveis
ORDER BY anoAutomovel ASC;

SELECT modeloAutomovel FROM automoveis
WHERE fabricanteAutomovel = 'Volkswagen'
ORDER BY anoAutomovel ASC;

SELECT modeloAutomovel FROM automoveis
WHERE idFuncionario IS NOT null
ORDER BY anoAutomovel DESC;

SELECT modeloAutomovel FROM automoveis
WHERE idFuncionario IS null
ORDER BY anoAutomovel ASC;

SELECT modeloAutomovel, fabricanteAutomovel, anoAutomovel FROM automoveis
ORDER BY anoAutomovel ASC;

SELECT modeloAutomovel, anoAutomovel FROM automoveis
WHERE anoAutomovel IN (2005,2010,2020)
ORDER BY anoAutomovel;

SELECT fabricanteAutomovel,anoAutomovel FROM automoveis
WHERE idFuncionario = 10;

SELECT modeloAutomovel,anoAutomovel FROM automoveis
WHERE anoAutomovel > 2005
ORDER BY anoAutomovel;

SELECT fabricanteAutomovel FROM automoveis
ORDER BY fabricanteAutomovel;

SELECT DISTINCT fabricanteAutomovel FROM automoveis
ORDER BY fabricanteAutomovel;

SELECT modeloAutomovel,anoAutomovel FROM automoveis
WHERE anoAutomovel > 2005 AND anoAutomovel < 2020
ORDER BY anoAutomovel;

SELECT modeloAutomovel FROM automoveis
WHERE idFuncionario IS NOT NULL AND anoAutomovel > 2010 AND anoAutomovel < 2020
ORDER BY anoAutomovel;

SELECT idFuncionario,nomeFuncionario,salarioFuncionario FROM funcionarios
WHERE salarioFuncionario > 10000.00
ORDER BY nomeFuncionario;

SELECT idFuncionario,nomeFuncionario FROM funcionarios
WHERE idSupervisor = 4
ORDER BY nomeFuncionario;

SELECT idFuncionario,nomeFuncionario FROM funcionarios
WHERE dataAdmissaoFuncionario < '2010-01-01'
ORDER BY nomeFuncionario;

SELECT idFuncionario,nomeFuncionario FROM funcionarios
WHERE nomeFuncionario LIKE "%Souza%"
ORDER BY idFuncionario;

SELECT idFuncionario,nomeFuncionario FROM funcionarios
WHERE nomeFuncionario LIKE "P%"
ORDER BY idFuncionario;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario DESC
LIMIT 1;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario ASC
LIMIT 1;

SELECT AVG(salarioFuncionario) AS mediaSalario
FROM funcionarios;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario DESC
LIMIT 2;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario DESC
LIMIT 3;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario ASC
LIMIT 2;

SELECT idFuncionario, nomeFuncionario FROM funcionarios
ORDER BY salarioFuncionario ASC
LIMIT 3;
