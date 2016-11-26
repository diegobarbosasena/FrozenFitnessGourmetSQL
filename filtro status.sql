USE dbsmartgourmet;
    
DROP PROCEDURE IF EXISTS pcd_filtro_status;
    
delimiter //    
CREATE PROCEDURE pcd_filtro_status(cod_status int)
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
	WHERE s.codStatus = cod_status;

END //
delimiter ;

CALL pcd_filtro_status();