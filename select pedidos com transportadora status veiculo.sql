USE dbsmartgourmet;

show tables;


desc tblpedido;
desc tblcliente;
desc tbltransportadora;
desc tbltipoveiculo;
desc tblstatus;
desc tblVeiculoTransp;

SELECT 
	p.codPedido, p.tipoPedido, p.dtEntrega, p.dtCompra, p.codCliente, p.codStatus, p.codVeiculoTransp,
    c.codCliente, c.nomeCliente, c.cpfCliente, c.dtNascCliente, c.peso, c.altura, c.telefoneCliente, c.celularCliente, c.emailCliente,
    t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, t.codEndereco,
    v.codTipoVeiculo, v.nomeTipoVeiculo,
    vt.codVeiculoTransp, vt.placaVeiculo, vt.codTipoVeiculo, vt.codTransportadora,
    s.codStatus, s.statusPedido
FROM tblPedido as p 
INNER JOIN tblCliente as c 
ON (p.codCliente = c.codCliente)
INNER JOIN tblStatus as s
ON (p.codStatus = s.codStatus)
INNER JOIN tblVeiculoTransp as v
ON (p.codVeiculoTransp = v.codVeiculoTransp) 
INNER JOIN tblVeiculoTransp as vt
ON (t.codTransportadora = vt.codTransportadora)
    
    ;