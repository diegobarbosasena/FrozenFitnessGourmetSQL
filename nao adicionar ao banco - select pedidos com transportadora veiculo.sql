USE dbsmartgourmet;

SELECT 
	vt.*,
	t.*,
	tv.*
FROM tblVeiculoTransp vt
INNER JOIN tblTransportadora t
ON (vt.codTransportadora = t.codTransportadora)
INNER JOIN tblTipoVeiculo tv 
ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
WHERE t.codTransportadora = 2;



DROP PROCEDURE IF EXISTS pcd_lista_trans_tipoveicu;

delimiter //    
CREATE PROCEDURE pcd_lista_trans_tipoveicu()
BEGIN
	
     SELECT 
		vt.codVeiculoTransp, vt.placaVeiculo, vt.codTipoVeiculo, vt.codTransportadora,
		t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, t.codEndereco,
		tv.codTipoVeiculo, tv.nomeTipoVeiculo
	FROM tblVeiculoTransp AS vt
	INNER JOIN tblTransportadora AS t
	ON (vt.codTransportadora = t.codTransportadora)
    INNER JOIN tblTipoVeiculo AS tv 
    ON (tv.codTipoVeiculo = vt.codTipoVeiculo)
    WHERE t.codTransportadora = 2;
    
END //
delimiter ;





