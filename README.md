# ATIVIDADE 01 BCD
# Banco de Dados — Compras

Projeto de banco de dados desenvolvido em **MySQL**, contendo tabelas de clientes, produtos e compras, com operações de **CRUD (Create, Read, Update e Delete)**.

---

## 1. Criação do Banco de Dados

Primeiro, foi criado o banco de dados chamado `compras` e selecionado para utilização.

```sql
CREATE DATABASE compras;

USE compras;
```

---

## 2. Criação das Tabelas

### Tabela `cliente`

Armazena as informações dos clientes.

```sql
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);
```

### Tabela `produto`

Armazena os produtos disponíveis.

```sql
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);
```

### Tabela `compra`

Registra as compras realizadas, relacionando clientes e produtos.

```sql
CREATE TABLE compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);
```

---

# CRUD

## 3. CREATE — Inserir Dados

### Inserindo clientes

```sql
INSERT INTO cliente (nome, email, telefone)
VALUES
('Katie', 'katie@email.com', '19996583148'),
('Theo Silva', 'theosilva@email.com', '19998523476'),
('Kimi Antonelli', 'kimiantonelli@email.com', '19996523458');

SELECT * FROM cliente;
```

### Inserindo produtos

```sql
INSERT INTO produto (nome, preco)
VALUES
('livro coracao de cristal partido', 53.00),
('carrinho de bebe', 1500.00),
('capacete', 300.00);

SELECT * FROM produto;
```

### Inserindo compras

```sql
INSERT INTO compra (id_cliente, id_produto, quantidade)
VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);

SELECT * FROM compra;
```

---

# 4. READ — Consultar Dados

### Ver todos os clientes

```sql
SELECT * FROM cliente;
```

### Ver todos os produtos

```sql
SELECT * FROM produto;
```

### Ver todas as compras

```sql
SELECT * FROM compra;
```

---

# 5. UPDATE — Atualizar Dados

Foi realizada a atualização do telefone do cliente que possui o `id_cliente = 1`.

```sql
UPDATE cliente
SET telefone = '19996583159'
WHERE id_cliente = 1;
```

---

# 6. DELETE — Excluir Dados

Foi excluída a compra que possui o `id_compra = 1`.

```sql
DELETE FROM compra
WHERE id_compra = 1;
```

---

## 7. Estrutura do Banco

O banco de dados possui três tabelas principais:

* **cliente** — armazena os dados dos clientes.
* **produto** — armazena os produtos e seus preços.
* **compra** — registra as compras e relaciona clientes e produtos por meio de chaves estrangeiras.

### Relacionamentos

text
cliente 1 ─────── N compra N ─────── 1 produto

# ATIVIDADE 02 BCD

# Banco de Dados — Biblioteca

Projeto de banco de dados desenvolvido em **MySQL**, contendo tabelas de alunos, livros e empréstimos, com operações de **CRUD (Create, Read, Update e Delete)**.

---

## 1. Criação do Banco de Dados

Primeiro, foi criado o banco de dados chamado `biblioteca` e selecionado para utilização.

```
CREATE DATABASE biblioteca;

USE biblioteca;
```

---

## 2. Criação das Tabelas

### Tabela `aluno`

Armazena as informações dos alunos.

```
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
```

### Tabela `livro`

Armazena as informações dos livros.

```
CREATE TABLE livro (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL
);
```

### Tabela `emprestimo`

Registra os empréstimos realizados, relacionando alunos e livros.

```
CREATE TABLE emprestimo (
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,

    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);
```

---

# CRUD

## 3. CREATE — Inserir Dados

### Inserindo alunos

```
INSERT INTO aluno (nome, email)
VALUES
('Bianka', 'bianka@email.com'),
('Kimi', 'kimi@email.com'),
('Theo', 'theo@email.com');

SELECT * FROM aluno;
```

### Inserindo livros

```
INSERT INTO livro (titulo, autor)
VALUES
('Princesa das Cinzas', 'Laura Sebastian'),
('Cutelo e Corvo', 'Brynne Weaver'),
('Crueldade e Maldição', 'Rebecca Robinson');

SELECT * FROM livro;
```

### Inserindo empréstimos

```
INSERT INTO emprestimo (id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES
(1, 1, '2026-10-07', '2026-10-21'),
(2, 2, '2026-10-07', '2026-10-21'),
(3, 3, '2026-10-08', '2026-10-22');

SELECT * FROM emprestimo;
```

---

# 4. READ — Consultar Dados

### Ver todos os alunos

```
SELECT * FROM aluno;
```

### Ver todos os livros

```
SELECT * FROM livro;
```

### Ver todos os empréstimos

```
SELECT * FROM emprestimo;
```

---

# 5. UPDATE — Atualizar Dados

Foi realizada a atualização do título do livro que possui o `id_livro = 2`.

```
UPDATE livro
SET titulo = 'Couro e Rouxinol'
WHERE id_livro = 2;
```

---

# 6. DELETE — Excluir Dados

Foi excluído o empréstimo que possui o `id_emprestimo = 1`.

```
DELETE FROM emprestimo
WHERE id_emprestimo = 1;
```

