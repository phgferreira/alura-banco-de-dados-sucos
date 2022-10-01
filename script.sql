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
drop table sucos.vendedor2;
insert into sucos.vendedor (matricula, nome, percentual_comissao) values
('00233', 'João Geraldo da Fonseca', 0.10),
('00235', 'Márcio Almeida Silva', 0.08),
('00236', 'Cláudia Morais', 0.08);
select * from sucos.vendedor;

-- feito pelo assistente do MySQL Workbench
CREATE TABLE `sucos`.`produto` (
  `id` VARCHAR(20) NULL,
  `nome` VARCHAR(150) NULL,
  `embalagem` VARCHAR(50) NULL,
  `tamanho` VARCHAR(50) NULL,
  `sabor` VARCHAR(50) NULL,
  `preco` FLOAT NULL);
insert into sucos.produto (id, nome, embalagem, tamanho, sabor, preco) values
('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56),
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Malância', 'PET', '1,5 Litros', 'Melância', 19.51);
select * from sucos.produto;
