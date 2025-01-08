CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nomeCategoria VARCHAR(255) NOT NULL,
	descricaoCategoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nomeProduto VARCHAR(255) NOT NULL,
    precoProduto DECIMAL(6,2) NOT NULL,
    datavalidadeProduto DATE,
	quantidadeProduto INT,
    categoriaId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES ("Remédio", "Para tratar doenças");
INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES ("Desodorante", "Previne odor e transpiração");
INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES ("Produto Capilar", "Cuida da saúde do cabelo");
INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES ("Fralda", "Para bebês");
INSERT INTO tb_categorias (nomeCategoria, descricaoCategoria)
VALUES ("Fitness", "Para pessoas que treinam");

INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Dipirona", 12.00, "2025-12-09", 200, 1); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Desodorante Rexona", 25.00, "2026-04-21", 100, 2); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Shampoo Elseve", 30.00, "2025-11-12", 24, 3); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Fralda Panpers Confort", 250.00, "2025-06-04", 75, 4); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Whey Protein Integral Medica", 110.00, "2025-08-10", 50, 5); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Creatina Integral Medica", 125.00, "2025-09-15", 57, 5); 
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Desodorante Dove", 22.50, "2026-06-30", 124, 2);
INSERT INTO tb_produtos(nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, categoriaid) 
values ("Dorflex", 15.00, "2025-11-05", 97, 1);  

/*6. */
SELECT * FROM tb_produtos
WHERE precoProduto >= 50;

/*7. */
SELECT * FROM tb_produtos 
WHERE precoProduto BETWEEN 5 AND 60;

/*8. */
SELECT * FROM tb_produtos 
WHERE nomeProduto LIKE "%c%";

/*9. */
SELECT nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, tb_categorias.nomeCategoria, tb_categorias.descricaoCategoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaId = tb_categorias.id;

/*10. */
SELECT nomeProduto, precoProduto, datavalidadeProduto, quantidadeProduto, tb_categorias.nomeCategoria, tb_categorias.descricaoCategoria
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaId = tb_categorias.id
WHERE tb_produtos.categoriaId = 5;

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;