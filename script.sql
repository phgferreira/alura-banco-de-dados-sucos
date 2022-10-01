drop database sucos;
create database if not exists sucos;

create table  if not exists sucos.cliente (
	cpf varchar(11),
    nome varchar(100),
    endereco1 varchar(150),
    endereco2 varchar(150),
    bairro varchar(50),
    cidade varchar(50),
    estado varchar(50),
    cep varchar(8),
    idade smallint,
    sexo varchar(1),
    limite_credito float,
    volume_compra float,
    primeira_compra bit(1)
);
create table sucos.cliente2 as select * from sucos.cliente;
drop table sucos.cliente2;

create table if not exists sucos.vendedor (
	matricula varchar(5),
    nome varchar(100),
    percentual_comissao float
);
create table sucos.vendedor2 as select * from sucos.vendedor;
drop table sucos.vendedor;

-- feito pelo assistente do MySQL Workbench
CREATE TABLE `sucos`.`produto` (
  `id` VARCHAR(20) NULL,
  `nome` VARCHAR(150) NULL,
  `embalagem` VARCHAR(50) NULL,
  `tamanho` VARCHAR(50) NULL,
  `sabor` VARCHAR(50) NULL,
  `preco` FLOAT NULL);
insert into sucos.produto (id, nome, embalagem, tamanho, sabor, preco)
values ('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56);
select * from sucos.produto;
