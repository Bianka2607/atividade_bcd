USE db_senai;

INSERT INTO cliente(nome_cliente, email , dt_nasc)
VALUES ("Cade Eaton","C.Eaton@gmail.com","1988-07-24");

INSERT INTO cliente(nome_cliente, email , dt_nasc)
VALUES ("Michel B.Jordan","m.Jordan@gmail.com","1967-03-22");

INSERT INTO cliente(nome_cliente, email , dt_nasc)
VALUES ("Theo Silva","T.silva@gmail.com","2001-10-25");




INSERT INTO produto(produto,dt_entrega,preco,qtd)
VALUES ("notebook del", "2026-10-05", 5000.45,5);

INSERT INTO produto(produto,dt_entrega,preco,qtd)
VALUES ("sabao em po", "2026-10-23", 5.45,100);

INSERT INTO produto(produto,dt_entrega,preco,qtd)
VALUES ("livro elite de prata", "2026-7-10", 45,36,500);

SELECT * FROM produto;


USE db_senai;

INSERT INTO venda(id_cliente,id_produto,data_entrada)
VALUES(1, 1, "2026-09-25");

INSERT INTO venda(id_cliente,id_produto,data_entrada)
VALUES(2, 3, "2022-07-24");

INSERT INTO venda(id_cliente,id_produto,data_entrada)
VALUES(2, 3, "2002-11-23");

SELECT * FROM venda;


ALTER TABLE venda
ADD CONSTRAINT fk_venda_cliente
FOREIGN KEY(id_cliente)
REFERENCES cliente (id_cliente);

ALTER TABLE produto
ADD CONSTRAINT fk_venda_produto
FOREIGN KEY(id_produto)
REFERENCES produto (id_produto);





ALTER TABLE venda
ADD CONSTRAINT fk_venda_produto
FOREIGN KEY (id_produto)
REFERENCES produto(id_produto);

ALTER TABLE produto
ADD CONSTRAINT uk_produto_unico UNIQUE (produto);



ALTER TABLE cliente
ADD CONSTRAINT uk_produto_unico
UNIQUE(email);