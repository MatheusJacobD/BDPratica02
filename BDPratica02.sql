create database sprint1;
use sprint1;

/*
	Exercício 01
*/

create table Atleta(
	idAtleta int primary key auto_increment,
    nome varchar(40),
    modalidade varchar(40),
    qtdMedalha int
);

insert into Atleta(nome, modalidade, qtdMedalha) values
('Matheus Jacob', 'fisiculturismo', 1),
('Pedro Lima', 'fisiculturismo', 0),
('Vitor da Luz', 'futebol', 4),
('Jefferson Alexandre', 'futebol', 2),
('Vivian Banco', 'boliche', 3),
('Clara Dados', 'boliche', 3);  

-- Exibir todos os dados da tabela.
select * from Atleta;

-- Atualizar a quantidade de medalhas do atleta com id=1;
update Atleta set qtdMedalha = 10
where idAtleta = 1;

-- Atualizar a quantidade de medalhas do atleta com id=2 e com o id=3;
update Atleta set qtdMedalha = 5
where idAtleta in (2, 3);

-- Atualizar o nome do atleta com o id=4;
update Atleta set nome = 'Jeferson Alexandre'
where idAtleta = 4;

-- Adicionar o campo dtNasc na tabela, com a data de nascimento dos atletas, tipo date;
alter table Atleta add column dtNasc date;

-- Atualizar a data de nascimento de todos os atletas;
update Atleta set dtNasc = '2000-02-17'
where idAtleta in(1, 2, 3);

update Atleta set dtNasc = '1990-10-30'
where idAtleta in(4, 5, 6);

-- Excluir o atleta com o id=5;
delete from Atleta where idAtleta = 5;

-- Exibir os atletas onde a modalidade é diferente de natação;
select * from Atleta
where modalidade != 'natação';

-- Exibir os dados dos atletas que tem a quantidade de medalhas maior ou igual a 3;
select * from Atleta
where qtdMedalha >= 3;

-- Modificar o campo modalidade do tamanho 40 para o tamanho 60;
alter table Atleta modify column modalidade varchar(60);

-- Descrever os campos da tabela mostrando a atualização do campo modalidade;
desc Atleta;

-- Limpar os dados da tabela;
select * from Atleta;

/*
	Exercício 02
*/

