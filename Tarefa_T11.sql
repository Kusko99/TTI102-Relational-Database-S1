CREATE DATABASE dbvendas;
USE dbvendas;

CREATE TABLE vendedores(
idvendedor INTEGER PRIMARY KEY,
cpf CHAR(14),
nome VARCHAR(100),
salariofixo DOUBLE,
metavendas DOUBLE,
totalvendasrealizadas DOUBLE
);

CREATE TABLE celulares(
idvendedor INTEGER,
celular CHAR(13),
FOREIGN KEY (idvendedor) REFERENCES vendedores(idvendedor)
);

insert into vendedores (idvendedor, cpf, nome, salariofixo, metavendas, totalvendasrealizadas) values 
(100, '298.876.123.23', 'Paulo Souza', 2440.00, 5000.00, 3400.00),
(200, '333.657.480.78', 'Ana Catarina', 2440.00, 4000.00, 4400.00),
(300, '123.125.824.12', 'Joel Silva', 2440.00, 3000.00, 9400.00),
(400, '879.982.013.90', 'Pedro de Paula', 2440.00, 4300.00, 2600.00),
(500, '268.811.861.06', 'Beatriz Carvalho', 2440.00, 8700.00, 7400.00),
(600, '631.938.066.48', 'Vitória Sandos', 2440.00, 2900.00, 3700.00);

insert into celulares (idvendedor,celular) values
(100, '11 90976-1234'),
(100, '11 97654-0975'),
(200, '11 99875-1237'),
(200, '11 76542-0962'),
(300, '11 78651-0987'),
(300, '11 75321-6723'),
(400, '11 99876-2739'),
(400, '11 98760-1269'),
(500, '11 76540-0098'),
(500, '11 99977-9944'),
(600, '11 87654-0042'),
(600, '11 99998-0062');

SELECT nome FROM vendedores;

SELECT nome FROM vendedores 
ORDER BY nome ASC;

SELECT nome FROM vendedores 
ORDER BY nome DESC;

SELECT nome,totalvendasrealizadas FROM vendedores;

SELECT nome,totalvendasrealizadas FROM vendedores
ORDER BY totalvendasrealizadas DESC;

SELECT nome, metavendas,totalvendasrealizadas FROM vendedores
WHERE totalvendasrealizadas > metavendas
ORDER BY totalvendasrealizadas DESC;

SELECT nome, metavendas,totalvendasrealizadas FROM vendedores
WHERE totalvendasrealizadas < metavendas
ORDER BY totalvendasrealizadas DESC;

SELECT idvendedor,nome, ROUND(AVG(totalvendasrealizadas),2)  AS media_vendas FROM vendedores
GROUP BY idvendedor,nome;

SELECT idvendedor,nome, AVG(totalvendasrealizadas) AS media_vendas FROM vendedores
GROUP BY idvendedor,nome;

SELECT nome, (totalvendasrealizadas-metavendas) AS diferença_meta_vendas FROM vendedores
GROUP BY idvendedor,nome ORDER BY nome ASC; 

