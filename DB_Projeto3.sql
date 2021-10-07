/*criação do banco de dados*/
create database db_HashtagFinder;

/*selecionando o banco de dados*/
use db_HashtagFinder;

/*criação da tabela de pesquisa de hashtags*/
create table pesquisa (
	id int not null auto_increment,
	squad int not null,
	hashtag varchar(100) not null,
	data_pesquisa datetime not null,
	primary key ( id )
);

/*inserção dos dados de pesquisa*/
insert into pesquisa (squad, hashtag, data_pesquisa) values 
	("5", "lol", "2021-06-08 08:36:58"),
	("5", "flamengo", "2021-08-23 11:00:23"),
	("5", "soutomc", "2021-07-14 01:53:27");

/*query que retorna todos os resultados da tabela pesquisa*/
select * from pesquisa;

/*query que altera uma linha na tabela pesquisa*/
update pesquisa set hashtag= "wow" where hashtag = "lol";

/*query que retorna todos os resultados da tabela pesquisa após o update*/
select * from pesquisa;

/*query que deleta uma linha da tabela pesquisa*/
delete from pesquisa; 

/*query que retorna todos os resultados da tabela pesquisa após o delete*/
select * from pesquisa;

/*criação da tabela equipe*/
create table equipe (
	id int not null auto_increment,
	squad int not null,
	nome varchar(100) not null,
    imagem blob not null,
	descricao varchar(1000) not null,
	github varchar(100),
    linkedin varchar(100),
	email varchar(100),
	primary key (id)
);

/*inserção dos dados na tabela equipe*/
insert into equipe (squad, nome, imagem, descricao, github, linkedin, email) values
	("5", "João Del Penho", "C:\Images\jp.png", "Coloque a descrição aqui", "https://github.com/joaopaulodps", "https://www.linkedin.com/in/joaopaulodelpenho", "joaopaulodps@gmail.com"),
    ("5", "Rhaissa Marques", "C:\Images\rhaissa.png", "Arquiteta apaixonada por tecnologia e aprendendo cada dia mais.", "https://github.com/rhaissamarques", "https://www.linkedin.com/in/rhaissa-marques", "rhaissa.marques@gmail.com"),
    ("5", "Carlos Dantas", "C:\Images\carlosd.png", "Desenvolvedor Front-End. Aficionado por tecnologia e jogos de tabuleiro. ", "https://github.com/carllos95", "https://www.linkedin.com/in/carlos-rodrigo-dantas/", "carlos95rodrigo@hotmail.com"),
    ("5", "Ezequiel Frizon", "C:\Images\ezequiel.png", "Desenvolvedor web Front-end. Apaixonado por programação e jogos. ", "https://github.com/zeeckcwb", "https://www.linkedin.com/in/ezequiel-frizon/", "ezqlcwb@hotmail.com");
    
/*query que retorna todos os resultados da tabela equipe*/
select * from equipe;

/*query que atualiza o dado "descrição" em uma linha*/
update equipe set descricao= "Desenvolvedor front-end, apaixonado por Esportes e aficionado por estatísticas." where nome = "João Del Penho";

/*query que retorna todos os resultados da tabela equipe após o update*/
select * from equipe;

/*query que deleta todos os dados da tabela equipe*/
delete from equipe;

/*query que retorna todos os resultados da tabela equipe após o delete*/
select * from equipe;

/*criação da tabela login*/
    create table login (
    id int not null auto_increment,
    email varchar(100) not null,
    senha char(128) not null,
    primary key (id)
  );

/*inserção de dados na tabela login*/
    insert into login (email, senha) values
      ("contato@newtab.academy", "password");

/*query que retorna todos os dados da tabela login*/
    select * from login;

/*query que atualiza o dado "senha" da tabela login*/
    update login set senha ='123456' where email= "contato@newtab.academy";
    
/*query que retorna todos os dados da tabela login após o update*/
    select * from login;

/*query que deleta dados da tabela login*/
    delete from login where email= "contato@newtab.academy";
    
/*query que retorna todos os dados da tabela login após o delete*/
    select * from login;
    
/*criação da tabela sobre ("sobre o projeto")*/
create table sobre (
id int not null auto_increment,
sobre_projeto mediumtext not null,
primary key ( id )
);

/*inserção dos dados na tabela sobre*/
insert into sobre (sobre_projeto) values 
("coloque um texto aqui");

/*query que retorna todos os dados da tabela sobre*/
select * from sobre;

/*query que atualiza os dados da tabela sobre*/
update sobre set sobre_projeto = "Projeto realizado em formato de squad, utilizando React.js, HTML, SASS, CSS3 e Javascript, assim como metodologias ágeis (Scrum e Kambam) e gerenciamento de equipe e tempo, por meio da plataforma ClickUp. O projeto consiste em uma aplicação responsável por listar tweets, consumindo a API do twitter e com isso trazendo as últimas 10 imagens e posts, baseado na hashtag a ser pesquisada.";

/*query que retorna todos os dados da tabela sobre após o update*/
select * from sobre;

/*query que deleta todos os dados da tabela sobre*/
delete from sobre;

/*query que retorna todos os dados da tabela sobre após o delete*/
select * from sobre;

/*criação da tabela tweets*/
create table tweets (
	id int not null auto_increment,
	nome varchar(100) not null,
	usuario varchar(30) not null,
	foto blob,
	texto varchar(280),
	data_tweet datetime,
	link varchar(1000),
    hashtag varchar(100),
	INDEX (id)
);
    
/*inserção de dados na tabela tweets*/
insert into tweets (nome, usuario, foto, texto, data_tweet, link, hashtag) values
	("Andrezinn", "@andrezetre", "...\andrezinn.png", "o dia tá lindo, crima ensorarado com outra vitoria do mengao", "2020-12-03 13:02:57", "twitter.com/algumacoisa", "flamengo"),
	("Ana Castro", "@castro_ana", NULL , "Confissões da madrugada: anime é ruim, odeio", "2018-06-02 03:25:15", "twitter.com/algumacoisa1", "lol"),
	("O Sombra", "@br_shadow", "...\shadow.png", "ninguém me conhece kkkk", "2021-06-30 00:12:41", "twitter.com/algumacoisa2", "lol");

/*query que retorna todos os dados da tabela tweets*/
select * from tweets;
    
/*query que altera o campo texto*/
update tweets set texto = "Confissões da madrugada: anime é ótimo, amo" where texto = "Confissões da madrugada: anime é ruim, odeio";

/*query que retorna os dados após o update*/
select * from tweets;

/*query que deleta todos os tweets com a #lol*/
delete from tweets where hashtag = "lol";

/*query que retorna os dados após o delete*/
select * from tweets;