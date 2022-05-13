create database desafio;
use desafio;
create table jogador (
id_jogador int primary key auto_increment,
nome_jogador varchar(45),
salario decimal (10,2),
fk_time int,
foreign key (fk_time) references clube (id_time));

create table clube (
id_time int primary key auto_increment,
nome_time varchar(45),
faturamento_anual decimal (10,2),
fk_pais int,
foreign key (fk_pais) references pais (id_pais));

create table pais (
id_pais int primary key auto_increment,
nome_pais varchar(45),
populacao varchar(45));

insert into jogador VALUES 
(null, 'jorge', '32000',1),
(null,'arthur', '167000',2),
(null,'ronaldo', '2000000',3);

insert into clube VALUES 
(null, 'Juventos', '120000',1),
(null,'Napoli', '3670007',2),
(null,'Cruzeiro', '9070021',3);

insert into pais VALUES 
(null, 'Brasil', '200'),
(null,'Italia', '60'),
(null,'Espanha', '47');
select* from ;
select j.nome_jogador as 'Jogador', c.nome_time as 'Time do jogador', p.nome_pais as 'Pais' from jogador as j 
join clube as c on c.id_time = j.fk_time join pais as p on c.fk_pais = p.id_pais;

select max(j.salario), p.nome_pais as 'Pais' from clube as c 
join pais as p on p.id_pais = c.fk_pais join jogador as j on j.fk_time = c.id_time; 


 
