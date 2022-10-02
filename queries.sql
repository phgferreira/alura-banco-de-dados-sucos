use sucos;

select * from sucos.tbcliente;

select cpf, nome, endereco1, endereco2, bairro, cidade, estado, cep, data_nascimento, idade, sexo, limite_credito, volume_compra, primeira_compra from sucos.tbcliente;

select cpf, nome from tbcliente limit 5;

select cpf as cpf_cliente, nome as nome_cliente from tbcliente;

select nome, cpf, sexo, idade, data_nascimento from tbcliente;

select * from tbproduto where produto = '544931';

select * from tbcliente where cidade = 'Rio de Janeiro';

select * from tbcliente where idade = 22;

select * from tbcliente where idade > 22;

select * from tbcliente where idade <= 22;

select * from tbcliente where idade <> 22;

select * from tbcliente where nome > 'Fernando Cavalcante';

select * from tbproduto;

select * from tbproduto where preco_lista = 16.008;

select * from tbproduto where preco_lista between 16.007 and 16.009;

select * from tbcliente where data_nascimento <= '1995-01-13';

select * from tbcliente where year(data_nascimento) = 1995;

select * from tbcliente where month(data_nascimento) = 10;