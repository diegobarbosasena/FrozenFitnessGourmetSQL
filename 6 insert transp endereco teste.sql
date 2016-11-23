USE dbsmartgourmet;

INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 1', '11111-111', '1111' , 'Pq Transp 1', null, 3331);

INSERT INTO 
	`tblTransportadora`
(`razaoSocial`, `nomeFantasia`, `cnpjTransportadora`, `telefonePrincipal`, `telefoneContato`, `emailPrincipal`, `emailContato`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('Transp 1','Transp um','11.111.111/1111-11','(11)1111-1111','(22)2222-2222', 'transp1@transp.com','transp_um@transp.com','Mohammed Med', last_insert_id());


INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 2', '22222-222', '2222' , 'Jd Transp 2', null, 3656);

INSERT INTO 
	`tblTransportadora`
(`razaoSocial`, `nomeFantasia`, `cnpjTransportadora`, `telefonePrincipal`, `telefoneContato`, `emailPrincipal`, `emailContato`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('Transp 2','Transp 2','22.222.222/2222-22','(33)3333-3333','(44)4444-4444', 'transp2@transp.com','transp_dois@transp.com','Evie Amelia', last_insert_id());


INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 3', '33333-333', '3333' , 'Jd Transp 3', null, 3552);

INSERT INTO 
	`tblTransportadora`
(`razaoSocial`, `nomeFantasia`, `cnpjTransportadora`, `telefonePrincipal`, `telefoneContato`, `emailPrincipal`, `emailContato`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('Transp 3','Transp 3','33.333.333/3333-33','(55)5555-5555','(66)6666-6666', 'transp3transp.com','transp_tres@transp.com','Thomas Joshua', last_insert_id());


INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 4', '44444-444', '4444' , 'Pq Transp 4', null, 3526);

INSERT INTO 
	`tblTransportadora`
(`razaoSocial`, `nomeFantasia`, `cnpjTransportadora`, `telefonePrincipal`, `telefoneContato`, `emailPrincipal`, `emailContato`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('Transp 4','Transp 4','44.444.444/4444-44','(77)7777-7777','(88)8888-8888', 'transp4transp.com','transp_quatro@transp.com','Ruby Sophie', last_insert_id());



INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua Transp 0', '00000-000', '0000' , 'Pq Transp 0', null, 3526);

INSERT INTO 
	`tblTransportadora`
(`razaoSocial`, `nomeFantasia`, `cnpjTransportadora`, `telefonePrincipal`, `telefoneContato`, `emailPrincipal`, `emailContato`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('Transp teste','Transp teste','00.000.000/0000-00','(00)0000-0000','(00)0000-0000', 'transp_teste@transp.com','transp_teste@transp.com','Teste Teste', last_insert_id());


SELECT t.*, e.*
FROM tblTransportadora t
LEFT JOIN tblEndereco e
ON(t.codEndereco = e.codEndereco);