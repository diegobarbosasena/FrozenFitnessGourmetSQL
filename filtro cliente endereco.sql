



SELECT endereco.*, cidade.*, estado.*, clie_ende.*, cliente.*
FROM tblEndereco endereco
LEFT JOIN tblCidade cidade
ON (cidade.codCidade = endereco.codCidade)
LEFT JOIN tblEstado estado
ON (estado.codEstado = cidade.codCidade)
LEFT JOIN tblClienteEnd clie_ende
ON (endereco.codEndereco = clie_ende.codEndereco)
LEFT JOIN tblCliente cliente
ON (cliente.codCliente = clie_ende.codCliente)
WHERE cliente.codCliente = 6; 


SELECT  cidade.*, estado.*, endereco.*, clie_ende.*, cliente.*
FROM tblEstado estado
LEFT JOIN tblCidade cidade
ON (cidade.codEstado = estado.codEstado)
LEFT JOIN tblEndereco endereco
ON (cidade.codCidade = endereco.codCidade)
LEFT JOIN tblClienteEnd clie_ende
ON (endereco.codEndereco = clie_ende.codEndereco)
LEFT JOIN tblCliente cliente
ON (cliente.codCliente = clie_ende.codCliente)
WHERE cliente.codCliente = 1; 


SELECT  cidade.*, estado.*, endereco.*, clie_juri_ende.*, clie_juri.*
FROM tblEstado estado
LEFT JOIN tblCidade cidade
ON (cidade.codEstado = estado.codEstado)
LEFT JOIN tblEndereco endereco
ON (cidade.codCidade = endereco.codCidade)
LEFT JOIN tblClienteJuridicoEnd clie_juri_ende
ON (endereco.codEndereco = clie_juri_ende.codEndereco)
LEFT JOIN tblClienteJuridico clie_juri
ON (clie_juri.codClienteJuridico = clie_juri_ende.codClienteJuridico)
WHERE clie_juri.codClienteJuridico = 10; 


select * from tblClienteJuridico;
