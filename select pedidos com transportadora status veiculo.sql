USE dbsmartgourmet;

desc tblPedido; /* codCliente, codStatus, codVeiculoTransp*/
desc tblCliente;
desc tblStatus;
desc tblTipoVeiculo;
desc tblTransportadora; /* codEndereco*/
desc tblVeiculoTransp; /*codTipoVeiculo, codTransportadora, */

select * from tblPedido;
select * from tblCliente;
select * from tblStatus;
select * from tblTipoVeiculo;
select * from tblTransportadora;
select * from tblVeiculoTransp;


SELECT 
	p.codPedido, p.tipoPedido, p.dtEntrega, p.dtCompra, p.codCliente, p.codStatus, p.codVeiculoTransp,
    vt.codVeiculoTransp, vt.placaVeiculo, vt.codTipoVeiculo, vt.codTransportadora,
    cl.codCliente, cl.nomeCliente, cl.cpfCliente, cl.dtNascCliente, cl.peso, cl.altura, cl.telefoneCliente, cl.celularCliente, cl.emailCliente,
    s.codStatus, s.statusPedido,
    tv.codTipoVeiculo, tv.nomeTipoVeiculo,
    t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, t.codEndereco,
	v.codTipoVeiculo, v.nomeTipoVeiculo
FROM tblPedido AS p
INNER JOIN tblCliente AS cl
ON (p.codCliente = cl.codCliente)
INNER JOIN tblStatus AS s
ON (p.codStatus = s.codStatus )
INNER JOIN tblVeiculoTransp AS vt
ON (p.codVeiculoTransp = vt.codVeiculoTransp)
INNER JOIN tblTipoVeiculo AS tv
ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
INNER JOIN tblTransportadora AS t
ON (t.codTransportadora = vt.codTransportadora)
INNER JOIN tblTipoVeiculo AS v
ON (v.codTipoVeiculo = vt.codTipoVeiculo);


DROP PROCEDURE IF EXISTS pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans;

delimiter //    
CREATE PROCEDURE pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans()
BEGIN
	
    SELECT 
		p.codPedido, p.tipoPedido, p.dtEntrega, p.dtCompra, p.codCliente, p.codStatus, p.codVeiculoTransp,
		vt.codVeiculoTransp, vt.placaVeiculo, vt.codTipoVeiculo, vt.codTransportadora,
		cl.codCliente, cl.nomeCliente, cl.cpfCliente, cl.dtNascCliente, cl.peso, cl.altura, cl.telefoneCliente, cl.celularCliente, cl.emailCliente,
		s.codStatus, s.statusPedido,
		tv.codTipoVeiculo, tv.nomeTipoVeiculo,
		t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, t.codEndereco,
		v.codTipoVeiculo, v.nomeTipoVeiculo
	FROM tblPedido AS p
	INNER JOIN tblCliente AS cl
	ON (p.codCliente = cl.codCliente)
	INNER JOIN tblStatus AS s
	ON (p.codStatus = s.codStatus )
	INNER JOIN tblVeiculoTransp AS vt
	ON (p.codVeiculoTransp = vt.codVeiculoTransp)
	INNER JOIN tblTipoVeiculo AS tv
	ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
	INNER JOIN tblTransportadora AS t
	ON (t.codTransportadora = vt.codTransportadora)
	INNER JOIN tblTipoVeiculo AS v
	ON (v.codTipoVeiculo = vt.codTipoVeiculo);

END //
delimiter ;

##INVOCANDO A PROCEDURE
CALL pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans();

