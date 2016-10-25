
INSERT INTO `tblEndereco`
(`logradouro`, `cep`, `numero`, `bairro`, `complemento`, `codCidade`) 
VALUES 
('Rua Teste', '123456', '12' , 'teste', null, null);


INSERT INTO `tblTransportadora`
(`nomeTransportadora`, `cnpjTransportadora`, `emailTransportadora`, `telefoneTransportadora`, `responsavelTransportadora`, `codEndereco`) 
VALUES 
('transp 1', '123456', 'transp1@transp1.com', '456789', 'resp transp 1', last_insert_id());


select 
	t.codTransportadora, t.cnpjTransportadora, t.emailTransportadora, t.telefoneTransportadora, t.responsavelTransportadora,
    e.logradouro, e.cep, e.numero, e.bairro, e.complemento
from 
	tblTransportadora as t
inner join
	tblEndereco as e
on 
	(t.codEndereco = e.codEndereco);
	






