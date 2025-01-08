CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nomeClasse VARCHAR(255) NOT NULL,
    descricaoClasse VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
	id BIGINT AUTO_INCREMENT,
    nomePersonagem VARCHAR(255) NOT NULL,
    descricaoPersonagem VARCHAR(255) NOT NULL,
    forcaPersonagem INT,
    velocidadePersonagem INT,
    classeId BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classeId) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nomeClasse, descricaoClasse) 
values ("Mago","Usa magia"); 
INSERT INTO tb_classes(nomeClasse, descricaoClasse) 
values ("Brutamontes","Muito forte"); 
INSERT INTO tb_classes(nomeClasse, descricaoClasse) 
values ("Arqueiro","Atira flechas"); 
INSERT INTO tb_classes(nomeClasse, descricaoClasse) 
values ("Corredor","Corre muito rápido"); 
INSERT INTO tb_classes(nomeClasse, descricaoClasse) 
values ("Escudeiro","Possui escudo"); 

INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Bryan","Muito veloz", 6, 9, 4); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Cocielinho","O mais forte", 10, 3, 2); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Gavião","Melhor arqueiro do mundo", 6, 5, 3); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Harry Potter","Faz mágina na Paulista", 7, 5, 1); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Capitão","Defende qualquer coisa", 5, 6, 5); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Turco","Medalha de prata", 7, 4, 3); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Barry Allen","O homem mais rápido vivo", 4, 10, 4); 
INSERT INTO tb_personagens(nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, classeId) 
values ("Estranho","Mago supremo", 8, 7, 1); 

/*6. Troquei 2000 por 5*/
SELECT * FROM tb_personagens
WHERE forcaPersonagem > 5;

/*7. Troquei os valores 1000 e 2000 por 4 e 6, além de defesa para velocidade*/
SELECT * FROM tb_personagens 
WHERE velocidadePersonagem BETWEEN 4 AND 6;

/*8. */
SELECT * FROM tb_personagens 
WHERE nomePersonagem LIKE "%c%";

/*9. */
SELECT nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, tb_classes.descricaoClasse
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeId = tb_classes.id;

/*10. */
SELECT nomePersonagem, descricaoPersonagem, forcaPersonagem, velocidadePersonagem, tb_classes.descricaoClasse
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeId = tb_classes.id
WHERE tb_personagens.classeId = 3;