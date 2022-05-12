               -- RESUMO COMANDOS SQL --


               -- Criação da database e tabela -- 
-- Para começarmos devemos primeiramente criar um banco de dados utilizando o comando:
create database Resumo;
-- OBS: database significa banco de dados em ingles. 
-- Após usar o comando "create database" em seguida nomeamos esse banco de dados e apertamos CTRL+Enter.
-- OBS: O comanddo CTRL+Enter tem a função e efetivar o comando que nós demos (rodar o comando). Não podemos esquecer que no SQL TODO COMANDO acaba com ";". 

-- Após criarmos nossa database (banco de dados) devemos dar o comando para usar ele:
use Resumo;
-- Esse comando "use" seguido do nome da database ira efetivar a database que criamos acima e apartir de agora tudo que fazermos ira ser dentro dela.
-- OBS: Podemos ver que nossa database foi escolhida para uso se olharmos no canto esquerdo. Lá poderemos ver que nossa data base ficou em NEGRITO, assim podemos ter a confirmação visual que estamos utilizando ela. 

-- Em seguida devemos criar nossa tabela (o conteudo que ficara dentro de nosso banco de dados). Para isso usamos o comando:
create table Funcionarios(
Id_funcionario int auto_increment primary key,
Nome varchar(40),
Setor varchar(40),
Email varchar(40),
Endereço varchar(40),
Salario int
);

-- Aqui iremos descrever o que cada comando faz em sequencia: 
-- "creata table" é o comando para criarmos uma tabela, usamos ele seguido do nome que demos para a tabela. No nosso exemplo acima o nome foi "Funcionarios". 
-- OBS: Ao utilizarmos o comando para criar tabela ele seguira uma esturura. Como pode ver acima é: create table Funcionario (); Não podemos esquecer de abrir e fechar () e finalizar com ;
-- OBS²: Toda a estutura da nossa tabela ira ficar dentro das (AQUI DENTRO); como vc pode ver acima. Estrutura da tabela seria as colunas dela, na nossa tabela funcionarios ela tem as colunas, Nome, Setor, email, endereço e salario, então podemos falar que a estutura da nossa tabela se compem delas. 
-- "int" é o comando que define que dentro daquela coluna apenas numetor inteiros poderam ser digitados. Ao usar "int" descrevemos aquela coluna como numerica. 
-- "auto_increment" é o comando que ira gerar um numero para cada linha da tabela de modo automatico. Então conforme formos adicionando Nome, Setor, email, endereço e salario a coluna de Id_funcionario ira ter um numero que sera gerado automaticamente e não se repetira. 
-- "primary key" este comando é muito importate. Ele ira definir qual coluna tera informações UNICAS na sua tabela. Nomalmente a primary key sera o ID da tabela, pois o ID será um numero que não ira se repetir em toda a tabela. 
-- Exemplo de primaty key, tento em mente que utilizaremos o INT (numeros inteiros) como ID de nossos funcionarios, podemos concondar que esses numeros não iram se repetir, pois, a cada funcionario que adicionarmos na tabela ira gerar um numero de ID unico para ele, como por exemplo: 
-- Continuação do exemplo (primary key): Você adicionou o funcionario João a tabela, ele recebeu um ID de 1, em seguida adicionou o Pedro a tabela ele ira rreceber o ID de numero 2 e por ai em diante. Mas podemos concordar que nomes podem se repetir, como por exemplo você pode ter 2 ou mais funcionarios com o nome de Pedro, vamos supor que o proximo funcionario que você adicione seja outro Pedro. 
-- Continuação do exemplo (primary key): Ao adicionar o outro Pedro ele recebera um ID de numero 3, então por mais que tenha mais funcionarios com nomes iguais ou parecidos eles terão numeros de ID unicos, sendo assim serão identificados de maneira Unica e é ai que entra a Primary Key. 
-- Continuação de explicaçõa primary key: Quando definimos um ID numerico unico para cada funcionario o SQL ainda não entende que eles são unicos, agora quando classificamos ele como primary key como pode ver na criação da tabela acima, é como se nós estivessemos dizendo ao sistema que aquela comuna (no nosso caso ID_funcionario) ela é unica e nunca ira se repetir. Isso possibilita a nos termos funcionarios com nomes, setores e salarios iguais e mesmo assim eles consinuaram tendo uma identificação unica.
-- OBS: Por isso é importante definirmos a primary key em um dado que seja unico e que não venha a ser preciso mudar com o passar o tempo, por isso que nomalmente usamos uma idenfificação numerica (INT) e camamos ela de ID (identificação). 
-- OBS²: Cada tabela pode ter apenas uma Prymary Key. 
-- "varchar" ou apenas "char" é o comando que como pode ver acima é seguido de todos os outros campos (culunas). O varchar define quantos caracteres pode se ter naquele campo. Por exemplo o Nome, ele pode ter até 40 caracteres.
-- OBS: A diferença entre Varchar e Char é que no varchar nós iremos determinar um valor maximo para aquele campo, como pode ver acima a campo Nome é varchar(40) então ele pode ter de 0 a 40 catacteres. Já o char ele exige uma quantia de caracteres fixa, nem mais nem menos. Por exemplo, se fosse "nome char(40)" o usuario seria obrigado a preencer os 40 caracteres exigidos, nem mais nem menos. 
-- "INT" no salario podemos ver que utilizamos o int novamente, para mostrar que naquele campo apenas numeros inteiros podem ser digitados. 

