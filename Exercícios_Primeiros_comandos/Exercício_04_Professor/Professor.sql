create database Professor;
use Professor;
create table Professor 
(idProfessor int Primary key,
nome varchar (50),
especialidade varchar (40),
dtNasc date
);
select* from Professor;
insert into Professor value 
('01', 'Jefersson', 'Matemática', '1993-04-18'),
('02', 'Pedro', 'História', '1977-10-01'),
('03', 'Arthur', 'Banco de Dados', '1995-12-04'),
('04', 'Vitória', 'Química', '1989-04-18'),
('05', 'Yan', 'Matemática', '1983-02-22'),
('06', 'Ana', 'Português', '1974-04-18');
select* from Professor;
-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’,‘assistente’ ou ‘titular’;
alter table Professor add Função varchar (50);
update Professor set Função = 'Titular' where idProfessor = '01';
update Professor set Função = 'Assistente' where idProfessor = '02';
update Professor set Função = 'Monitor' where idProfessor = '03';
update Professor set Função = 'Titular' where idProfessor = '04';
update Professor set Função = 'Assistente' where idProfessor = '05';
update Professor set Função = 'Monitor' where idProfessor = '06';
select* from Professor;
-- Inserir um novo professor;
-- Excluir o professor onde o idProfessor é igual a 5;
insert into Professor value ('07', 'Ygor','ArqComp', '1999-06-18','Monitor');
delete from Professor where idProfessor = '05';
select* from Professor;
-- Exibir apenas os nomes dos professores titulares;
select nome from Professor where Função = 'Titular';
-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select especialidade,dtNasc from Professor where Função = 'Monitor';
-- Atualizar a data de nascimento do idProfessor igual a 3;
update Professor set dtNasc = '1992-05-23' where idProfessor = '03';
select idProfessor,dtNasc from Professor where idProfessor ='03';
-- Limpar a tabela Professor;
truncate table Professor;
select* from Professor;
drop database professor;






