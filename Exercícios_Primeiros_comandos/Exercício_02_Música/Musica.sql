create database Musica;
-- banco de dados criado;
use musica;
-- dar use + ctrl enter, para o banco de dados ser usado;
create table Musica (
idMusica int primary key,
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);
-- criar tabelas com informações solicitadas pelo professor;
select* from musica;
insert into musica values 
('01', 'Tempo Perdido', 'Mc Hariel', 'Funk'),
('02', 'Fallen Angel', 'Iron Maiden', 'Rock'),
('03', 'One', 'Metallica', 'Rock'),
('04', 'Vou Buscar', 'Mc Hariel', 'Funk'),
('05', 'Hey Brother', 'Avicii', 'Eletronica'),
('06', 'Dark Horse', 'Katy Perry', 'Pop'),
('07', 'The Trooper', 'Iron Maiden', 'Rock'),
('08', 'Chop Suey', 'System of a Down', 'Rock'),
('09', 'Deboche', 'Mc Davi', 'Funk'),
('10', 'Sail', 'Awolnation', 'Eletronica');
-- Exibir todos os dados da tabela
select* from musica;
-- Adicionar o campo curtidas do tipo int na tabela;

Alter table Musica Add curtidas int;
select* from musica;
-- Atualizar o campo curtidas de todas as músicas inseridas;
update Musica set curtidas = '4355' where  idMusica = '01';
update Musica set curtidas = '7494' where  idMusica = '02';
update Musica set curtidas = '1834' where  idMusica = '03';
update Musica set curtidas = '9571' where  idMusica = '04';
update Musica set curtidas = '8755' where  idMusica = '05';
update Musica set curtidas = '2592' where  idMusica = '06';
update Musica set curtidas = '4115' where  idMusica = '07';
update Musica set curtidas = '7415' where  idMusica = '08';
update Musica set curtidas = '5831' where  idMusica = '09';
update Musica set curtidas = '1628' where  idMusica = '10';
select* from musica;
-- Modificar o campo artista do tamanho 40 para o tamanho 80;
alter table Musica modify column artista varchar (80);
describe Musica artista;
-- Atualizar a quantidade de curtidas da música com id=1;
-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
-- Atualizar o nome da música com o id=5;
update Musica set curtidas = '9999' where  idMusica = '01';
update Musica set curtidas = '8888' where idMusica = '02';
update Musica set curtidas = '7777' where idMusica = '03';
update Musica set titulo = 'Wake Me Up' where idMusica = '05';
select* from Musica;
-- Excluir a música com o id=4;
delete from Musica where idMusica = '04';
select* from Musica;
-- Exibir as músicas onde o gênero é diferente de funk;
select* from Musica where genero != 'Funk';
-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select* from Musica where curtidas >= 20;
describe Musica;
truncate table musica;
select* from musica;


































