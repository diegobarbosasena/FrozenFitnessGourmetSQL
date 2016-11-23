USE dbsmartgourmet;

DROP PROCEDURE IF EXISTS pcd_tipoveiculo_transp;

delimiter //    
CREATE PROCEDURE pcd_tipoveiculo_transp(codTransp int)
BEGIN
	
	SELECT 
		vt.*, t.*, tv.*
	FROM tblTransportadora t
	LEFT JOIN tblVeiculoTransp vt
	ON (vt.codTransportadora = t.codTransportadora)
	LEFT JOIN tblTipoVeiculo tv 
	ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
	WHERE t.codTransportadora = codTransp;
    
END //
delimiter ;

CALL pcd_tipoveiculo_transp();