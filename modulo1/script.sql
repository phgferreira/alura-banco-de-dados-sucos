drop database sucos;
create database if not exists sucos;

----------------------- CLIENTE -----------------------
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
alter table sucos.cliente
	add primary key (cpf),
    add column (data_nascimento date);
create table sucos.cliente2 as select * from sucos.cliente;
drop table sucos.cliente2;
insert into sucos.cliente (cpf, nome, endereco1, endereco2, bairro, cidade, estado, cep, idade, sexo, limite_credito, volume_compra, primeira_compra, data_nascimento) values
('00388934505', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Roman', 'Caratinga', 'Amazonas', '2222222', 30, 'M', 10000.00, 2000, 0, '1989-10-05');
select * from sucos.cliente;

----------------------- PRODUTO -----------------------
-- feito pelo assistente do MySQL Workbench
CREATE TABLE `sucos`.`produto` (
  `id` VARCHAR(20) NULL,
  `nome` VARCHAR(150) NULL,
  `embalagem` VARCHAR(50) NULL,
  `tamanho` VARCHAR(50) NULL,
  `sabor` VARCHAR(50) NULL,
  `preco` FLOAT NULL);
alter table sucos.produto add primary key (id);
insert into sucos.produto (id, nome, embalagem, tamanho, sabor, preco) values
('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56),
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Malância', 'PET', '1,5 Litros', 'Melância', 19.51),
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);
update sucos.produto set embalagem = 'Lata', preco = 2.46 where id = '544931';
update sucos.produto set embalagem = 'Garrafa' where id = '1078680';
delete from sucos.produto where id = '1078680';
select * from sucos.produto;

----------------------- VENDEDOR -----------------------
create table if not exists sucos.vendedor (
	matricula varchar(5),
    nome varchar(100),
    percentual_comissao float
);
alter table sucos.vendedor
	add primary key (matricula),
	add column (data_admissao date),
    add column (de_ferias bit(1));
create table sucos.vendedor2 as select * from sucos.vendedor;
drop table sucos.vendedor2;
insert into sucos.vendedor (matricula, nome, percentual_comissao) values
('00233', 'João Geraldo da Fonseca', 0.10),
('00235', 'Márcio Almeida Silva', 0.08),
('00236', 'Cláudia Morais', 0.08),
('00237', 'Roberta Martins', 0.11),
('00238', 'Péricles Alves', 0.11);
update sucos.vendedor set percentual_comissao = 0.11 where matricula = '00236';
update sucos.vendedor set nome = 'José Geraldo da Fonseca Junior' where matricula = '00233';
delete from sucos.vendedor where matricula = '00233';
update sucos.vendedor set data_admissao = '2014-08-15', de_ferias = 0 where matricula = '00235';
update sucos.vendedor set data_admissao = '2013-09-17', de_ferias = 1 where matricula = '00236';
update sucos.vendedor set data_admissao = '2017-03-18', de_ferias = 1 where matricula = '00237';
update sucos.vendedor set data_admissao = '2016-08-21', de_ferias = 0 where matricula = '00238';
select * from sucos.vendedor;