-- Podemos ver a estrutura tecnica de nossa tabela usando o comando:
desc funcionarios;
-- Com ele vemos a estrutura e caracteristicas de nossa tabela. 

                              -- Inserindo e editando dados da tabela --

-- Apos estruturamos as nossa tabela da nossa maneira devemos inserir os valores, preencher os dados da nossa tabela, para isso utilizamos o comando: 
insert into Funcionarios (nome, setor, email, endereço, salario) values
('Pedro', 'UTI', 'pedro.henrique@gmail.com', 'Rua Amador', 4500),
('Luiz', 'Administração', 'luiz@gmail.com', 'Av Juiz', 7410),
('Sidnei', 'Manutenção', 'sidnei.barboza@hotmail.com', 'Rua Ananai', 6350),
('Beatriz', 'Psicologia', 'bia@outlook.com', 'Av Birigui', 78000),
('Debora', 'Clinica medica', 'debora.paula@gmail.com', 'Rua Nordestina', 6900), 
('Livia', 'Nutrição', 'livi.li@ig.com.br', 'Rua blabli', '5500'),
('Leonardo', 'UTI', 'leo@gmail.com', 'Rua Jurema', 5000),
('Leonardo', 'UTI', 'leo.campos@gmail.com', 'Rua Jurema', 5000),
('Debora', 'Clinica medica', 'debora.paula@hotmail.com','Rua Ananai', 6350),
('Debora', 'Clinica medica', 'debora.paula@ig.com.br', 'Rua Tupi', 45610);

                              -- Comando select-- 

-- Agora vamos visualizar nossa tabela utilizando o comando:
select * from Funcionarios;
-- Select é o comando para podemos ver a estutuda e dados da nossa tabela.
-- O * significa que nós queremos queremos que todos os campo da tabela sejam mostrados. Podemos escolher o que queremos que apareça, como por exemplo:
select nome from funcionarios;
-- Nesses caso apenas os nomes da tabela que desejammos. Podemos substituir o * por qualquer coluna que queremos que apareça, podemos escolher até mais de um item, como por exemplo:
select nome, email, salario from funcionarios;
-- Devemos nos lembrar que apos usar o select seguiremos com o nome da coluna e teminamos com "from" que indica em qual tabela ele deve procurar as informações e finalizar com o nome da tabela.


                               -- Comando select com where --

-- Podemos utilizar o select juntamente com o "where" após ele colocamos a coluna que queremos que ele busque e depois do = a palavra chave que queremos que ele busque:
select * from Funcionarios where setor = 'UTI';
-- Aqui nos fizemos uma busca na tabela Funcionarios só que desta vez utilizamos o where para indicar que nós queriamos que aparecesse os funcionarios que trabalham no setor da UTI. 
-- Podemos solicitar para vermos apenas os itens diferentes de algo:
select *  from Funcionarios where setor !='UTI';
-- Aqui utilizamos a mesma estrutura do comando de cima, mas com a diferença de que ao inves de usarmos o "=" utilizamos o "!=" que é o sinal de difente, então solicitamos para ele mostrar os dados de todos que forem diferente do setor UTI. 


                                -- Comando select com where e like -- 
                                
