USE dbsmartgourmet;

/*transportadora 1*/
INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 1', '111111', '1111' , 'Pq Transp 1', null, 3331);

INSERT INTO `tblTransportadora`
	(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
	('Transportadora 1', '111111', 'transp1@transp1.com', '111111', 'Resp transp 1', last_insert_id());

/*transportadora 2*/
INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 2', '222222', '2222' , 'Jd Transp 2', null, 3656);

INSERT INTO `tblTransportadora`
	(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
	('Transportadora 2', '222222', 'transp2@transp2.com', '222222', 'Resp transp 2', last_insert_id());

/*transportadora 3*/
INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 3', '333333', '3333' , 'Jd Transp 3', null, 3552);

INSERT INTO `tblTransportadora`
	(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
	('Transportadora 3', '333333', 'transp3@transp3.com', '333333', 'Resp transp 3', last_insert_id());


/*transportadora 4*/
INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 4', '444444', '4444' , 'Pq Transp 4', null, 3526);

INSERT INTO `tblTransportadora`
	(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
	('Transportadora 4', '444444', 'transp4@transp4.com', '444444', 'Resp transp 4', last_insert_id());


SELECT 
	t.codTransportadora, t.nomeTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora, 
	e.codEndereco, e.logradouro, e.cep, e.numero, e.bairro, e.complemento 
FROM 
	tblTransportadora AS t 
INNER JOIN 
	tblEndereco AS e 
ON 
	(t.codEndereco = e.codEndereco) 
ORDER BY 
	codTransportadora DESC;
	


