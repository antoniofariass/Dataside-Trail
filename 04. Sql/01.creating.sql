CREATE DATABASE curso_sql;

USE curso_sql;

create table funcionarios(
id int unsigned not null auto_increment,
nome varchar(45) not null,
salario double not null default '0',
departamento varchar(45) not null,
PRIMARY KEY (id)

);

CREATE TABLE veiculos(
 id int unsigned not null auto_increment,
 funcionario_id int unsigned default null,
 veiculo varchar(45) not null default '',
 placa varchar(10) not null default '',
 PRIMARY KEY (id),
 CONSTRAINT fk_veiculos_funcionarios FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
 );
 
 ALTER TABLE funcionarios change column nome nome_func varchar(45) not null;
 ALTER TABLE funcionarios change column nome_func nome varchar(45) not null;
 
 drop table salarios;
 
 create index departamentos on funcionarios (departamento);
 create index nomes on funcionarios (nome(6));