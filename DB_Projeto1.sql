/*criação do banco de dados*/
create database db_projeto1;

/*seleção do banco de dados*/
use db_projeto1;

/*criação da tabela "transacao" */
create table transacao (
	id int not null auto_increment,
	tipo varchar(30) not null,
	nome varchar(50) not null,
	valor decimal (10,2),
	data_de_cadastro date,
	primary key ( id )
);

/*inserção de dados na tabela "transacao"*/
insert into transacao (tipo, nome, valor, data_de_cadastro) values 
('venda', 'Camisa Flamengo I', '299.00', '2021-10-05'),
('compra', 'Jersey Ravens NFL Away', '-499.00', '2021-10-03'),
('compra', 'Jersey Nets NBA Home', '-199.00', '2021-10-06'),
('venda', 'Jersey Pirates MLB Home', '899.00', '2021-10-01'),
('venda', 'Camisa Tobol II', '399.00', '2021-10-05');

/*Query que retorna todas as transações em odem crescente*/
select * from transacao order by data_de_cadastro asc;

/*Query que faz a soma de todos os valores da tabela 'transacao'*/
select sum(valor) from transacao where valor is not null;

/*Query de deleta todos os dados da tabela "transacao"*/
delete from transacao;