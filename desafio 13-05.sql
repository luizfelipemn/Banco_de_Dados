create database desafio;
use desafio;
create table jogador (
id_jogador int primary key auto_increment,
nome_jogador varchar(45),
salario decimal (10,2));

create table clube (
id_time int primary key auto_increment,
nome_time varchar(45),
faturamento_anual decimal (10,2));

create table pais (
id_pais int primary key auto_increment,
nome_pais varchar(45),
populacao varchar(45));

