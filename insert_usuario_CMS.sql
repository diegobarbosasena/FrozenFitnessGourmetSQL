
insert into tblFuncionarioLoja (nomeFuncionarioLoja,cpfFuncionarioLoja) values ('Amanda Barreto', '123-456-789/10');
set @id = LAST_INSERT_ID();
insert into tblUsuario (usuario, senha, codTipoUsuario) values('Amanda','123','1');
insert into tblUsuarioFuncionarioLoja (codFuncionarioLoja, codUsuario) values (@id, LAST_INSERT_ID());