create table Musica(
	idMusica int primary key auto_increment,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

insert into Musica(titulo, artista, genero) values
('Glimpse of us', 'Joji', 'Pop'),
('The hills', 'The weekend', 'Pop'),
('Dethroned messiah', 'the troops of doom', 'Rock'),
('until it doesnt hurt', 'mother mother', 'Rock'),
('meu lugar', 'arlindo cruz', 'Samba'),
('Conselho', 'Almir Guineto', 'Samba'),
('P do Pecado', 'Simone Mendes', 'Pagode'),
('Até que enfim', 'Ferrugem', 'Pagode');

-- Exibir todos os dados da tabela.
select * from Musica;

-- Adicionar o campo curtidas do tipo int na tabela;
alter table Musica add column curtidas int;

-- Atualizar o campo curtidas de todas as músicas inseridas;
update Musica set curtidas = 999999
where idMusica in (1, 2, 3, 4);

update Musica set curtidas = 489332
where idMusica in (5, 6, 7, 8);

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
alter table Musica modify column artista varchar(80);

-- Atualizar a quantidade de curtidas da música com id=1;
update Musica set curtidas = 1000000
where idMusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
update Musica set curtidas = 9292929
where idMusica in (2, 3);

-- Atualizar o nome da música com o id=5;
update Musica set titulo = 'nosso lugar'
where idMusica = 5;

-- Excluir a música com o id=4;
delete from Musica where idMusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;
select * from Musica 
where genero != 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
select * from Musica
where curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
desc Musica;

-- Limpar os dados da tabela;
truncate Musica;

/*
	Exercício 03
*/

create table Filme(
	idFilme int primary key auto_increment,
    titulo varchar(50),
    genero varchar(40),
    diretor varchar(40)
);

insert into Filme(titulo, genero, diretor) values
('Pecadores', 'Terror', 'Ryan Coogler'),
('Frankenstein', 'Terror', 'Guilherme del Toro'),
('Interestelar', 'Ficção Científica', 'Christopher Nolan'),
('Matrix', 'Ficção Científica', 'Lana e Lilly Wachowski'),
('Parasita', 'Suspense', 'Bong Joon-ho'),
('A origem', 'Suspense', 'Christopher Nolan'),
('O exterminador do Futuro 2', 'Ação', 'James Cameron');

-- Exibir todos os dados da tabela.
select * from Filme;

-- Adicionar o campo protagonista do tipo varchar(50) na tabela;
alter table Filme add column protagonista varchar(50);

-- Atualizar o campo protagonista de todas os filmes inseridos;
update Filme set protagonista = 'Matheus Jacob Duarte'
where idFilme >= 1;

-- Modificar o campo diretor do tamanho 40 para o tamanho 150;
alter table Filme modify column diretor varchar(150);

-- Atualizar o diretor do filme com id=5;
update Filme set diretor = 'Joon-ho Bong'
where idFilme = 5;

-- Atualizar o diretor dos filmes com id=2 e com o id=7;
update Filme set diretor = 'eu'
where idFilme in (2, 7);

-- Atualizar o título do filme com o id=6;
update Filme set titulo = 'O original'
where idFilme = 6;

-- Excluir o filme com o id=3;
delete from Filme where idFilme = 3;

-- Exibir os filmes em que o gênero é diferente de drama;
select * from Filme
where genero != 'drama';

-- Exibir os dados dos filmes que o gênero é igual ‘suspense’;
select * from Filme
where genero = 'suspense';

-- Descrever os campos da tabela mostrando a atualização do campo protagonista e diretor;
desc Filme;

-- Limpar os dados da tabela;
truncate Filme;

/*
	Exercício 4
*/

create table Professor(
	idProfessor int primary key auto_increment,
    nome varchar(50),
    especialidade varchar(40),
    dtNasc date
);

insert into Professor(nome, especialidade, dtNasc) values
('Vivian Banco', 'Banco de Dados', '2000-11-05'),
('Clara Dados', 'Banco de Dados', '2002-08-28'),
('Mateus Matos', 'Arq. Comp.', '2005-09-21'),
('Thiago Bonnaceli', 'Socioemocional', '2003-02-19'),
('Marcos Antonio', 'TI', '1990-03-10'),
('Giuliana Codigos', 'Algoritmos', '2000-09-01');

-- Exibir todos os dados da tabela.
select * from Professor;

-- Adicionar o campo funcao do tipo varchar(50), onde a função só pode ser ‘monitor’, ‘assistente’ ou ‘titular’;
alter table Professor add column funcao varchar(50); -- professora informou para pular a parte de limitar funções

-- Atualizar os professores inseridos e suas respectivas funções;
update Professor set funcao = 'titular'
where idProfessor >= 1;

-- Inserir um novo professor;
insert into Professor(nome, especialidade, dtNasc, funcao) values
('Matheus Jacob', 'Algoritmos', '2008-02-17', 'assistente');

-- Excluir o professor onde o idProfessor é igual a 5;
delete from Professor where idProfessor = 5;

-- Exibir apenas os nomes dos professores titulares;
select * from Professor
where funcao = 'Titular';

-- Exibir apenas as especialidades e as datas de nascimento dos professores monitores;
select especialidade, dtNasc from Professor
where funcao = 'monitor';

-- Atualizar a data de nascimento do idProfessor igual a 3;
update Professor set dtNasc = '2005-08-20'
where idProfessor = 3;

-- Limpar a tabela Professor;
truncate Professor;