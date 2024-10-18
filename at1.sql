
create database empresa_join1e;

create table departamento(
id_BIGINT int auto_increment primary key,
nome_dep varchar(100) not null
);

create table funcionario(
id_INT int auto_increment primary key,
salario decimal(10,2),
nome_func varchar(100),
id_BIGINT int,
foreign key (id_BIGINT) references departamento(id_BIGINT)
);

create table dependente(
id_INT  int auto_increment primary key,
nome_depen varchar(100),
foreign key (id_INT) references funcionario(id_INT)
);



