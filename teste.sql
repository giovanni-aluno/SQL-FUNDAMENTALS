create database db_escola

create table aluno(
id int primary key,
nome varchar(255),
idade int,
curso varchar(255)
);

create table professor(
id int primary key,
nome varchar(255),
idade int,
especializacao varchar(255)
);

create table materia(
id int primary key,
nome varchar(255),
grau varchar(255)
)

insert into aluno(id, nome, idade, curso) values (1, 'Giovanni Moreira', 21, 'ADS')
insert into professor(id, nome, idade, especializacao) values (1, 'Nicolly Almeida', 25, 'SQL')
insert into materia(id, nome, grau) values (1, 'Matematica', 'Nivel 1')

select * from aluno
select * from professor
select * from materia