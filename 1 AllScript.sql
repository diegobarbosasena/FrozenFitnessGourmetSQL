DROP database if EXISTS dbsmartgourmet;

create database if not EXISTS dbsmartgourmet;
use dbsmartgourmet;

create table tblParceiro(
codParceiro int auto_increment primary key,
cnpjParceiro varchar(14),
nomeParceiro varchar(60),
imgParceiro varchar(100),
siteParceiro varchar (100),
telefoneParceiro varchar(20),
codEndereco int,
emailParceiro varchar(100));

create table tblEmpresa(
codEmpresa int auto_increment primary key,
cnpjEmpresa varchar(14),
nomeEmpresa varchar(60));

create table tblContato(
codContato int auto_increment primary key,
telefoneContato1 varchar(20),
emailContato varchar(100),
celularContato varchar(20),
telefoneContato2 varchar(20),
codEmpresa int);

create table tblEndereco(
codEndereco int auto_increment primary key,
logradouro varchar(100),
cep varchar(10),
numero varchar(30),
bairro varchar(60),
complemento varchar(80),
codCidade int);

create table tblEmpresaEnd(
codEmpresaEnd int auto_increment primary key,
codEndereco int,
codEmpresa int);

create table tblSobreLoja(
codSobreLoja int auto_increment primary key,
imgSobreLoja varchar(100),
imgSobreLoja1 varchar(100),
imgSobreLoja2 varchar(100),
imgSobreLoja3 varchar(100),
tituloSobreLoja varchar(100),
historiaSobreLoja text,
codEmpresa int);

create table tblTransportadora(
codTransportadora int auto_increment primary key,
nomeTransportadora varchar(60),
cnpjTransportadora varchar(19),
emailTransportadora varchar(100),
telefoneTransportadora varchar(20),
responsavelTransportadora varchar(60),
codEndereco int);

create table tblVeiculoTransp(
codVeiculoTransp int auto_increment primary key,
placaVeiculo varchar(8),
codTipoVeiculo int,
codTransportadora int);

create table tblTipoVeiculo(
codTipoVeiculo int auto_increment primary key,
nomeTipoVeiculo varchar(60));

create table tblPedido(
codPedido int auto_increment primary key,
tipoPedido varchar(60),
dtEntrega date,
dtCompra date,
codCliente int,
codStatus int,
codVeiculoTransp int);

create table tblStatus(
codStatus int auto_increment primary key,
statusPedido varchar(60));

create table tblItemPedido(
codItemPedido int auto_increment primary key,
quantidade int,
codPedido int,
codPrato int);

create table tblPrato(
codPrato int auto_increment primary key,
nomePrato varchar(100),
precoPrato decimal(5,3),
descricaoPrato text,
caloria decimal(5,3),
valorEnergetico decimal(5,3),
carboidrato decimal(5,3),
proteina decimal(5,3),
sodio decimal(5,3),
gorduras decimal(5,3),
imagemPrato varchar(100),
visitas int);

create table tblProdutoPrato(
codProdutoPrato int auto_increment primary key,
codPrato int,
codProduto int);

create table tblProduto(
codProduto int auto_increment primary key,
nomeProduto varchar(60),
imagemProduto varchar(100),
precoProduto decimal(5,3),
descricaoProduto text,
caloriaProduto decimal(5,3),
valorEnergeticoProduto decimal(5,3),
carboidratoProduto decimal(5,3),
proteinaProduto decimal(5,3),
sodioProduto decimal(5,3),
gordurasProduto decimal(5,3));

create table tblCatProduto(
codCatProduto int auto_increment primary key,
codCategoriaMateria int,
codProduto int);

create table tblProdutoMateria(
codProdutoMateria int auto_increment primary key,
codProduto int,
codMateria int);

create table tblMateriaPrima(
codMateria int auto_increment primary key,
nomeMateria varchar(60),
precoMateria decimal(5,3),
descricaoMateria text);

create table tblCatMateria(
codCatMateria int auto_increment primary key,
codMateria int,
codCategoriaMateria int);

create table tblCategoriaMateria(
codCategoriaMateria int auto_increment primary key,
nomeCategoriaMateria varchar(60),
imagemCategoriaMateria varchar(100),
descricaoCategoriaMateria text);

