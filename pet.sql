create database Pet;
use Pet;
create table cliente (
id_cliente int primary key auto_increment,
nome varchar (40),
telefone_fixo varchar (30),
celular  varchar (30),
endereco varchar (50));
insert into cliente (nome, telefone_fixo, celular, endereco)
values ( 'joão figueredo', '55473383', '921236478', 'rua menezes'),
	   ( 'vitoria figueredo','95478113', '975879237', 'rua lucas nogueira'),
       ('marcos castro', '87589212', '912458735', 'rua felipe marques');
    

drop table pets;


create table pets (
id_pet int primary key auto_increment, 
tipo varchar(30),
nome varchar(30), 
data_de_nasc date,
fk_cliente int,
foreign key (fk_cliente) references cliente (id_cliente)) auto_increment=101;
 
 desc pets;

 insert into pets (tipo, nome, data_de_nasc, fk_cliente)
 values ('cachorro', 'lilo', '2018-02-11','2'),
		('cachorro', 'pele', '2021-04-30','3'),
        ('gato','barto','2016-07-08','2'),
        ('hamster', 'pyke', '2021-09-14','1');
        
        
        alter table pets add column fk_raca int;
        alter table pets add foreign key (fk_raca) references raca (id_raca); 
        select*from pets;
        
        update pets set fk_raca=300 where id_pet=101;
        update pets set fk_raca=301 where id_pet=102;
        update pets set fk_raca=302 where id_pet=103;
         update pets set fk_raca=303 where id_pet=104;
        
      
        select* from pets;
        
        select * from clientes;
        
      alter table clientes modify column nome varchar(80);
      
      select * from pets where tipo='cachorro';
      
      select nome, data_de_nasc from pets;
      
      select * from pets order by nome;
      
      select * from clientes order by endereco desc;
      
      select * from pets where nome like 'g%';
      
      select * from clientes where nome like '%azevedo';
      
     
     select * from cliente;
     
     
     
     select * from pets as P join clientes as C on fk_cliente = idCliente;
     
     select * from pets as P join clientes as C on fk_cliente = idCliente where idCliente=2;
     
     delete from pets where idPet= 103;
     
     select * from pets;
     

      
create table raca (
id_raca int primary key auto_increment,
 nome varchar(30),
 valor_medio decimal (7,2),
 check (valor_medio >= 0 )) auto_increment = 300;
 insert into raca 
 values (null, 'bigle','2000'),
		(null,'vira lata', '500'),
        (null,'persa','3599.99'),
        (null, 'turco', '350');
        
        select * from raca;
       
      insert into pets 
      values (null,'cachorro', 'gasp','2012-01-02',null,null,'44');
      
      insert into clientes
      values (null, 'joaquim phoenix', '41819947', '99173222', 'rua esquivel');
      
      
      select * from pets p left join clientes c on fk_cliente=idCliente;
      
      select * from pets p right join clientes c on fk_cliente=idCliente;
      
      select * from clientes left join pets on fk_cliente=idCliente;
      
      select * from clientes right join pets on fk_cliente=idCliente where fk_cliente is null;
      
      
      alter table cliente add column fk_indicado int;
      alter table cliente add foreign key (fk_indicado) references cliente (id_cliente);
      select* from cliente;
      
      insert into cliente (nome, telefone_fixo, celular, endereco, fk_indicado)values
      ('felipe', 55471383, 921231278, 'rua jovem',1),
      ('jose', 95471183, 92883131, 'rua javali',3),
      ('mateus', 7455383, 38338312, 'rua castelo branco', null);
      
      update cliente set fk_indicado = '01' where id_cliente= '02';
      update cliente set fk_indicado = '01' where id_cliente = '04';
      update cliente set fk_indicado = '02' where id_cliente = '03';
      
      
      select c.nome, i.fk_indicado,i.nome from cliente as c join cliente as i on c.id_cliente = i.fk_indicado;
      
      select i.nome, i.fk_indicado,c.nome from cliente as c left join cliente as i on c.id_cliente = i.fk_indicado;
      
      
      
      
      
      
      