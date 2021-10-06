/*criação do banco de dados*/
create database db_pagamentos;

/*selecionando o banco de dados*/
use db_pagamentos;

/*criação da tabela de usuários*/
create table usuario (
	id int not null auto_increment,
	nome varchar(100) not null,
	imagem blob not null,
	nome_usuario varchar(30) not null,
	data_cadastro date,
	primary key ( id )
);

/*criação da tabela de cartões*/
  /*no campo "valido: 0 = cartão inválido
					  1 = cartão válido"*/
create table cartao (
	id int not null auto_increment,
	numero varchar(16) not null,
	cvv int(3) not null,
	data_expiracao date not null,
	valido boolean not null,
	data_cadastro date not null,
	primary key ( id )
);

/*criação da tabela de transações*/
create table transacao (
id int not null auto_increment,
id_usuario int not null,
id_cartao int not null,
valor decimal(12,2),
data_cadastro date,
primary key ( id )
);

/*inserção dos usuários na tabela*/
insert into usuario (nome, imagem, nome_usuario, data_cadastro) values  
    ('Isadora Figueiredo', 'C:\Users\Imagens\dorafigueiredo', 'dorafig', '2021-03-26' ),
	('Hellen Reis', 'C:\Users\Imagens\hellenreis', 'hellencreis', '2020-03-20' ),
	('Matheus Leão', 'C:\Users\Imagens\atheusleao', 'mathleao','2021-04-01' );

/*query que retorna os usuários em ordem alfabética*/
select * from usuario order by nome asc;

/*inserção dos cartões na tabela*/
insert into cartao (numero, cvv, data_expiracao, valido, data_cadastro) values  
    ('1111111111111111', '789', '2022-01-01', '1', '2020-03-21' ),
	('4111111111111234', '123', '2024-08-01', '1', '2021-03-26' ),
	('1234567812345678', '901', '2023-09-01', '0', '2021-04-06' );

/*query que retorna todos os cartões válidos em ordem crescente de cadastro*/  
select * from cartao where valido = 1 order by data_cadastro asc;

/*inserção das transações na tabela*/
insert into transacao (id_usuario, id_cartao, valor, data_cadastro) values  
    ('1', '2', '820.59', '2021-09-30' ),
	('2', '3', '31.01', '2021-08-25' ),
	('3', '1', '256.97','2021-07-18' );

/*query que retorna todas as transações em ordem decrescente, também retorna todos os dados de usuários e cartões presents nessa transação*/
select transacao.id_usuario, transacao.id_cartao, transacao.valor, transacao.data_cadastro,
	   usuario.nome, usuario.imagem, usuario.nome_usuario, usuario.data_cadastro,
       cartao.numero, cartao.cvv, cartao.data_expiracao, cartao.valido, cartao.data_cadastro
       from transacao left join usuario on usuario.id = transacao.id
       left join cartao on cartao.id = usuario.id order by transacao.data_cadastro desc;
