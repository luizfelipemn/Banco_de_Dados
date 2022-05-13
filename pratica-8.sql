CREATE DATABASE pratica_8;
USE pratica_8;

CREATE TABLE cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
endereco VARCHAR(150),
fk_cliente INT,
FOREIGN KEY (fk_cliente) REFERENCES  cliente (id_cliente));

CREATE TABLE venda (
id_venda INT PRIMARY KEY AUTO_INCREMENT,
total_venda DECIMAL(12,2),
data_hora DATETIME,
fk_cliente int,
FOREIGN KEY (fk_cliente) REFERENCES cliente (id_cliente));

CREATE TABLE produto (
id_produto INT PRIMARY KEY AUTO_INCREMENT,
nome_produto VARCHAR(45),
descricao VARCHAR(250),
preco DECIMAL(10,2));

CREATE TABLE itens_vendido (
fk_venda INT,
FOREIGN KEY (fk_venda) REFERENCES venda (id_venda),
fk_produto INT,
FOREIGN KEY (fk_produto) REFERENCES produto (id_produto),
qtd_produto INT,
desconto DECIMAL(5,5),
preco_produto DECIMAL(10,2));

SELECT* FROM cliente;
SELECT* FROM venda;
SELECT* FROM produto;
SELECT* FROM itens_vendido;

INSERT INTO cliente VALUES
(null,'Paulo', 'paulo@gmail.com','Rua das araras nº 99', null),
(null,'Ana', 'ana@gmail.com','Rua das capivara nº 12', 1),
(null,'Rafael', 'rafael@gmail.com','Rua dos quati nº 527', 1),
(null,'Gabriel', 'gabriel@gmail.com','Rua das aranhas nº 3', 2),
(null,'Samira', 'samira@gmail.com','Rua do javali nº 66', 3);

SELECT* FROM cliente;
SELECT* FROM venda;
SELECT* FROM produto;
SELECT* FROM itens_vendido;

INSERT INTO venda VALUES 
(null,'300','2022-04-23 10:02',1),
(null,'214','2022-04-23 10:07',2),
(null,'15','2022-04-23 10:12',3),
(null,'187','2022-04-23 10:25',4),
(null,'14','2022-04-23 13:30',1),
(null,'300','2022-04-23 14:09',2),
(null,'115','2022-04-23 16:47',5),
(null,'139','2022-05-23 12:43',3),
(null,'27','2022-05-23 13:20',5),
(null,'248','2022-06-23 11:13',4);

SELECT* FROM cliente;
SELECT* FROM venda;
SELECT* FROM produto;
SELECT* FROM itens_vendido;

INSERT INTO produto VALUES
(null,'chinelo','havaianas','30'),
(null,'sabão em pó','OMO','15'),
(null,'martelo','...','70'),
(null,'camiseta','camiseta da nike','100'),
(null,'chocolate','50 gramas de chocolate lacta','1'),
(null,'jogo PS4','lançamento de PS4','200'),
(null,'esmalte','risque','5');

SELECT* FROM cliente;
SELECT* FROM venda;
SELECT* FROM produto;
SELECT* FROM itens_vendido;

INSERT INTO itens_vendido VALUES 
(1,6,1,'0.1',200),
(1,4,1,'0.05',100),
(1,7,5,0,5),
(2,6,1,0,200),
(2,2,1,'0.06',15),
(3,2,1,0,15),
(4,6,1,'0.07',200),
(5,1,1,'0.53',30),
(6,4,3,0,100),
(7,4,1,0,100),
(7,2,1,0,15),
(8,1,4,0,30),
(8,7,1,'0.2',5),
(9,5,27,0,1),
(10,4,2,0,100),
(10,1,1,0,30),
(10,5,9,0,1);

SELECT* FROM cliente;
SELECT* FROM venda;
SELECT* FROM produto;
SELECT* FROM itens_vendido;

SELECT c.*, v.* 
FROM cliente as c 
JOIN venda as v on c.id_cliente = v.fk_cliente;

SELECT c.*, v.* 
FROM cliente as c 
JOIN venda as v on c.id_cliente = v.fk_cliente
WHERE nome = 'Paulo';

SELECT c.nome as 'Cliente que indicou', ind.nome as 'Quem foi indicado'
FROM cliente as c 
JOIN cliente as ind on c.id_cliente = ind.fk_cliente;

SELECT ind.*, c.*, v.* , p.*
FROM cliente as c 
JOIN cliente as ind on c.id_cliente = ind.fk_cliente
JOIN venda as v on c.id_cliente = v.fk_cliente
JOIN itens_vendido as iv on v.id_venda = iv.fk_venda
JOIN produto as p on p.id_produto = iv.fk_produto;





