CREATE DATABASE bd_empresa;
USE bd_empresa;

CREATE TABLE tb_colaborador(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	idade INT,
	salario LONG,
    anosNaEmpresa INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaborador(nome, idade, salario, anosNaEmpresa) 
values ("Neymar Jr",32, "3500",2); 
INSERT INTO tb_colaborador(nome, idade, salario, anosNaEmpresa) 
values ("Lionel Messi",37, "3000",3); 
INSERT INTO tb_colaborador(nome, idade, salario, anosNaEmpresa) 
values ("Luis Suarez",37, "3000",1); 
INSERT INTO tb_colaborador(nome, idade, salario, anosNaEmpresa) 
values ("Cristiano Ronaldo",39, "5000",5); 
INSERT INTO tb_colaborador(nome, idade, salario, anosNaEmpresa) 
values ("Luka Modric",40, "5500",6);

SELECT * FROM tb_colaborador
WHERE salario >= 2000;

SELECT * FROM tb_colaborador
WHERE salario < 2000;