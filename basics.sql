-- SQL básico



-- Mostrar os bancos
show databases;

-- Mostrar as tabelas
show tables;

-- Selecionar o banco
use estudo;

-- Descrever as tabelas ( like a sp_colmuns)
describe estudo;

-- Criar a tabela
create table aluno (id int,nome varchar(30));

-- Adicionar coluna
alter table aluno add (data_nascimento, date);

-- Deleta a coluna
alter table aluno drop column data_nascimento;

-- Renomear tabela.. agora a aluno se chama escola.
alter table aluno rename to escola;

-- Renomear campo da tabela
alter table aluno change nome novonome varchar(35);

-- Inserir registro na tabela 
insert into aluno (cod_aluno,nome) values ('','Henrique');


