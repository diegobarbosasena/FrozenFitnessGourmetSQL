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


DROP PROCEDURE IF EXISTS pcd_filtro_pedido;

delimiter //    
CREATE PROCEDURE pcd_filtro_pedido(codPedido int)
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
	WHERE p.codPedido = codPedido
	ORDER BY s.codStatus;

END //
delimiter ;

    
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
	ORDER BY s.codStatus;

END //
delimiter ;

