CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL
);

CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);


/* CREATE */ inserir dados

USE biblioteca;

INSERT INTO aluno (nome, email)
VALUES
('Bianka', 'bianka@email.com'),
('Kimi', 'kimi@email.com'),
('Theo', 'theo@email.com');

SELECT * FROM aluno;


USE biblioteca;

INSERT INTO livro (titulo, autor)
VALUES
('Princesa das Cinzas', 'Laura Sebastian'),
('Cutelo e Corvo', 'Brynne Weaver'),
('Crueldade e Maldição', 'Rebecca Robinson');

SELECT * FROM livro;


USE biblioteca;

INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES
(1, 1, '2026-10-07', "2026-10-21"),
(2, 2, '2026-10-07', "2026-10-21"),
(3, 3, '2026-10-08', "2026-10-22");

SELECT * FROM emprestimo;


/* READ */ consultar dados

-- Ver todos os alunos
SELECT * FROM aluno;

-- Ver todos os livros
SELECT * FROM livro;

-- Ver empréstimos
SELECT * FROM emprestimo;


/* UPDATE */ atualizar

UPDATE livro
SET titulo = 'Couro e Rouxinol'
WHERE id_livro = 2;


/* DELETE */ excluir

DELETE FROM emprestimo
WHERE id_emprestimo = 1;