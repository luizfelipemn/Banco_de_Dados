create database Filme;
use Filme;
create table Filme (idFilme int Primary key,
título varchar (50),
genero varchar (40),
direto varchar (40)
);
select* from Filme;
insert into Filme values
('01', 'Ilha do Medo', 'Suspense', 'Martin Scorsese'),
('02', 'Hancock', 'Acão', 'Peter Berg'),
('03', 'A Origem', 'Ficção Científica', 'Christopher Nolan'),
('04', 'O Lobo de Wall Street', 'Comédia', 'Martin Scorsese'),
('05', 'SE7VEN', 'Suspense', 'David Fincher'),
('06', 'Clube da Luta', 'Ação', 'David Fincher'),
('07', 'Os Invasores', 'Suspense', 'Baran bo Odar'),
('08', 'Star Wars IV', 'Ficcção Cientifica', 'George Lucas'),
('09', 'Senhor dos Aneis II', 'Fantasia', 'Peter Jackson'),
('10', 'Divertidamente', 'Animação', 'Pete Docter');
-- Exibir todos os dados da tabela;
select* from Filme;
-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
alter table Filme add protagonista varchar (50) ;
-- Atualizar o campo protagonista de todas os filmes inseridos;
update Filme set protagonista = 'Leonardo DiCaprio' where idFilme = '01';
update Filme set protagonista = 'Will Smith' where idFilme = '02';
update Filme set protagonista = 'Leonardo DiCaprio' where idFilme = '03';
update Filme set protagonista = 'Leonardo DiCaprio' where idFilme = '04';
update Filme set protagonista = 'Brad pitt' where idFilme = '05';
update Filme set protagonista = 'Edward Norton' where idFilme = '06';
update Filme set protagonista = 'Tom Schilling' where idFilme = '07';
update Filme set protagonista = 'Mark Hamill' where idFilme = '08';
update Filme set protagonista = 'Elijah Wood' where idFilme = '09';
update Filme set protagonista = 'Kaitlyn Dias' where idFilme = '10';
select* from Filme;
-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
alter table Filme modify column direto varchar (150);
alter table Filme rename column direto to diretor;
describe Filme diretor;
-- Atualizar o diretor do filme com id=5;
update Filme set diretor = 'Tarantino' where idFilme = '05';
-- Atualizar o diretor dos filmes com id=2 e com o id=7;
update Filme set diretor = 'Alejandro González Iñárritu' where idFilme = '02';
update Filme set diretor = 'Guillermo del Toro' where idFilme = '07';
select idFilme,diretor from Filme;
-- Atualizar o título do filme com o id=6;
update Filme set título = 'Clube de Compras Dallas' where idFilme = '06';
select idFilme,título from Filme;
-- Excluir o filme com o id=3;
delete from Filme where idFilme = '03';
select idFilme from Filme;
-- Exibir os filmes em que o gênero é diferente de drama;
select* from Filme where genero != 'drama';
-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
select* from Filme where genero = 'suspense';
-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
describe Filme;
-- Limpar os dados da tabela; 
truncate table Filme;
select* from Filme;
drop database Filme;