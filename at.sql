create database  Empresager_Joins;

create table Funcionario(
cod_fun int auto_increment primary key,
NOME varchar(255),
ESPECIALIDADE varchar(255)
);

create table dependente(
cod_dep int auto_increment primary key,
NOME varchar(255),
cod_fun int,
foreign key (cod_fun) references Funcionario(cod_fun)
);

insert into Funcionario(NOME, ESPECIALIDADE)
values ("José", "Engenheiro"),
("João", "Mestre de obras"),
("Maria","Contabilista");
        
insert into dependente(NOME, cod_fun)
values("Pedro", 1),
("Alice", 1),
("Luana", 3);
                
select Funcionario.NOME,  dependente.NOME
from Funcionario
    inner join dependente
    on Funcionario.cod_fun = dependente.cod_fun
    where Funcionario.cod_fun =1;
    
    
    select FUNC.NOME NOME, DEP.NOME NOME
    from Funcionario FUNC
    left join dependente DEP
    on FUNC.cod_fun = DEP.cod_fun;
    
        select FUNC.NOME NOME, DEP.NOME NOME
    from Funcionario FUNC
    left join dependente DEP
    on FUNC.cod_fun = DEP.cod_fun
    where DEP.NOME is null;

select FUNC.NOME NOME, DEP.NOME NOME
    from Funcionario FUNC
    right join dependente DEP
    on FUNC.cod_fun = DEP.cod_fun
    where DEP.NOME is null;