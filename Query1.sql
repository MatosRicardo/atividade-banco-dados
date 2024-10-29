create database Consultorio; /*criando o banco de dados */
use Consultorio; /*Acessando o banco */
drop database Consultorio;	/*apagando banco*/

create table Paciente (
	pk_id_paciente	int auto_increment primary key, /* numeros interios */
    nome_paciente varchar(100) not null,			/* numero de caracteres */
    data_nasci_paciente date,
    cpf_paciente char(11), /* numeros confirmados(tamanhos certos) */
    genero_paciente enum("f","m","o"),			/* sabe o tamanho que sera colocado*/
    endereco_paciente varchar(100),
    email_paciente varchar(50),
    telefone_paciente char(11)
);


insert into Paciente (	nome_paciente, data_nasci_paciente,	cpf_paciente, genero_paciente,	endereco_paciente,	email_paciente,	telefone_paciente) 
values	('Ricardo Ribeiro De Matos', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Joana', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Lucas', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Antonio', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Fernando', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Ingrid', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Vitoria', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Paulo', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Raphael', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Ana', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Milene', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'cacaushow@gmail.com', '55119855464');


describe Paciente;   /*descrição da tablea */
select * from Paciente;    /* seleciona a tabela */  /* mer atributo, sql é campo(coluna)*/ /*mer é entidade, no SQL tabela*/

create database Doutor;
use Doutor;

create table Doutor (
	pk_id_doutor	int auto_increment primary key, /* numeros interios */
    nome_doutor varchar(100) not null,			/* numero de caracteres */
    nasci_doutor date,
    cro_doutor char(7), /* numeros confirmados(tamanhos certos) */
    genero_doutor enum("f","m","o"),			/* sabe o tamanho que sera colocado*/
    endereco_doutor varchar(100),
    email_doutor varchar(50),
    telefone_doutor char(11)
);

insert into Doutor (nome_doutor, nasci_doutor,	cro_doutor, genero_doutor,	endereco_doutor,	email_doutor,	telefone_doutor) values ('Ferrari', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Lucildo', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Fernando', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Felipe', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Gomes', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Fisk', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Spider', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Toni stark', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('MClaren', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Golden', '2002-05-08', '1234567', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464');
drop table Doutor;
describe Doutor;
select * from Doutor; 



create table Doutor (
	pk_id_doutor	int auto_increment primary key, /* numeros interios */
    nome_doutor varchar(100) not null,			/* numero de caracteres */
    nasci_doutor date,
    cro_doutor char(7), /* numeros confirmados(tamanhos certos) */
    genero_doutor enum("f","m","o"),			/* sabe o tamanho que sera colocado*/
    endereco_doutor varchar(100),
    email_doutor varchar(50),
    telefone_doutor char(11)
);

create database Consulta;
use Consulta;

create table Consulta (
	pk_id_consulta	int auto_increment primary key, /* numeros interios */
    local_consulta varchar(100) not null,			/* numero de caracteres */
    data_consulta datetime, /* numeros confirmados(tamanhos certos) */
    descricao_consulta varchar(100)		/* sabe o tamanho que sera colocado*/
);

insert into Consulta (local_consulta, data_consulta, descricao_consulta)
values ('Avenida antontio 45', '2024-10-29 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-11-29 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-10-30 12:26:00', 'realização de extracao'),
('Avenida antontio 45', '2024-10-01 12:26:00', 'realização de retirada de aparelho'),
('Avenida antontio 45', '2024-10-02 12:26:00', 'realização de colocar aparelho'),
('Avenida antontio 45', '2024-10-03 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-10-04 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-10-05 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-10-06 12:26:00', 'realização de limpeza'),
('Avenida antontio 45', '2024-10-07 12:26:00', 'realização de limpeza');

select * from Consulta;