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

select * from tabela_de_produtos where sabor like '%maça%' and embalagem = 'pet';

select * from tabela_de_clientes where nome like '%mattos';

select * from tabela_de_produtos;

select * from tabela_de_produtos limit 5;

-- Pega a partir da 2º os 3 próximos
select * from tabela_de_produtos limit 2, 3;

-- Pega a 1ª linha e os dois próximos
select * from tabela_de_produtos limit 0, 2;

select * from tabela_de_produtos;

select * from tabela_de_produtos order by preco_de_lista;

select * from tabela_de_produtos order by preco_de_lista desc;

select * from tabela_de_produtos order by nome_do_produto;

select * from tabela_de_produtos order by nome_do_produto desc;

select * from tabela_de_produtos order by embalagem desc, nome_do_produto;

select * from tabela_de_clientes;

select estado, limite_de_credito from tabela_de_clientes;

select estado, sum(limite_de_credito) limite_total from tabela_de_clientes group  by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select embalagem, max(preco_de_lista) maior_preco from tabela_de_produtos group by embalagem;

select embalagem, count(*) contador from tabela_de_produtos group by embalagem;

select bairro, sum(limite_de_credito) limite from tabela_de_clientes where cidade = 'Rio de Janeiro' group by bairro;

select estado, bairro, sum(limite_de_credito) limite
from  tabela_de_clientes
where cidade = 'Rio de Janeiro'
group by estado, bairro
order by bairro;

select estado, sum(limite_de_credito) soma_limite
from tabela_de_clientes
group by estado
having sum(LIMITE_DE_CREDITO) > 900000;

select embalagem, max(preco_de_lista) maximo, min(preco_de_lista) minimo from tabela_de_produtos
group by embalagem
having sum(preco_de_lista) <= 80 and max(preco_de_lista) >= 5;

select nome_do_produto, preco_de_lista,
	case
		when preco_de_lista >= 12 then 'PRODUTO CARO'
        when preco_de_lista between 7 and 12 then 'PRODUTO EM CONTA'
        else 'PRODUTO BARATO'
	end status_preco
from tabela_de_produtos
order by 2;

select embalagem,
	case
		when preco_de_lista >= 12 then 'PRODUTO CARO'
        when preco_de_lista between 7 and 12 then 'PRODUTO EM CONTA'
        else 'PRODUTO BARATO'
	end status_preco,
    round(avg(preco_de_lista),2) preco_medio
from tabela_de_produtos
where sabor = 'manga'
group by embalagem,
	case
		when preco_de_lista >= 12 then 'PRODUTO CARO'
        when preco_de_lista between 7 and 12 then 'PRODUTO EM CONTA'
        else 'PRODUTO BARATO'
	end
order by 1, 2, 3;

select a.matricula, a.nome, count(*) qt_notas
from		tabela_de_vendedores a
inner join 	notas_fiscais b		on a.matricula = b.matricula
group by a.matricula, a.nome

