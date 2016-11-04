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
	p.*, vt.*, cl.*, s.*, tv.*, t.*, v.*
FROM tblPedido AS p
LEFT JOIN tblCliente AS cl
ON (p.codCliente = cl.codCliente)
LEFT JOIN tblStatus AS s
ON (p.codStatus = s.codStatus )
LEFT JOIN tblVeiculoTransp AS vt
ON (p.codVeiculoTransp = vt.codVeiculoTransp)
LEFT JOIN tblTipoVeiculo AS tv
ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
LEFT JOIN tblTransportadora AS t
ON (t.codTransportadora = vt.codTransportadora)
LEFT JOIN tblTipoVeiculo AS v
ON (v.codTipoVeiculo = vt.codTipoVeiculo)
ORDER BY s.statusPedido DESC;


DROP PROCEDURE IF EXISTS pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans;

delimiter //    
CREATE PROCEDURE pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans()
BEGIN
	
    SELECT 
		p.*, vt.*, cl.*, s.*, tv.*, t.*, v.*
	FROM tblPedido AS p
	LEFT JOIN tblCliente AS cl
	ON (p.codCliente = cl.codCliente)
	LEFT JOIN tblStatus AS s
	ON (p.codStatus = s.codStatus )
	LEFT JOIN tblVeiculoTransp AS vt
	ON (p.codVeiculoTransp = vt.codVeiculoTransp)
	LEFT JOIN tblTipoVeiculo AS tv
	ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
	LEFT JOIN tblTransportadora AS t
	ON (t.codTransportadora = vt.codTransportadora)
	LEFT JOIN tblTipoVeiculo AS v
	ON (v.codTipoVeiculo = vt.codTipoVeiculo)
	ORDER BY s.statusPedido DESC;

END //
delimiter ;

##INVOCANDO A PROCEDURE
CALL pcd_lista_pedi_clie_sta_tipoveic_trans_veictrans();

