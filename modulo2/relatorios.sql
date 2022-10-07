/* Demanda: Liste todas as compras que são válidas
** OBS:  VOLUME_DE_COMPRA é o limite de coisas que o cliente pode comprar no mês
*/

select date_format(data_venda,'%m/%Y') mes_venda, c.cpf, c.nome, c.volume_de_compra,
	sum(quantidade) soma_quantidade,
    case
		when sum(quantidade) <= c.volume_de_compra then 'VALIDO'
        else 'INVALIDO'
	end sn_valido

from		notas_fiscais nf
inner join	itens_notas_fiscais inf		on inf.numero = nf.numero
inner join	tabela_de_clientes c 		on c.cpf = nf.cpf

group by date_format(data_venda,'%m/%Y'), c.cpf, c.nome
/*having sum(quantidade) <= c.volume_de_compra*/
order by soma_quantidade desc;

/* --------------------------------------------------------------- */
/* Fazer acompanhamento sobra as vendas do ano de 2016 por sabores */

with total as (
	select sum(inf.quantidade) qt
	from		itens_notas_fiscais inf
	inner join	notas_fiscais nf			on nf.numero = inf.numero
	where year(nf.data_venda) = 2016
)

select p.sabor, year(nf.data_venda) ano,
	sum(inf.quantidade) quantidade,
    round( ( sum(inf.quantidade) / (select qt from total) )*100, 2) participacao
from		itens_notas_fiscais inf
inner join	notas_fiscais nf			on nf.numero = inf.numero
inner join	tabela_de_produtos p		on p.codigo_do_produto = inf.codigo_do_produto
where year(nf.data_venda) = 2016
group by sabor, year(nf.data_venda)
order by participacao desc;