create table tblPratoPromocao(
codPratoPromocao int auto_increment primary key,
codPromocao int,
codPrato int);

create table tblEstoque(
codEstoque int auto_increment primary key,
codMateria int,
dtFabricacao date,
dtValidade date,
quantidade int,
quantidadeMinima int,
foreign key(codMateria) references tblMateriaPrima(codMateria));

create table tblProdutoPromocao(
codProdutoPromocao int auto_increment primary key,
codPromocao int,
codProduto int);

create table tblPromocao(
codPromocao int auto_increment primary key,
nomePromocao varchar(60),
dtInicial date,
dtFinal date,
valorDesconto decimal(5,3));

create table tblSlider(
codSlider int auto_increment primary key,
tituloSlider varchar(60),
linkImagemSlider varchar(200));

create table tblFaleConosco(
codFaleConosco int auto_increment primary key,
email varchar(100),
nome varchar(60),
sobrenome varchar(60),
mensagem text,
descricao varchar(60));

create table tblCatPrato(
codCatPrato int auto_increment primary key,
codPrato int,
codCategoriaPrato int);

create table tblCategoriaPrato(
codCategoriaPrato int auto_increment primary key,
nomeCategoriaPrato varchar(60),
imagemCategoriaPrato varchar(100),
descricaoCategoriaPrato text);

create table tblFuncionarioTransp(
codFuncionarioTransp int auto_increment primary key,
nomeFuncionarioTransp varchar(60),
cpfFuncionarioTransp varchar(14),
cargo varchar(60),
codTransportadora int);

create table tblUsuarioVeiculoTransp(
codUsuarioVeiculoTransp int auto_increment primary key,
codVeiculoTransp int,
codUsuario int);

create table tblUsuario(
codUsuario int auto_increment primary key,
usuario varchar(20),
senha varchar(20),
imagemUsuario varchar(200),
codTipoUsuario int);

create table tblTipoUsuario(
codTipoUsuario int auto_increment primary key,
nomeTipoUsuario varchar(30));

create table tblUsuarioFuncionarioLoja(
codUsuarioFuncionarioLoja int auto_increment primary key,
codFuncionarioLoja int,
codUsuario int);

create table tblFuncionarioLoja(
codFuncionarioLoja int auto_increment primary key, 
nomeFuncionarioLoja varchar(60),
cpfFuncionarioLoja varchar(14));

create table tblUsuarioCliente(
codUsuarioCliente int auto_increment primary key,
codCliente int,
codUsuario int);

create table tblCliente(
codCliente int auto_increment primary key,
nomeCliente varchar(60),
cpfCliente varchar(14),
dtNascCliente date,
peso decimal(5,3), 
altura decimal(5,3),
telefoneCliente varchar(60),
celularCliente varchar(20),
emailCliente varchar(100));

create table tblClienteEnd(
codClienteEnd int auto_increment primary key,
codEndereco int,
codCliente int);

create table tblCidade(
codCidade int auto_increment primary key,
nomeCidade varchar(60),
codEstado int);

create table tblEstado(
codEstado int auto_increment primary key,
nomeEstado varchar(60),
uf varchar(2));

create table tblObjetivoCliente(
codObjetivoCliente int auto_increment primary key,
codObjetivo int,
codCliente int);

create table tblObjetivo(
codObjetivo int auto_increment primary key,
nomeObjetivo varchar(660),
descricaoObjetivo text);

create table tblExercicioObjetivo(
codExercicioObjetivo int auto_increment primary key,
codExercicio int,
codObjetivo int);

create table tblExercicio(
codExercicio int auto_increment primary key,
imagemExercicio varchar(200),
tituloExercicio varchar(60),
descricaoExercicio text);

create table tblDica(
codDica int auto_increment primary key,
imagemDica varchar(200),
descricaoDica text,
tituloDica varchar(60));

create table tblDadosGps(
codDadosGps int auto_increment primary key,
codPedido int,
latitude varchar(100),
longitude varchar(100));

use dbsmartgourmet;

alter table tblContato
add foreign key(codEmpresa) references tblEmpresa(codEmpresa);

