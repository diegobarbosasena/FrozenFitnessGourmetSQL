select * from tblPedido;

SELECT * FROM `tblPedido` WHERE (dtCompra BETWEEN "2016-10-01" AND "2016-12-03");
select now();

SELECT estado.nomeEstado
FROM tblCidade cidade
INNER JOIN tblEstado estado
ON(estado.codEstado = cidade.codEstado)
GROUP BY estado.codEstado;

SELECT estado.nomeEstado
		FROM tblCidade cidade
		RIGHT JOIN tblEstado estado
		ON(estado.codEstado = cidade.codEstado)
        GROUP BY estado.codEstado
in	(
	SELECT sum(pedido.total) total, COUNT(pedido.total) total_pedido, estado.* 
	FROM tblPedido pedido 
	INNER JOIN tblCliente cliente 
	ON(pedido.codCliente = cliente.codCliente) 
	INNER JOIN tblClienteEnd clie_ende 
	ON(cliente.codCliente = clie_ende.codCliente) 
	INNER JOIN tblEndereco endereco 
	ON(clie_ende.codEndereco = endereco.codEndereco) 
	INNER JOIN tblCidade cidade 
	ON(endereco.codCidade = cidade.codCidade) 
	RIGHT JOIN tblEstado estado 
	ON(cidade.codEstado = estado.codEstado) 
	GROUP BY estado.codEstado 
 
);
    



INNER JOIN tblEndereco endereco
ON(cidade.codEndereco = endereco.codEndereco)

sum(pedido.total) total, COUNT(pedido.total) total_pedido,


 
INNER JOIN tblClienteEnd clie_ende 
ON(cliente.codCliente = clie_ende.codCliente) 
INNER JOIN tblCliente cliente
ON(pedido.codCliente = cliente.codCliente) 


desc tblEndereco;
desc tblClienteEnd;


INNER JOIN tblPedido pedido 
WHERE (pedido.dtCompra BETWEEN "2016-10-01" AND "2016-12-03")






SELECT sum(pedido.total) total, COUNT(pedido.total) total_pedido, estado.* 
FROM tblPedido pedido 
INNER JOIN tblCliente cliente 
ON(pedido.codCliente = cliente.codCliente) 
INNER JOIN tblClienteEnd clie_ende 
ON(cliente.codCliente = clie_ende.codCliente) 
INNER JOIN tblEndereco endereco 
ON(clie_ende.codEndereco = endereco.codEndereco) 
INNER JOIN tblCidade cidade 
ON(endereco.codCidade = cidade.codCidade) 
RIGHT JOIN tblEstado estado 
ON(cidade.codEstado = estado.codEstado) 
GROUP BY estado.codEstado

WHERE (pedido.dtCompra BETWEEN "2016-10-01" AND "2016-12-03")
