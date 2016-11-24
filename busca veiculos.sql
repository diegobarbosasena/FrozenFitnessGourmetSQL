USE dbsmartgourmet;

DROP PROCEDURE IF EXISTS pcd_buscaveiculo;

delimiter //    
CREATE PROCEDURE pcd_buscaveiculo(nome_veiculo varchar(100))
BEGIN
	
	SELECT vt.* , tv.* 
	FROM tblVeiculoTransp vt 
	LEFT JOIN tblTipoVeiculo tv 
	ON(vt.codTipoVeiculo = tv.codTipoVeiculo) 
	WHERE tv.nomeTipoVeiculo LIKE nome_veiculo;
    
END //
delimiter ;

CALL pcd_buscaveiculo('%mini%');