CREATE DATABASE dbescola;
USE dbescola;

CREATE TABLE Professor(
idProfessor INTEGER PRIMARY KEY,
CPF CHAR(14) UNIQUE,
nomeProfessor VARCHAR(100),
emailProfessor VARCHAR(100)
);

CREATE TABLE Disciplina(
idDisciplina INTEGER PRIMARY KEY,
nomeDisciplina VARCHAR(100)
);

CREATE TABLE ProfDisc(
idProfessor INTEGER,
idDisciplina INTEGER,
FOREIGN KEY (idProfessor) REFERENCES Professor(idProfessor),
FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

CREATE TABLE Editora(
idEditora INTEGER PRIMARY KEY,
nomeEditora VARCHAR(100),
foneEditora CHAR(14)
);

CREATE TABLE Livro_Texto(
idLivro INTEGER PRIMARY KEY,
nomeLivro VARCHAR(100),
anoPublicacao CHAR(4),
idEditora INTEGER,
FOREIGN KEY (idEditora) REFERENCES Editora(idEditora)
);

CREATE TABLE DiscLivro(
idDisciplina INTEGER,
idLivro INTEGER,
FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina),
FOREIGN KEY (idLivro) REFERENCES Livro_Texto(idLivro)
);

INSERT INTO Editora (idEditora,nomeEditora,foneEditora) VALUES
(101,'Editora Campus','(21)3459-9877'),
(201,'Pearson','(11)2379-1289'),
(301,'Editora do Brasil','(11)4590-0012'),
(401,'Editora USP','(11)3390-1277'),
(501,'Editora SP','(11)8733-0911');

INSERT INTO Livro_Texto (idLivro, nomeLivro, anoPublicacao, idEditora) VALUES
(9101,'Álgebra Linear','2010',101),
(9201,'Estatística Básica','2018',101),
(9301,'Matemática Básica','1999',201),
(9401,'Redes de Computadores e Internet','2001',301),
(9501,'Redes de Computadores','2004',301),
(9502,'Projeto de Redes de Computadores','2015',301),
(9503,'Algoritmos','2015',401),
(9504,'Algoritmos e Estrutura de Dados','2021',401),
(9505,'Sistemas Operacionais Modernos','2021',401),
(9507,'Teoria da Computação','2021',501),
(9508,'Linguagens Formais','2021',501);

INSERT INTO Disciplina (idDisciplina,nomeDisciplina) VALUES
(10,'Matemática-I'),
(11,'Matmática-II'),
(20,'Álgebra Linear-I'),
(21,'Álgebra Linear-II'),
(30,'Estatística-I'),
(31,'Estatística-II'),
(40,'Redes de Computadores'),
(50,'Arquitetura de Computadores'),
(60,'Algortimos-I'),
(62,'Algortimos-II'),
(70,'Teoria da Computação'),
(80,'Cálculo Numérico'),
(90,'Inteligência Artificial'),
(100,'Sistemas Operacionais-I'),
(101,'Sistemas Operacionais-II');

INSERT INTO ProfDisc (idProfessor,idDisciplina) VALUES
(1000,10),(1000,11),(1000,20),(1000,21),(1001,30),(1001,31),
(1002,40),(1010,40),(1002,50),(1010,50),(1045,60),(1101,60),
(1045,62),(1101,62),(1021,70),(1034,90),(1032,100),(1067,100),
(1032,101),(1067,101);

INSERT INTO DiscLivro (idLivro,idDisciplina) VALUES
(9301,10),(9301,11),(9101,20),(9101,21),(9201,30),(9301,31),
(9401,40),(9501,40),(9502,40),(9503,60),(9504,60),(9503,62),
(9507,70),(9508,70),(9505,100),(9506,100);
