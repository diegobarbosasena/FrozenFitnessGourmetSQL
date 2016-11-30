INSERT INTO `tblCliente`
	(`nomeCliente`, `cpfCliente`, `dtNascCliente`, `peso`, `altura`, `telefoneCliente`, `celularCliente`, `emailCliente`,`sexo`) 
VALUES 
	('Julia Pereira ','437-137-648/75','1997-01-02', '65', '1', '11 3655-3419', '11 4 8941-929', 'juliapcosta97@gmail.com','F');

set @id = LAST_INSERT_ID();

INSERT INTO tblObjetivoCliente 
	(codObjetivo, codCliente) 
values 
	('1',@id);

insert into tblEndereco 
	(logradouro,cep,numero,bairro,complemento,codCidade) 
values 
	('Rua Santa Josefina Bakhita', '06160-209','34','Bandeiras','nenhum', '85');
	
INSERT INTO `tblClienteEnd`
	(`codEndereco`, `codCliente`) 
VALUES 
	(LAST_INSERT_ID(),@id);
	
insert into tblUsuario 
	(usuario,senha) 
values 
	('Julia','123');
insert into tblUsuarioCliente 
	(codCliente, codUsuario) 
values 
	(@id, LAST_INSERT_ID());