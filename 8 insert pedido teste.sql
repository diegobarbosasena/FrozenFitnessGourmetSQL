USE dbsmartgourmet;

/*pedido 1 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 1', now() + INTERVAL 5 DAY, now()  , 1, 1, null);

/*pedido 2 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 2', now() + INTERVAL 5 DAY, now()  , 2, 1, 2);

/*pedido 3 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 3', now() + INTERVAL 5 DAY , now()  , 3, 1, 3);

/*pedido 4 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 4', now() + INTERVAL 5 DAY, now()  , 4, 1, 4);