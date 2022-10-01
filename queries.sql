select * from sucos.tbcliente;

select cpf, nome, endereco1, endereco2, bairro, cidade, estado, cep, data_nascimento, idade, sexo, limite_credito, volume_compra, primeira_compra from sucos.tbcliente;

select cpf, nome from tbcliente limit 5;

select cpf as cpf_cliente, nome as nome_cliente from tbcliente;

select nome, cpf, sexo, idade, data_nascimento from tbcliente;