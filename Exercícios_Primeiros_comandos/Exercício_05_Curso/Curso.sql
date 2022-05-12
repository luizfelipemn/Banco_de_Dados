create database curso;
use curso;
create table curso 
(idCurso int Primary key,
Nome varchar (50),
Sigla varchar (3),
Cordenador varchar (50)
);
select* from curso;
alter table curso rename column Cordenador to Coordenador;
insert into curso value 
('01', 'Analise Desenvolvimento de Sistemas', 'ADS', 'Gerson'),
('02', 'Engenharia Quimica', 'EnQ', 'Eduarda'),
('03', 'Modelagem 3D', 'M3D', 'Fernanda');
-- Exibir todos os dados da tabela;
select* from curso;
-- Exibir apenas os coordenadores dos cursos;
select coordenador from curso;
-- Exibir apenas os dados dos cursos de uma determinada sigla;
select* from curso where sigla = 'ADS';
-- Exibir os dados da tabela ordenados pelo nome do curso;
select* from curso order by nome asc;
-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente;
select* from curso order by coordenador desc;
-- Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra;
select* from curso where nome like 'A%';
-- Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra;
select* from curso where nome like '%D';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.;
select* from curso where nome like '_n%';
-- Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.;
select* from curso where nome like '%c_';
-- Elimine a tabela.;
drop database curso;







