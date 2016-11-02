USE dbsmartgourmet;

/*pedido 1 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 1', now() , now() + INTERVAL 5 DAY , 1, 1, 1);

/*pedido 2 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 2', now() , now() + INTERVAL 5 DAY , 2, 1, 2);

/*pedido 3 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 3', now() , now() + INTERVAL 5 DAY , 3, 1, 3);

/*pedido 4 teste*/
INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 4', now() , now() + INTERVAL 5 DAY , 4, 1, 4);