-- Outra forma pode ser utilizando o where juntamente com o like:
select * from Funcionarios where nome like 'L%';
-- Aqui utilizados a busca de uma maneira que ele ele iria identificar os funcionarios pela coluna do nome, só que iria apenas aparecer oa nome que começassem com a letra L.
-- Podemos utilizar esse comando apenas mundando o final como nos exemplos a seguir:
select * from Funcionarios where nome like '%o'; -- Aqui especificamos que queromos buscar na coluna de nomes, nomes que terminam com o.
select * from Funcionarios where endereço like '%u_'; -- Aqui especificamos que queremos buscar na coluna endereço, um endereço que tenha a penultima letra U.  


                                   -- Comando order by -- 
 
-- Agora ordemanos a tabela por ondem alfabetica dos nomes:
select * from Funcionarios order by Nome;
-- order by é o comando responsavel por apresentar a tabela da forma que vc soliciar, como no exemplo acima pedimos para ele ordenar por onder alfabetica utilizando a coluna de nomes, mas podemos fazer de forma decrescente também:
select * from Funcionarios order by nome desc;
-- acrescentando o desc no final do comando iramos especificar que queremos em ordem decrescente. 
-- OBS: o order by pode ser utilizado em qualquer coluna da tabela. 

                                     -- Comando Update --

-- Para atualizar um dado da tabela também temos um comando:
update Funcionarios set salario = 9000 where id_funcionario = 9;
-- A estutura desse codigo consiste em usar o UPDATE o nome da tabela SET nome da coluna da tabela = após o sinal de igual o dado atualizado da maneira que você quer WHERE nome da coluna de id = numero de ID daquela linha onde deseja mudar o dado. 
-- OBS: Aqui vemos uma importante utilização da chave primaria, pois nós mudamos o salario da funcionaria Debora do setor da clinica medica, mas como pode ver em nossa tabela existem 3 Deboras e todas trabalham na clinica medica, o que faz de cada Debora unica é seu numero de ID que designamos como chave primaria, que no nosso exemplo é "9". Então por mais que alguns dados sejam parecidos o Numero de ID (que é nossa primary key) indentifica para o sistema exatamente qual queremos atualizar. Se você der um select * from Funcionarios agora, verá que o salario dela foi de 6350 para 9000.
-- Podemos mudar um dado em varios lugares ao mesmo tempo:
update Funcionarios set setor = 'raio-x' where id_funcionario in (1,3);
-- Substituindo o "=" por "in()" podemos alterar varios campos de uma vez, apenas devemos colocar os numero da primary key da linha que queremos alterar dentro das (). 

                                 -- Comando alter table --

-- Podemos adicionar colunas a tabela:
alter table Funcionarios add column Tempo_de_Casa int;
-- Utilizaremos o ALTER TABLE seguido do nome da tabela o comando ADD COLUMN nome da coluna que queremos adicionar e o tipo de coluna (varchar/char/int) igual quando criamos a tabela.

-- Podemos modificar o nome de uma coluna da tabela:
alter table Funcionarios rename column Tempo_de_casa to Tempo_trampado;
-- Aqui utilizamos ALTER TABLE seguido do nome da tabela com o comando RENAME COLUMN o nome antigo da coluna TO nome que atual que você quer dar a coluna. 

-- Podemos alter o tipo da coluna (varchar/char/int):
alter table Funcionarios modify column Tempo_trampado varchar(40);
-- Aqui alteramos a coluna Tempo_trampado de INT para varchar(40) (alteramos a caracteristica dela de INT(numero inteiro) para varchar(40) possibilitando que o usuario escreva qualquer caractere não so numero inteiros).

-- Podemos excluir uma coluna:
alter table Funcionarios drop column tempo_trampado;
-- Aqui utilizaaremos o ALTER TABLE nome da tabela com o comando DROPCOLUMN e o nome da coluna que queremos excluir. 

                              -- Comando delete --

