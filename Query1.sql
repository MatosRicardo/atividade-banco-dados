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
('Joana', '2002-02-08', '12345678945', 'f', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Lucas', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Antonio', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Fernando', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Ingrid', '2002-02-08', '12345678945', 'f', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Vitoria', '2002-02-08', '12345678945', 'f', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Paulo', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Raphael', '2002-02-08', '12345678945', 'm', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Ana', '2002-02-08', '12345678945', 'f', 'rua antonio piriri 90', 'paralalelo@gmail.com', '55119855464'),
('Milene', '2002-02-08', '12345678945', 'f', 'rua antonio piriri 90', 'cacaushow@gmail.com', '55119855464');


describe Paciente;   /*descrição da tablea */
select * from Paciente;    /* seleciona a tabela */ 

select nome_paciente, genero_paciente from Paciente; /* Seleciona a tabela coluna, no caso duas*/

alter table Paciente
add column convenio_paciente varchar(50); /* Altera a estrtutura dessa tabela, adicionando uma coluna a mais*/

update Paciente /*alteração em registros */
set convenio_paciente = "NotreDame"
WHERE pk_id_paciente IN (2, 3, 4); /* where, especifica onde*/  /* adiciona em varios de uma vez*/

SET SQL_SAFE_UPDATES = 0;

alter table Paciente
add column valor_convenio decimal(10,2);

update Paciente
set valor_convenio = "100.00"; /*adicionou de forma geral */

delete from Paciente  /* deleta as infos selecionadas*/
where pk_id_paciente = 3;

/* Update e delete sem where está ERRAADOOO*/




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

alter table Doutor
add column doutor_especialidade varchar(100) not null;

update Doutor /*alteração em registros */
set doutor_especialidade = "Odontologia Legal"
WHERE nome_doutor = "Gomes";

alter table Doutor
change column nome_dentista nome_do_dentista varchar(100); /* altera o nome da tablea */

select * from Doutor;

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

describe Doutor;
select * from Doutor; 


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


/*-----------------------ATENÇÃO!!!--------------------*/
start transaction /* preparo para exclusão de registros */
 
delete from tb_Paciente; /* Deletando TODOS OS REGISTROS da sua tabela */
select * from tb_Paciente;
 
Rollback; /* volta atrás (Brinks!! rs) */
Commit; /* confirma a exclusão */

/* -------------------------------------------------------------- ATIVIDADE --------------------------------------------------- */
create database db_Escola;
use db_Escola;

create table tb_aluno (
	pk_id_tb_aluno int auto_increment primary key, 
    nome_aluno varchar(100) not null,			
    data_nasc_aluno datetime, 
    cpf_aluno char(12),
    nome_mae_aluno varchar(50),
    endereco_aluno varchar(50)
);

insert into tb_aluno (nome_aluno, data_nasc_aluno,	cpf_aluno, nome_mae_aluno,	endereco_aluno) 
 values ('Ferrari', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Luis', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Antonio', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Fernanda', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Debora', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Ana', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Ingrid', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Matheus', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Henrique', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90'),
 ('Humberto', '2002-05-08', '400000000000', "fernanda", 'rua antonio piriri 90');


describe tb_aluno;
select * from tb_aluno;

create table tb_professor (
	pk_id_tb_professor int auto_increment primary key, 
    nome_professor varchar(100) not null,			
    data_nasc_professor datetime, 
    cpf_professor char(12),
    contato_professor varchar(50),
    endereco_professor varchar(50)
);

insert into tb_professor (nome_professor, data_nasc_professor,	cpf_professor, contato_professor,	endereco_professor) 
 values ('Ferrari', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Luis', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Antonio', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Fernanda', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Debora', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Ana', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Ingrid', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Matheus', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90'),
 ('Henrique', '2002-05-08', '400000000000', "1198503609", 'rua antonio piriri 90');

describe tb_professor;
select * from tb_professor;
