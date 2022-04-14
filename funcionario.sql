create database estudo;
use estudo;

 create table funcionarios (
 id_funcionario int primary key auto_increment,
 nome varchar(50),
 salario decimal(7,2),
 check (salario > 0),
 chefe int,
 foreign key (chefe) references funcionarios (id_funcionario))
 auto_increment = 3000;

desc funcionarios;
select* from funcionarios;

insert into funcionarios values 
(null, 'alice', 20000, null);
insert into funcionarios values 
(null, 'pacheco', 8000, 3006),
(null, 'zeca', 2000, 3007);

select c.nome as chefe ,f.nome as funcionario from funcionarios as c join funcionarios as f on c.id_funcionario=f.chefe;

create table estacionamento (
id_estacionamento int primary key auto_increment,
carro varchar(50),
cor varchar(40),
fk_dono int,
foreign key (fk_dono) references funcionarios (id_funcionario));

select* from estacionamento;

insert into estacionamento values
(null,'astra', 'cinza',3008),
(null, 'jetta', 'preto' , 3007),
(null, 'rand lover', 'bordo', 3006);

select e.carro as carro, f.nome as dono from estacionamento as e join funcionarios as f on e.fk_dono = f.id_funcionario;  



