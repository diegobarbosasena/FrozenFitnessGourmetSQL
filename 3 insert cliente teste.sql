USE dbsmartgourmet;



INSERT INTO tblCliente
	(nomeCliente, cpfCliente, dtNascCliente, peso, altura, telefoneCliente, celularCliente, emailCliente, sexo) 
VALUES 
	('cliente 1','111.111.111-11','1990-10-02','75.2','1.75', '(11)1111-1111','(22)2222-2222', 'cliente1@cliente.com','M');

SET @id_cliente = LAST_INSERT_ID();

INSERT INTO tblEndereco
	(logradouro, cep, numero, bairro, complemento, codCidade) 
VALUES 
	('Rua das arvores', '22222-222', '2222' , 'Jd folhas 2', null, 3645);
    
SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteEnd
	(codEndereco, codCliente) 
VALUES (@id_endereco, @id_cliente);




INSERT INTO `tblCliente`
	(`nomeCliente`, `cpfCliente`, `dtNascCliente`, `peso`, `altura`, `telefoneCliente`, `celularCliente`, `emailCliente`, `sexo`) 
VALUES 
	('cliente 2','222.222.222-22','1989-11-22','80.2','1.82', '(33)3333-3333','(44)4444-4444', 'cliente2@cliente.com','F');

SET @id_cliente = LAST_INSERT_ID();

INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua das laranjas', '11111-111', '1111' , 'Pq caule ', null, 2214);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteEnd
	(codEndereco, codCliente) 
VALUES (@id_endereco, @id_cliente);




INSERT INTO `tblCliente`
	(`nomeCliente`, `cpfCliente`, `dtNascCliente`, `peso`, `altura`, `telefoneCliente`, `celularCliente`, `emailCliente`, `sexo`) 
VALUES 
	('cliente 3','333.333.333-33','1984-04-11','65.0','1.68', '(55)5555-5555','(66)6666-6666', 'cliente3@cliente.com','F');

SET @id_cliente = LAST_INSERT_ID();

INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua peras', '33333-333', '3333' , 'Jd pedas', null, 4125);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteEnd
	(codEndereco, codCliente) 
VALUES (@id_endereco, @id_cliente);




INSERT INTO `tblCliente`
	(`nomeCliente`, `cpfCliente`, `dtNascCliente`, `peso`, `altura`, `telefoneCliente`, `celularCliente`, `emailCliente`, `sexo`) 
VALUES 
	('cliente 4','444.444.444-44','1992-05-20','73.0','1.78', '(77)7777-7777','(88)8888-8888', 'cliente4@cliente.com','M');

SET @id_cliente = LAST_INSERT_ID();

INSERT INTO `tblEndereco`
	(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
	('Rua castanhas', '44444-444', '44444' , 'Jd coqueiros', null, 3554);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteEnd
	(codEndereco, codCliente) 
VALUES (@id_endereco, @id_cliente);







INSERT INTO tblClienteJuridico
	(nomeContato, razaoSocial, inscricaoEstadual, telefonePrincipal, telefoneContato, emailPrincipal, emailContato) 
VALUES 
	('juridico 1','juridico um', '111111111','(11)1111-1111','(22)2222-2222','juridico_um@jurico.com', 'contato_um@jurico.com' );
SET @id_cliente_juridico = LAST_INSERT_ID();

SET @id_cliente_juridico = LAST_INSERT_ID();

INSERT INTO tblEndereco
	(logradouro, cep, numero, bairro, complemento, codCidade) 
VALUES 
	('Rua das águas', '44444-444','444' , 'Jd molhado ', null, 2145);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteJuridicoEnd
	(codEndereco, codClienteJuridico) 
VALUES 
	(@id_endereco, @id_cliente_juridico);




INSERT INTO tblClienteJuridico
	(nomeContato, razaoSocial, inscricaoEstadual, telefonePrincipal, telefoneContato, emailPrincipal, emailContato) 
VALUES 
	('juridico 2','juridico dois', '222222222','(33)3333-3333','(44)4444-4444','juridico_dois@jurico.com', 'contato_dois@jurico.com' );
    
SET @id_cliente_juridico = LAST_INSERT_ID();

INSERT INTO tblEndereco
	(logradouro, cep, numero, bairro, complemento, codCidade) 
VALUES 
	('Rua dos fogos', '77777-777', '777' , 'Jd queimado', null, 1234);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteJuridicoEnd
	(codEndereco, codClienteJuridico) 
VALUES 
	(@id_endereco, @id_cliente_juridico);




INSERT INTO tblClienteJuridico
	(nomeContato, razaoSocial, inscricaoEstadual, telefonePrincipal, telefoneContato, emailPrincipal, emailContato) 
VALUES 
	('juridico 3','juridico tres', '333333333','(55)5555-5555','(66)6666-6666','juridico_tres@jurico.com', 'contato_tres@jurico.com' );
    
SET @id_cliente_juridico = LAST_INSERT_ID();

INSERT INTO tblEndereco
	(logradouro, cep, numero, bairro, complemento, codCidade) 
VALUES 
	('Rua dos ventos', '99999-999', '999' , 'Jd do Mar', null, 1223);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteJuridicoEnd
	(codEndereco, codClienteJuridico) 
VALUES 
	(@id_endereco, @id_cliente_juridico);




INSERT INTO tblClienteJuridico
	(nomeContato, razaoSocial, inscricaoEstadual, telefonePrincipal, telefoneContato, emailPrincipal, emailContato) 
VALUES 
	('juridico 4','juridico quatro', '444444444','(77)7777-7777','(88)8888-8888','juridico_quatro@jurico.com', 'contato_quatro@jurico.com' );

SET @id_cliente_juridico = LAST_INSERT_ID();

INSERT INTO tblEndereco
	(logradouro, cep, numero, bairro, complemento, codCidade) 
VALUES 
	('Rua sem asfalto', '55555-555', '2222' , 'Pq prefeitura', null, 2145);

SET @id_endereco = LAST_INSERT_ID();

INSERT INTO tblClienteJuridicoEnd
	(codEndereco, codClienteJuridico) 
VALUES 
	(@id_endereco, @id_cliente_juridico);
    
    