alter table tblVeiculoTransp
add foreign key(codTipoVeiculo) references tblTipoVeiculo(codTipoVeiculo);

alter table tblVeiculoTransp
add foreign key(codTransportadora) references tblTransportadora(codTransportadora);

alter table tblPedido
add foreign key(codCliente) references tblCliente(codCliente);

alter table tblPedido
add foreign key(codStatus) references tblStatus(codStatus);

alter table tblPedido
add foreign key(codVeiculoTransp) references tblVeiculoTransp(codVeiculoTransp);

alter table tblTransportadora
add foreign key(codEndereco) references tblEndereco(codEndereco);

alter table tblDadosGps
add foreign key(codPedido) references tblPedido(codPedido);

alter table tblUsuarioVeiculoTransp
add foreign key(codVeiculoTransp) references tblVeiculoTransp(codVeiculoTransp);

alter table tblUsuarioVeiculoTransp
add foreign key(codUsuario) references tblUsuario(codUsuario);

alter table tblItemPedido
add foreign key(codPedido) references tblPedido(codPedido);

alter table tblItemPedido
add foreign key(codPrato) references tblPrato(codPrato);

alter table tblProdutoPrato
add foreign key(codProduto) references tblProduto(codProduto);

alter table tblCatProduto
add foreign key(codCategoriaMateria) references tblCategoriaMateria(codCategoriaMateria);

alter table tblCatProduto
add foreign key(codProduto) references tblProduto(codProduto);

alter table tblProdutoMateria
add foreign key(codMateria) references tblMateriaPrima(codMateria);

alter table tblProdutoMateria
add foreign key(codProduto) references tblProduto(codProduto);

alter table tblCatMateria
add foreign key(codCategoriaMateria) references tblCategoriaMateria(codCategoriaMateria);

alter table tblCatMateria
add foreign key(codMateria) references tblMateriaPrima(codMateria);

alter table tblPratoPromocao
add foreign key(codPromocao) references tblPromocao(codPromocao);

alter table tblPratoPromocao
add foreign key(codPrato) references tblPrato(codPrato);

alter table tblProdutoPromocao
add foreign key(codPromocao) references tblPromocao(codPromocao);

alter table tblProdutoPromocao
add foreign key(codProduto) references tblProduto(codProduto);

alter table tblCatPrato
add foreign key(codPrato) references tblPrato(codPrato);

alter table tblCatPrato
add foreign key(codCategoriaPrato) references tblCategoriaPrato(codCategoriaPrato);

alter table tblSobreLoja
add foreign key(codEmpresa) references tblEmpresa(codEmpresa);

alter table tblEmpresaEnd
add foreign key(codEmpresa) references tblEmpresa(codEmpresa);

alter table tblEmpresaEnd
add foreign key(codEndereco) references tblEndereco(codEndereco);

alter table tblEndereco
add foreign key(codCidade) references tblCidade(codCidade);

alter table tblUsuarioFuncionarioLoja
add foreign key(codFuncionarioLoja) references tblFuncionarioLoja(codFuncionarioLoja);

alter table tblUsuarioFuncionarioLoja
add foreign key(codUsuario) references tblUsuario(codUsuario);

alter table tblCidade
add foreign key(codEstado) references tblEstado(codEstado);

alter table tblUsuarioCliente
add foreign key(codCliente) references tblCliente(codCliente);

alter table tblUsuarioCliente
add foreign key(codUsuario) references tblUsuario(codUsuario);

alter table tblClienteEnd
add foreign key(codEndereco) references tblEndereco(codEndereco);

alter table tblClienteEnd
add foreign key(codCliente) references tblCliente(codCliente);

alter table tblObjetivoCliente
add foreign key(codCliente) references tblCliente(codCliente);

alter table tblObjetivoCliente
add foreign key(codObjetivo) references tblObjetivo(codObjetivo);

alter table tblExercicioObjetivo
add foreign key(codObjetivo) references tblObjetivo(codObjetivo);

alter table tblExercicioObjetivo
add foreign key(codExercicio) references tblExercicio(codExercicio);

alter table tblParceiro
add foreign key(codEndereco) references tblEndereco(codEndereco);

alter table tblUsuario
add foreign key(codTipoUsuario) references tblTipoUsuario(codTipoUsuario);