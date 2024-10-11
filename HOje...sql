CREATE DATABASE Ger_Join2;
USE Ger_Join;

create table funcionarios(
	cod_func int auto_increment primary key,
    nome varchar(255) not null,
    especialidade varchar(255) not null
);

create table dependentes(
	cod int auto_increment primary key,
    nome varchar(255) not null,
    cod_func int not null,
    foreign key(cod_func) references funcionarios(cod_func)
);

insert into funcionarios (nome, especialidade) values
('José', 'Engenheiro'),
('João', 'Mestre de obras'),
('Maria', 'Contabilista');

insert into dependentes (nome, cod_func) values
("pedro", 1),
("Alice", 1),
("Luana", 3);

select funcionarios.nome, dependentes.nome
from funcionarios
inner join dependentes
on funcionarios.cod_func = dependentes.cod_func
where funcionarios.cod_func = 1;

select funcionarios.nome, dependentes.nome
from funcionarios
left join dependentes
on funcionarios.cod_func = dependentes.cod_func;

select funcionarios.nome, dependentes.nome
from funcionarios
right join dependentes
on funcionarios.cod_func = dependentes.cod_func;