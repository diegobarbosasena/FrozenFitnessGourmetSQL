
INSERT INTO `tblEndereco`
(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
('Rua Teste', '123456', '12' , 'teste', null, null);


INSERT INTO `tblTransportadora`
(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('transp 1', '123456', 'transp1@transp1.com', '456789', 'resp transp 1', last_insert_id());


SELECT 
	t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, 
	e.codEndereco, e.logradouro, e.cep, e.numero, e.bairro, e.complemento 
FROM 
	tblTransportadora AS t 
INNER JOIN tblEndereco AS e 
ON 
	(t.codEndereco = e.codEndereco) 
ORDER BY 
	codTransportadora DESC;
	






