create database Atleta;
-- banco de dados criado;
use Atleta;
-- dar use + ctrl enter, para o banco de dados ser usado;
create table Atleta (
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);
-- criar tabelas com informações solicitadas pelo professor;
select* from atleta;
insert into Atleta values 
('01', 'André', 'Atletismo', '6'),
('02', 'jorge', 'judô', '3'),
('03', 'Maria', 'Atletismo', '5'),
('04', 'Paulo', 'Futebol', '12'),
('05', 'José', 'Judô', '1'),
('06', 'Ana', 'Futebol', '6'),
('07', 'Beatriz', 'Natação', '3'),
('08', 'Amadeu', 'Natação', '3'),
('09', 'Felipe', 'Basquete', '7'),
('10', 'Mayara', 'Basquete', '4');
-- Inserir dados na tabela;
select* from Atleta;
-- Atualizar a quantidade de medalhas do atleta com id=1;
update Atleta set  qtdMedalha = '4' where idAtleta = '01';
-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
update Atleta set qtdMedalha = '6' where  idAtleta = '02';
update Atleta set qtdMedalha = '3' where  idAtleta = '03';
-- Atualizar o nome do atleta com o id=4;
update Atleta set nome = 'Ronaldo' where  idAtleta = '04';
-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
alter table Atleta add dtNasc date;
-- Atualizar a data de nascimento de todos os atletas;
update Atleta set dtNasc = '1997-08-21' where  idAtleta = '01';
update Atleta set dtNasc = '2000-08-08' where  idAtleta = '02';
update Atleta set dtNasc = '2002-03-18' where  idAtleta = '03';
update Atleta set dtNasc = '1999-06-13' where  idAtleta = '04';
update Atleta set dtNasc = '1999-05-11' where  idAtleta = '05';
update Atleta set dtNasc = '1990-07-17' where  idAtleta = '06';
update Atleta set dtNasc = '1995-12-30' where  idAtleta = '07';
update Atleta set dtNasc = '2001-09-01' where  idAtleta = '08';
update Atleta set dtNasc = '2000-01-09' where  idAtleta = '09';
update Atleta set dtNasc = '1998-03-26' where  idAtleta = '10';
select* from Atleta;
-- Excluir o atleta com o id=5;
delete from Atleta where idAtleta = '05';
select* from Atleta;
-- Exibir os atletas onde a modalidade é diferente de natação;
select* from Atleta where modalidade != 'Natação';
-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
select* from Atleta where qtdMedalha >= 3;
-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
alter table Atleta modify column modalidade varchar (60);
-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
describe Atleta modalidade;
-- Limpar os dados da tabela; 
truncate table Atleta; 
select* from Atleta;






