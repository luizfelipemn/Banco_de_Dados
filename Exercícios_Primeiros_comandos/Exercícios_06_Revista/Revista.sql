create database Revista;
use Revista;
create table Revista 
(idRevista int Primary key auto_increment,
Nome varchar (40),
Categoria varchar (30)
);
insert into Revista (nome) value
('Epoca'),
('Veja'),
('Quatro Rodas'),
('Isto É');
select* from revista;
-- Atualize os dados das categorias das 4 revistas inseridas. Exibir os dados da tabela novamente para verificar se atualizou corretamente.
update revista set Categoria = 'Notícias' where idRevista = '01' ;
update revista set Categoria = 'Notícias' where idRevista = '02' ;
update revista set Categoria = 'Carros' where idRevista = '03' ;
update revista set Categoria = 'Notícias' where idRevista = '04' ;
select* from revista;
-- Insira mais 3 registros completos
-- Exibir novamente os dados da tabela.
insert into Revista (nome,categoria) value 
('Vogue','Moda'),
('Superinteressante','Curiosidades'),
('Galileu','Ciência');
select* from revista;
-- Exibir a descrição da estrutura da tabela
describe revista;
-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres.
-- Exibir novamente a descrição da estrutura da tabela, para verificar se alterou o tamanho da coluna categoria
alter table Revista modify column Categoria varchar (40);
describe revista;
-- Acrescentar a coluna periodicidade à tabela, que é varchar(15).
alter table revista add periodicidade varchar (15);
select* from revista;
-- Excluir a coluna periodicidade da tabela.
alter table revista drop column periodicidade;
select* from revista;
drop database revista;