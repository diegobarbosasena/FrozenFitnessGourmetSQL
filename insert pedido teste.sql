USE dbsmartgourmet;

INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 1', now() , now() + INTERVAL 5 DAY , null, null, null);


INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 2', now() , now() + INTERVAL 5 DAY , null, null, null);


INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 3', now() , now() + INTERVAL 5 DAY , null, null, null);

INSERT INTO `tblPedido`
(`tipoPedido`, `dtEntrega`, `dtCompra`, `codCliente`, `codStatus`, `codVeiculoTransp`) 
VALUES 
('pedido 4', now() , now() + INTERVAL 5 DAY , null, null, null);