-- Podemos deletar os dados de uma determinada linha:
delete from Funcionarios where id_funcionario =3; 
-- Aqui utilizamos o DELETE FROM nome da tabela WHERE nome da coluna que é a primary key = numero da linha (numero do ID). 
-- OBS: Importante ressaltar que ao apagar aquela linha a sequencia de ID ira continuar, se você observar o ID de numero 3 foi apagado e a sequencia continuou a mesma, após o 2 veio o 4 pois a 3 foi apagada.  

                              -- Comando data e datatime --

-- Alem do varchar e do INT temos mais duas possibilidades de colunas a DATA e a DATATIME:
alter table Funcionarios add column Data_nascimento date; 
-- neste caso os numero colocados neste campo Data_nascimento ficaram com o formado YYYY-MM-DD, a forma de preencher esse campo corretamente seria ('2000-01-11'):
update funcionarios set Data_nascimento = '2000-01-11' where id_funcionario = 1; -- Neste caso fizemos uma atualização na nossa tabela e conseguimos dar 2 exemplos de uma vez, o primeiro sendo como a fica o formato da data, basta você dar um selecct * from que verá e tambem vemos como adicionar um novo dado a um funcionario da tabela. 

alter table Funcionarios add column Ponto datetime;  
-- Neste caso alem da data colocamos horaro tambem que ficara com o formato YYYY-MM-DD HH-MM-SS:
update funcionarios set Ponto = '2022-02-28-22-30-44' where id_funcionario = 2; -- Neste caso pode ver como fica quando uma data e hora é informada e como informar.
-- OBS: lembrando que nesse exemplo colocamos o DATE E DATETIME com ALTER TABLE mas eles podem ser colocados quando você esta fazendo sua tablela em CRATE TABLE você deve apenas substituir o varchar ou int pelo date ou datetime, vai conforme o que você deseja;

                         -- Comandos que mexem com a estrutura da tabela --

-- Podemos zerar uma tabela (rezetar todos os dado): 
truncate table funcionarios; 

-- Podemos deletar uma tabela:
drop table Funcionarios;

-- Podemos deletar banco de dados:
drop database Funcionarios; 

                        -- Check --
	
    -- Podemos escolher quais palavras podem ser entendidas e armazenadas no nosso database:
alter table Funcionarios add column Sexo varchar (50);
alter table Funcionarios add check (Sexo = 'masculino' or Sexo= 'feminino' or sexo = 'Não informar');
-- Aqui nós adicionamos uma coluna com o uma CHECK esse comando coloca uma condição para nós, que naquele campo apenas palavras que nós pré definimos serão aceitas, no nosso exemplo essas palavras foram "masculino, feminino, não informar" se tentarmos adicionar outra coisa que na coluna de sexo o sistema não ira aceitar. 
-- Aqui nesse exemplo nós adicionamos um CHECK a uma coluna que criamos, mas podemos definir o cheke durante a criação da nossa tabela:

create table Participantes (
Id_participante int auto_increment primary key,
Nome varchar(50),
Condicao Varchar (50),
check (Condicao = 'confirmado' or Condicao = 'nao confirmado')
);
-- Aqui criamos um tabela com o nome de Participantes e na condição determinamos que apenas "corfirmado" ou "não confirmado" pode ser aceito pelo sistema, se você tentar adicionar outras coisas fora essas palavras ela não será aceita. 
-- CHECK é seguido de () e dentro delas você determina o nome da coluna que deseja impor uma condição seguido do sinal de = e os caracteres que serão aceitos naquele campo.


						-- OBSs gerais--
                        
 -- No SQL o drop sempre estará voltado para a estrutura da tabela e o delete para os cados da tabela. 
 -- Toda vez que virmos DELETE ele se refera aos dados da tabela
 -- Toda vez que virmos DROP ele se refere a estrutura da tabela (colunas que a compoe a tabela).
 -- ATENÇÃO sempre que utilizarmos o Update TEMOS QUE UTILIZAR WHERE se não podemos atualizar todda a tabela. 



