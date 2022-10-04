select cpf identificador, nome cliente from tabela_de_clientes;

select * from tabela_de_produtos where codigo_do_produto = '1000889';

select * from tabela_de_produtos where sabor = 'Uva';

select * from tabela_de_produtos where sabor = 'Laranja';

select * from tabela_de_produtos where embalagem = 'pet';

select * from tabela_de_produtos where preco_de_lista between 19.51 and 19.52;

select * from tabela_de_produtos where sabor = 'manga' and tamanho = '470 ml';

select * from tabela_de_produtos where not(sabor = 'manga' or tamanho = '470 ml');

select * from tabela_de_produtos where sabor in ('laranja','manga');

select * from tabela_de_clientes where cidade in ('rio de janeiro','são paulo') and idade >= 20;

select * from tabela_de_clientes where cidade in ('rio de janeiro','são paulo') and idade between 19 and 22;


