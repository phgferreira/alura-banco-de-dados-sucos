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
