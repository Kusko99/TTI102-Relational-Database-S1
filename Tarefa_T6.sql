CREATE DATABASE bdalunos;

USE bdalunos;

CREATE TABLE tabaluno (
	idAluno INTEGER NOT NULL PRIMARY KEY,
    cpfAluno VARCHAR(14) NOT NULL UNIQUE,
    nomeAluno VARCHAR(30)
);

ALTER TABLE tabaluno
ALTER COLUMN nomeAluno SET DEFAULT "Aluno sem nome";

SELECT * FROM tabaluno;

INSERT INTO tabaluno (idAluno,cpfAluno) VALUES (1,'111.222.333-44');
INSERT INTO tabaluno (idAluno,cpfAluno) VALUES (1,'222.333.444-55');
INSERT INTO tabaluno (idAluno,cpfAluno) VALUES (2,'111.222.333-44');
INSERT INTO tabaluno (idAluno,cpfAluno,nomeAluno) VALUES (2,'222.333.444-55','Paulo de Souza');

DROP DATABASE bdalunos;

CREATE TABLE tabaluno (
	idAluno INTEGER NOT NULL,
    cpfAluno VARCHAR(14) NOT NULL UNIQUE,
    nomeAluno VARCHAR(30),
    PRIMARY KEY (idAluno,cpfAluno)
);

ALTER TABLE tabaluno
ALTER COLUMN nomeAluno SET DEFAULT "Aluno sem nome";

INSERT INTO tabaluno (idAluno,cpfAluno) VALUES
(1,'111.222.333-44'),
(3,'222.333.444-55'),
(2,'333.444.555-66'),
(4,'444.555,666-77');