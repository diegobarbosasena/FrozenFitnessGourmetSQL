USE dbsmartgourmet;

INSERT INTO `tblPedido`
	(`tipoPedido`, `dtEntrega`, `dtCompra`, `total`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
	('web', now() + INTERVAL 5 DAY, now() , '500.00', 1, 1, null);

INSERT INTO `tblPedido`
	(`tipoPedido`, `dtEntrega`, `dtCompra`, `total`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
	('telefone', now() + INTERVAL 5 DAY, now() , '254.24', 2, 1, null);

INSERT INTO `tblPedido`
	(`tipoPedido`, `dtEntrega`, `dtCompra`, `total`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
	('web', now() + INTERVAL 5 DAY, now() , '684.85', 3, 1, null);

INSERT INTO `tblPedido`
	(`tipoPedido`, `dtEntrega`, `dtCompra`, `total`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
	('telefone', now() + INTERVAL 5 DAY, now() , '21.10', 4, 1, null);