create database exercicio_sala;
use exercicio_sala;

create table grupo (
id_grupo int primary key auto_increment,
nome_grupo varchar(45),
descricao_projeto varchar(45));


create table aluno (
id_aluno int primary key auto_increment,
RA int unique,
nome_aluno varchar(45),
email varchar(45),
fk_grupo int,
foreign key (fk_grupo) references grupo (id_grupo));

create table professor (
id_professor int primary key auto_increment,
nome_professor varchar(45),
disciplina varchar(45))
auto_increment = 10000;

create table avaliacao (
fk_grupo int,
fk_professor1 int,
foreign key (fk_professor1) references professor (id_professor),
fk_professor2 int,
foreign key (fk_professor2) references professor (id_professor),
fk_professor3 int,
foreign key (fk_professor3) references professor (id_professor),
data_hora datetime,
nota decimal(3,2),
primary key (fk_grupo, data_hora));

select* from aluno;
select* from grupo;
select* from professor;
select* from avaliacao;


insert into grupo values
(null, 'grupo_01', 'projeto de vacinas'),
(null, 'grupo_02', 'projeto de café'),
(null, 'grupo_03', 'projeto de cacau'),
(null, 'grupo_04', 'projeto de presença em onibus');

insert into aluno values
(null, '01221068', 'Luiz','luiz@sptech.com',3),
(null, '01221069', 'Bia','bia@sptech.com',1),
(null, '01221070', 'João','joao@sptech.com',2),
(null, '01221071', 'Mateus','mateus@sptech.com',4),
(null, '01221072', 'joaquin','joaquin@sptech.com',1),
(null, '01221073', 'ana','ana@sptech.com',2),
(null, '01221074', 'maria','maria@sptech.com',3),
(null, '01221075', 'raquel','raquel@sptech.com',4),
(null, '01221076', 'marlon','marlon@sptech.com',4),
(null, '01221077', 'vitor','vitor@sptech.com',3),
(null, '01221078', 'raissa','raissa@sptech.com',2),
(null, '01221079', 'lucas','lucas@sptech.com',1);
update aluno set email = 'joaquin@sptech.com' where id_aluno = '05'; 

insert into professor values 
(null, 'Caio', 'Algoritmo'),
(null, 'Alex', 'branco de dados'),
(null, 'thiago', 'Socioemocional'),
(null, 'Fernanda', 'PI'),
(null, 'Eduardo', 'ArqComp');

select* from aluno;
select* from grupo;
select* from professor;
select* from avaliacao;

insert into avaliacao values 
(1,10000,10001,null, 2022-05-01,'8.1'),
(2,10001,10004,null, 2022-03-01,'9.3'),
(3,10002,10003,null, 2021-08-01,'6.7'),
(4,10003,10000,null, 2022-02-01,'7.4');

