-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: dbsmartgourmet
-- ------------------------------------------------------
-- Server version	5.7.11-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblcarrinho`
--

DROP TABLE IF EXISTS `tblcarrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcarrinho` (
  `codCarrinho` int(11) NOT NULL AUTO_INCREMENT,
  `codCliente` int(11) DEFAULT NULL,
  `codPrato` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codCarrinho`),
  KEY `codCliente` (`codCliente`),
  KEY `codPrato` (`codPrato`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblcarrinho_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `tblcliente` (`codCliente`),
  CONSTRAINT `tblcarrinho_ibfk_2` FOREIGN KEY (`codPrato`) REFERENCES `tblprato` (`codPrato`),
  CONSTRAINT `tblcarrinho_ibfk_3` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcarrinho`
--

LOCK TABLES `tblcarrinho` WRITE;
/*!40000 ALTER TABLE `tblcarrinho` DISABLE KEYS */;
INSERT INTO `tblcarrinho` VALUES (4,1,1,NULL,NULL),(5,1,NULL,NULL,1),(6,1,NULL,NULL,2),(7,1,NULL,NULL,10),(8,1,NULL,NULL,3),(9,1,NULL,NULL,6);
/*!40000 ALTER TABLE `tblcarrinho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategoriamateria`
--

DROP TABLE IF EXISTS `tblcategoriamateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategoriamateria` (
  `codCategoriaMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoriaMateria` varchar(60) DEFAULT NULL,
  `imagemCategoriaMateria` varchar(100) DEFAULT NULL,
  `descricaoCategoriaMateria` text,
  PRIMARY KEY (`codCategoriaMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategoriamateria`
--

LOCK TABLES `tblcategoriamateria` WRITE;
/*!40000 ALTER TABLE `tblcategoriamateria` DISABLE KEYS */;
INSERT INTO `tblcategoriamateria` VALUES (1,'Frios',NULL,NULL),(2,'Farinha',NULL,NULL),(3,'Carne',NULL,NULL),(4,'Frutos do Mar',NULL,NULL),(5,'Salada',NULL,NULL),(6,'Sobremesa',NULL,NULL),(7,'Bebida',NULL,NULL);
/*!40000 ALTER TABLE `tblcategoriamateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategoriaprato`
--

DROP TABLE IF EXISTS `tblcategoriaprato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategoriaprato` (
  `codCategoriaPrato` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoriaPrato` varchar(60) DEFAULT NULL,
  `imagemCategoriaPrato` varchar(100) DEFAULT NULL,
  `descricaoCategoriaPrato` text,
  PRIMARY KEY (`codCategoriaPrato`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategoriaprato`
--

LOCK TABLES `tblcategoriaprato` WRITE;
/*!40000 ALTER TABLE `tblcategoriaprato` DISABLE KEYS */;
INSERT INTO `tblcategoriaprato` VALUES (1,'Carnes','conteudo/imagem/carne.jpg','Versátil, a carne está sempre presente na mesa da maioria dos brasileiros. E o melhor: ela pode se adequar a diferentes pratos.'),(2,'Massas','conteudo/imagem/massa.jpg','Impossível não experimentar este saboroso prato italiano'),(4,'Vegetariano','conteudo/imagem/vegetariano.jpg','As melhores receitas da culinária vegetariana você só encontra!'),(5,'Peixes','conteudo/imagem/peixe.jpg','E para quem ama frutos do mar temos diversas opções de pratos!'),(6,'Aves','conteudo/imagem/frango.jpg','Aqui você encontrará receitas de frango, de galinha, peru, pato e muitas mais!');
/*!40000 ALTER TABLE `tblcategoriaprato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcatmateria`
--

DROP TABLE IF EXISTS `tblcatmateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcatmateria` (
  `codCatMateria` int(11) NOT NULL AUTO_INCREMENT,
  `codMateria` int(11) DEFAULT NULL,
  `codCategoriaMateria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codCatMateria`),
  KEY `codCategoriaMateria` (`codCategoriaMateria`),
  KEY `codMateria` (`codMateria`),
  CONSTRAINT `tblcatmateria_ibfk_1` FOREIGN KEY (`codCategoriaMateria`) REFERENCES `tblcategoriamateria` (`codCategoriaMateria`),
  CONSTRAINT `tblcatmateria_ibfk_2` FOREIGN KEY (`codMateria`) REFERENCES `tblmateriaprima` (`codMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcatmateria`
--

LOCK TABLES `tblcatmateria` WRITE;
/*!40000 ALTER TABLE `tblcatmateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcatmateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcatprato`
--

DROP TABLE IF EXISTS `tblcatprato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcatprato` (
  `codCatPrato` int(11) NOT NULL AUTO_INCREMENT,
  `codPrato` int(11) DEFAULT NULL,
  `codCategoriaPrato` int(11) DEFAULT NULL,
  PRIMARY KEY (`codCatPrato`),
  KEY `codPrato` (`codPrato`),
  KEY `codCategoriaPrato` (`codCategoriaPrato`),
  CONSTRAINT `tblcatprato_ibfk_1` FOREIGN KEY (`codPrato`) REFERENCES `tblprato` (`codPrato`),
  CONSTRAINT `tblcatprato_ibfk_2` FOREIGN KEY (`codCategoriaPrato`) REFERENCES `tblcategoriaprato` (`codCategoriaPrato`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcatprato`
--

LOCK TABLES `tblcatprato` WRITE;
/*!40000 ALTER TABLE `tblcatprato` DISABLE KEYS */;
INSERT INTO `tblcatprato` VALUES (1,1,2),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2);
/*!40000 ALTER TABLE `tblcatprato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcatproduto`
--

DROP TABLE IF EXISTS `tblcatproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcatproduto` (
  `codCatProduto` int(11) NOT NULL AUTO_INCREMENT,
  `codCategoriaMateria` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codCatProduto`),
  KEY `codCategoriaMateria` (`codCategoriaMateria`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblcatproduto_ibfk_1` FOREIGN KEY (`codCategoriaMateria`) REFERENCES `tblcategoriamateria` (`codCategoriaMateria`),
  CONSTRAINT `tblcatproduto_ibfk_2` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcatproduto`
--

LOCK TABLES `tblcatproduto` WRITE;
/*!40000 ALTER TABLE `tblcatproduto` DISABLE KEYS */;
INSERT INTO `tblcatproduto` VALUES (1,3,1),(2,6,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,7,10);
/*!40000 ALTER TABLE `tblcatproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcidade`
--

DROP TABLE IF EXISTS `tblcidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcidade` (
  `codCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(60) DEFAULT NULL,
  `codEstado` int(11) DEFAULT NULL,
  PRIMARY KEY (`codCidade`),
  KEY `codEstado` (`codEstado`),
  CONSTRAINT `tblcidade_ibfk_1` FOREIGN KEY (`codEstado`) REFERENCES `tblestado` (`codEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=5566 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcidade`
--

LOCK TABLES `tblcidade` WRITE;
/*!40000 ALTER TABLE `tblcidade` DISABLE KEYS */;
INSERT INTO `tblcidade` VALUES (1,'Alta Floresta D\'Oeste',21),(2,'Alto Alegre dos Parecis',21),(3,'Alto Paraíso',21),(4,'Alvorada D\'Oeste',21),(5,'Ariquemes',21),(6,'Buritis',21),(7,'Cabixi',21),(8,'Cacaulândia',21),(9,'Cacoal',21),(10,'Campo Novo de Rondônia',21),(11,'Candeias do Jamari',21),(12,'Castanheiras',21),(13,'Cerejeiras',21),(14,'Chupinguaia',21),(15,'Colorado do Oeste',21),(16,'Corumbiara',21),(17,'Costa Marques',21),(18,'Cujubim',21),(19,'Espigão D\'Oeste',21),(20,'Governador Jorge Teixeira',21),(21,'Guajará-Mirim',21),(22,'Itapuã do Oeste',21),(23,'Jaru',21),(24,'Ji-Paraná',21),(25,'Machadinho D\'Oeste',21),(26,'Ministro Andreazza',21),(27,'Mirante da Serra',21),(28,'Monte Negro',21),(29,'Nova Brasilândia D\'Oeste',21),(30,'Nova Mamoré',21),(31,'Nova União',21),(32,'Novo Horizonte do Oeste',21),(33,'Ouro Preto do Oeste',21),(34,'Parecis',21),(35,'Pimenta Bueno',21),(36,'Pimenteiras do Oeste',21),(37,'Porto Velho',21),(38,'Presidente Médici',21),(39,'Primavera de Rondônia',21),(40,'Rio Crespo',21),(41,'Rolim de Moura',21),(42,'Santa Luzia D\'Oeste',21),(43,'São Felipe D\'Oeste',21),(44,'São Francisco do Guaporé',21),(45,'São Miguel do Guaporé',21),(46,'Seringueiras',21),(47,'Teixeirópolis',21),(48,'Theobroma',21),(49,'Urupá',21),(50,'Vale do Anari',21),(51,'Vale do Paraíso',21),(52,'Vilhena',21),(53,'Acrelândia',1),(54,'Assis Brasil',1),(55,'Brasiléia',1),(56,'Bujari',1),(57,'Capixaba',1),(58,'Cruzeiro do Sul',1),(59,'Epitaciolândia',1),(60,'Feijó',1),(61,'Jordão',1),(62,'Mâncio Lima',1),(63,'Manoel Urbano',1),(64,'Marechal Thaumaturgo',1),(65,'Plácido de Castro',1),(66,'Porto Acre',1),(67,'Porto Walter',1),(68,'Rio Branco',1),(69,'Rodrigues Alves',1),(70,'Santa Rosa do Purus',1),(71,'Sena Madureira',1),(72,'Senador Guiomard',1),(73,'Tarauacá',1),(74,'Xapuri',1),(75,'Alvarães',3),(76,'Amaturá',3),(77,'Anamã',3),(78,'Anori',3),(79,'Apuí',3),(80,'Atalaia do Norte',3),(81,'Autazes',3),(82,'Barcelos',3),(83,'Barreirinha',3),(84,'Benjamin Constant',3),(85,'Beruri',3),(86,'Boa Vista do Ramos',3),(87,'Boca do Acre',3),(88,'Borba',3),(89,'Caapiranga',3),(90,'Canutama',3),(91,'Carauari',3),(92,'Careiro',3),(93,'Careiro da Várzea',3),(94,'Coari',3),(95,'Codajás',3),(96,'Eirunepé',3),(97,'Envira',3),(98,'Fonte Boa',3),(99,'Guajará',3),(100,'Humaitá',3),(101,'Ipixuna',3),(102,'Iranduba',3),(103,'Itacoatiara',3),(104,'Itamarati',3),(105,'Itapiranga',3),(106,'Japurá',3),(107,'Juruá',3),(108,'Jutaí',3),(109,'Lábrea',3),(110,'Manacapuru',3),(111,'Manaquiri',3),(112,'Manaus',3),(113,'Manicoré',3),(114,'Maraã',3),(115,'Maués',3),(116,'Nhamundá',3),(117,'Nova Olinda do Norte',3),(118,'Novo Airão',3),(119,'Novo Aripuanã',3),(120,'Parintins',3),(121,'Pauini',3),(122,'Presidente Figueiredo',3),(123,'Rio Preto da Eva',3),(124,'Santa Isabel do Rio Negro',3),(125,'Santo Antônio do Içá',3),(126,'São Gabriel da Cachoeira',3),(127,'São Paulo de Olivença',3),(128,'São Sebastião do Uatumã',3),(129,'Silves',3),(130,'Tabatinga',3),(131,'Tapauá',3),(132,'Tefé',3),(133,'Tonantins',3),(134,'Uarini',3),(135,'Urucará',3),(136,'Urucurituba',3),(137,'Alto Alegre',22),(138,'Amajari',22),(139,'Boa Vista',22),(140,'Bonfim',22),(141,'Cantá',22),(142,'Caracaraí',22),(143,'Caroebe',22),(144,'Iracema',22),(145,'Mucajaí',22),(146,'Normandia',22),(147,'Pacaraima',22),(148,'Rorainópolis',22),(149,'São João da Baliza',22),(150,'São Luiz',22),(151,'Uiramutã',22),(152,'Abaetetuba',14),(153,'Abel Figueiredo',14),(154,'Acará',14),(155,'Afuá',14),(156,'Água Azul do Norte',14),(157,'Alenquer',14),(158,'Almeirim',14),(159,'Altamira',14),(160,'Anajás',14),(161,'Ananindeua',14),(162,'Anapu',14),(163,'Augusto Corrêa',14),(164,'Aurora do Pará',14),(165,'Aveiro',14),(166,'Bagre',14),(167,'Baião',14),(168,'Bannach',14),(169,'Barcarena',14),(170,'Belém',14),(171,'Belterra',14),(172,'Benevides',14),(173,'Bom Jesus do Tocantins',14),(174,'Bonito',14),(175,'Bragança',14),(176,'Brasil Novo',14),(177,'Brejo Grande do Araguaia',14),(178,'Breu Branco',14),(179,'Breves',14),(180,'Bujaru',14),(181,'Cachoeira do Arari',14),(182,'Cachoeira do Piriá',14),(183,'Cametá',14),(184,'Canaã dos Carajás',14),(185,'Capanema',14),(186,'Capitão Poço',14),(187,'Castanhal',14),(188,'Chaves',14),(189,'Colares',14),(190,'Conceição do Araguaia',14),(191,'Concórdia do Pará',14),(192,'Cumaru do Norte',14),(193,'Curionópolis',14),(194,'Curralinho',14),(195,'Curuá',14),(196,'Curuçá',14),(197,'Dom Eliseu',14),(198,'Eldorado dos Carajás',14),(199,'Faro',14),(200,'Floresta do Araguaia',14),(201,'Garrafão do Norte',14),(202,'Goianésia do Pará',14),(203,'Gurupá',14),(204,'Igarapé-Açu',14),(205,'Igarapé-Miri',14),(206,'Inhangapi',14),(207,'Ipixuna do Pará',14),(208,'Irituia',14),(209,'Itaituba',14),(210,'Itupiranga',14),(211,'Jacareacanga',14),(212,'Jacundá',14),(213,'Juruti',14),(214,'Limoeiro do Ajuru',14),(215,'Mãe do Rio',14),(216,'Magalhães Barata',14),(217,'Marabá',14),(218,'Maracanã',14),(219,'Marapanim',14),(220,'Marituba',14),(221,'Medicilândia',14),(222,'Melgaço',14),(223,'Mocajuba',14),(224,'Moju',14),(225,'Monte Alegre',14),(226,'Muaná',14),(227,'Nova Esperança do Piriá',14),(228,'Nova Ipixuna',14),(229,'Nova Timboteua',14),(230,'Novo Progresso',14),(231,'Novo Repartimento',14),(232,'Óbidos',14),(233,'Oeiras do Pará',14),(234,'Oriximiná',14),(235,'Ourém',14),(236,'Ourilândia do Norte',14),(237,'Pacajá',14),(238,'Palestina do Pará',14),(239,'Paragominas',14),(240,'Parauapebas',14),(241,'Pau D\'Arco',14),(242,'Peixe-Boi',14),(243,'Piçarra',14),(244,'Placas',14),(245,'Ponta de Pedras',14),(246,'Portel',14),(247,'Porto de Moz',14),(248,'Prainha',14),(249,'Primavera',14),(250,'Quatipuru',14),(251,'Redenção',14),(252,'Rio Maria',14),(253,'Rondon do Pará',14),(254,'Rurópolis',14),(255,'Salinópolis',14),(256,'Salvaterra',14),(257,'Santa Bárbara do Pará',14),(258,'Santa Cruz do Arari',14),(259,'Santa Isabel do Pará',14),(260,'Santa Luzia do Pará',14),(261,'Santa Maria das Barreiras',14),(262,'Santa Maria do Pará',14),(263,'Santana do Araguaia',14),(264,'Santarém',14),(265,'Santarém Novo',14),(266,'Santo Antônio do Tauá',14),(267,'São Caetano de Odivelas',14),(268,'São Domingos do Araguaia',14),(269,'São Domingos do Capim',14),(270,'São Félix do Xingu',14),(271,'São Francisco do Pará',14),(272,'São Geraldo do Araguaia',14),(273,'São João da Ponta',14),(274,'São João de Pirabas',14),(275,'São João do Araguaia',14),(276,'São Miguel do Guamá',14),(277,'São Sebastião da Boa Vista',14),(278,'Sapucaia',14),(279,'Senador José Porfírio',14),(280,'Soure',14),(281,'Tailândia',14),(282,'Terra Alta',14),(283,'Terra Santa',14),(284,'Tomé-Açu',14),(285,'Tracuateua',14),(286,'Trairão',14),(287,'Tucumã',14),(288,'Tucuruí',14),(289,'Ulianópolis',14),(290,'Uruará',14),(291,'Vigia',14),(292,'Viseu',14),(293,'Vitória do Xingu',14),(294,'Xinguara',14),(295,'Amapá',4),(296,'Calçoene',4),(297,'Cutias',4),(298,'Ferreira Gomes',4),(299,'Itaubal',4),(300,'Laranjal do Jari',4),(301,'Macapá',4),(302,'Mazagão',4),(303,'Oiapoque',4),(304,'Pedra Branca do Amapari',4),(305,'Porto Grande',4),(306,'Pracuúba',4),(307,'Santana',4),(308,'Serra do Navio',4),(309,'Tartarugalzinho',4),(310,'Vitória do Jari',4),(311,'Abreulândia',27),(312,'Aguiarnópolis',27),(313,'Aliança do Tocantins',27),(314,'Almas',27),(315,'Alvorada',27),(316,'Ananás',27),(317,'Angico',27),(318,'Aparecida do Rio Negro',27),(319,'Aragominas',27),(320,'Araguacema',27),(321,'Araguaçu',27),(322,'Araguaína',27),(323,'Araguanã',27),(324,'Araguatins',27),(325,'Arapoema',27),(326,'Arraias',27),(327,'Augustinópolis',27),(328,'Aurora do Tocantins',27),(329,'Axixá do Tocantins',27),(330,'Babaçulândia',27),(331,'Bandeirantes do Tocantins',27),(332,'Barra do Ouro',27),(333,'Barrolândia',27),(334,'Bernardo Sayão',27),(335,'Bom Jesus do Tocantins',27),(336,'Brasilândia do Tocantins',27),(337,'Brejinho de Nazaré',27),(338,'Buriti do Tocantins',27),(339,'Cachoeirinha',27),(340,'Campos Lindos',27),(341,'Cariri do Tocantins',27),(342,'Carmolândia',27),(343,'Carrasco Bonito',27),(344,'Caseara',27),(345,'Centenário',27),(346,'Chapada da Natividade',27),(347,'Chapada de Areia',27),(348,'Colinas do Tocantins',27),(349,'Colméia',27),(350,'Combinado',27),(351,'Conceição do Tocantins',27),(352,'Couto Magalhães',27),(353,'Cristalândia',27),(354,'Crixás do Tocantins',27),(355,'Darcinópolis',27),(356,'Dianópolis',27),(357,'Divinópolis do Tocantins',27),(358,'Dois Irmãos do Tocantins',27),(359,'Dueré',27),(360,'Esperantina',27),(361,'Fátima',27),(362,'Figueirópolis',27),(363,'Filadélfia',27),(364,'Formoso do Araguaia',27),(365,'Fortaleza do Tabocão',27),(366,'Goianorte',27),(367,'Goiatins',27),(368,'Guaraí',27),(369,'Gurupi',27),(370,'Ipueiras',27),(371,'Itacajá',27),(372,'Itaguatins',27),(373,'Itapiratins',27),(374,'Itaporã do Tocantins',27),(375,'Jaú do Tocantins',27),(376,'Juarina',27),(377,'Lagoa da Confusão',27),(378,'Lagoa do Tocantins',27),(379,'Lajeado',27),(380,'Lavandeira',27),(381,'Lizarda',27),(382,'Luzinópolis',27),(383,'Marianópolis do Tocantins',27),(384,'Mateiros',27),(385,'Maurilândia do Tocantins',27),(386,'Miracema do Tocantins',27),(387,'Miranorte',27),(388,'Monte do Carmo',27),(389,'Monte Santo do Tocantins',27),(390,'Muricilândia',27),(391,'Natividade',27),(392,'Nazaré',27),(393,'Nova Olinda',27),(394,'Nova Rosalândia',27),(395,'Novo Acordo',27),(396,'Novo Alegre',27),(397,'Novo Jardim',27),(398,'Oliveira de Fátima',27),(399,'Palmas',27),(400,'Palmeirante',27),(401,'Palmeiras do Tocantins',27),(402,'Palmeirópolis',27),(403,'Paraíso do Tocantins',27),(404,'Paranã',27),(405,'Pau D\'Arco',27),(406,'Pedro Afonso',27),(407,'Peixe',27),(408,'Pequizeiro',27),(409,'Pindorama do Tocantins',27),(410,'Piraquê',27),(411,'Pium',27),(412,'Ponte Alta do Bom Jesus',27),(413,'Ponte Alta do Tocantins',27),(414,'Porto Alegre do Tocantins',27),(415,'Porto Nacional',27),(416,'Praia Norte',27),(417,'Presidente Kennedy',27),(418,'Pugmil',27),(419,'Recursolândia',27),(420,'Riachinho',27),(421,'Rio da Conceição',27),(422,'Rio dos Bois',27),(423,'Rio Sono',27),(424,'Sampaio',27),(425,'Sandolândia',27),(426,'Santa Fé do Araguaia',27),(427,'Santa Maria do Tocantins',27),(428,'Santa Rita do Tocantins',27),(429,'Santa Rosa do Tocantins',27),(430,'Santa Tereza do Tocantins',27),(431,'Santa Terezinha do Tocantins',27),(432,'São Bento do Tocantins',27),(433,'São Félix do Tocantins',27),(434,'São Miguel do Tocantins',27),(435,'São Salvador do Tocantins',27),(436,'São Sebastião do Tocantins',27),(437,'São Valério',27),(438,'Silvanópolis',27),(439,'Sítio Novo do Tocantins',27),(440,'Sucupira',27),(441,'Taguatinga',27),(442,'Taipas do Tocantins',27),(443,'Talismã',27),(444,'Tocantínia',27),(445,'Tocantinópolis',27),(446,'Tupirama',27),(447,'Tupiratins',27),(448,'Wanderlândia',27),(449,'Xambioá',27),(450,'Açailândia',10),(451,'Afonso Cunha',10),(452,'Água Doce do Maranhão',10),(453,'Alcântara',10),(454,'Aldeias Altas',10),(455,'Altamira do Maranhão',10),(456,'Alto Alegre do Maranhão',10),(457,'Alto Alegre do Pindaré',10),(458,'Alto Parnaíba',10),(459,'Amapá do Maranhão',10),(460,'Amarante do Maranhão',10),(461,'Anajatuba',10),(462,'Anapurus',10),(463,'Apicum-Açu',10),(464,'Araguanã',10),(465,'Araioses',10),(466,'Arame',10),(467,'Arari',10),(468,'Axixá',10),(469,'Bacabal',10),(470,'Bacabeira',10),(471,'Bacuri',10),(472,'Bacurituba',10),(473,'Balsas',10),(474,'Barão de Grajaú',10),(475,'Barra do Corda',10),(476,'Barreirinhas',10),(477,'Bela Vista do Maranhão',10),(478,'Belágua',10),(479,'Benedito Leite',10),(480,'Bequimão',10),(481,'Bernardo do Mearim',10),(482,'Boa Vista do Gurupi',10),(483,'Bom Jardim',10),(484,'Bom Jesus das Selvas',10),(485,'Bom Lugar',10),(486,'Brejo',10),(487,'Brejo de Areia',10),(488,'Buriti',10),(489,'Buriti Bravo',10),(490,'Buriticupu',10),(491,'Buritirana',10),(492,'Cachoeira Grande',10),(493,'Cajapió',10),(494,'Cajari',10),(495,'Campestre do Maranhão',10),(496,'Cândido Mendes',10),(497,'Cantanhede',10),(498,'Capinzal do Norte',10),(499,'Carolina',10),(500,'Carutapera',10),(501,'Caxias',10),(502,'Cedral',10),(503,'Central do Maranhão',10),(504,'Centro do Guilherme',10),(505,'Centro Novo do Maranhão',10),(506,'Chapadinha',10),(507,'Cidelândia',10),(508,'Codó',10),(509,'Coelho Neto',10),(510,'Colinas',10),(511,'Conceição do Lago-Açu',10),(512,'Coroatá',10),(513,'Cururupu',10),(514,'Davinópolis',10),(515,'Dom Pedro',10),(516,'Duque Bacelar',10),(517,'Esperantinópolis',10),(518,'Estreito',10),(519,'Feira Nova do Maranhão',10),(520,'Fernando Falcão',10),(521,'Formosa da Serra Negra',10),(522,'Fortaleza dos Nogueiras',10),(523,'Fortuna',10),(524,'Godofredo Viana',10),(525,'Gonçalves Dias',10),(526,'Governador Archer',10),(527,'Governador Edison Lobão',10),(528,'Governador Eugênio Barros',10),(529,'Governador Luiz Rocha',10),(530,'Governador Newton Bello',10),(531,'Governador Nunes Freire',10),(532,'Graça Aranha',10),(533,'Grajaú',10),(534,'Guimarães',10),(535,'Humberto de Campos',10),(536,'Icatu',10),(537,'Igarapé do Meio',10),(538,'Igarapé Grande',10),(539,'Imperatriz',10),(540,'Itaipava do Grajaú',10),(541,'Itapecuru Mirim',10),(542,'Itinga do Maranhão',10),(543,'Jatobá',10),(544,'Jenipapo dos Vieiras',10),(545,'João Lisboa',10),(546,'Joselândia',10),(547,'Junco do Maranhão',10),(548,'Lago da Pedra',10),(549,'Lago do Junco',10),(550,'Lago dos Rodrigues',10),(551,'Lago Verde',10),(552,'Lagoa do Mato',10),(553,'Lagoa Grande do Maranhão',10),(554,'Lajeado Novo',10),(555,'Lima Campos',10),(556,'Loreto',10),(557,'Luís Domingues',10),(558,'Magalhães de Almeida',10),(559,'Maracaçumé',10),(560,'Marajá do Sena',10),(561,'Maranhãozinho',10),(562,'Mata Roma',10),(563,'Matinha',10),(564,'Matões',10),(565,'Matões do Norte',10),(566,'Milagres do Maranhão',10),(567,'Mirador',10),(568,'Miranda do Norte',10),(569,'Mirinzal',10),(570,'Monção',10),(571,'Montes Altos',10),(572,'Morros',10),(573,'Nina Rodrigues',10),(574,'Nova Colinas',10),(575,'Nova Iorque',10),(576,'Nova Olinda do Maranhão',10),(577,'Olho d\'Água das Cunhãs',10),(578,'Olinda Nova do Maranhão',10),(579,'Paço do Lumiar',10),(580,'Palmeirândia',10),(581,'Paraibano',10),(582,'Parnarama',10),(583,'Passagem Franca',10),(584,'Pastos Bons',10),(585,'Paulino Neves',10),(586,'Paulo Ramos',10),(587,'Pedreiras',10),(588,'Pedro do Rosário',10),(589,'Penalva',10),(590,'Peri Mirim',10),(591,'Peritoró',10),(592,'Pindaré-Mirim',10),(593,'Pinheiro',10),(594,'Pio XII',10),(595,'Pirapemas',10),(596,'Poção de Pedras',10),(597,'Porto Franco',10),(598,'Porto Rico do Maranhão',10),(599,'Presidente Dutra',10),(600,'Presidente Juscelino',10),(601,'Presidente Médici',10),(602,'Presidente Sarney',10),(603,'Presidente Vargas',10),(604,'Primeira Cruz',10),(605,'Raposa',10),(606,'Riachão',10),(607,'Ribamar Fiquene',10),(608,'Rosário',10),(609,'Sambaíba',10),(610,'Santa Filomena do Maranhão',10),(611,'Santa Helena',10),(612,'Santa Inês',10),(613,'Santa Luzia',10),(614,'Santa Luzia do Paruá',10),(615,'Santa Quitéria do Maranhão',10),(616,'Santa Rita',10),(617,'Santana do Maranhão',10),(618,'Santo Amaro do Maranhão',10),(619,'Santo Antônio dos Lopes',10),(620,'São Benedito do Rio Preto',10),(621,'São Bento',10),(622,'São Bernardo',10),(623,'São Domingos do Azeitão',10),(624,'São Domingos do Maranhão',10),(625,'São Félix de Balsas',10),(626,'São Francisco do Brejão',10),(627,'São Francisco do Maranhão',10),(628,'São João Batista',10),(629,'São João do Carú',10),(630,'São João do Paraíso',10),(631,'São João do Soter',10),(632,'São João dos Patos',10),(633,'São José de Ribamar',10),(634,'São José dos Basílios',10),(635,'São Luís',10),(636,'São Luís Gonzaga do Maranhão',10),(637,'São Mateus do Maranhão',10),(638,'São Pedro da Água Branca',10),(639,'São Pedro dos Crentes',10),(640,'São Raimundo das Mangabeiras',10),(641,'São Raimundo do Doca Bezerra',10),(642,'São Roberto',10),(643,'São Vicente Ferrer',10),(644,'Satubinha',10),(645,'Senador Alexandre Costa',10),(646,'Senador La Rocque',10),(647,'Serrano do Maranhão',10),(648,'Sítio Novo',10),(649,'Sucupira do Norte',10),(650,'Sucupira do Riachão',10),(651,'Tasso Fragoso',10),(652,'Timbiras',10),(653,'Timon',10),(654,'Trizidela do Vale',10),(655,'Tufilândia',10),(656,'Tuntum',10),(657,'Turiaçu',10),(658,'Turilândia',10),(659,'Tutóia',10),(660,'Urbano Santos',10),(661,'Vargem Grande',10),(662,'Viana',10),(663,'Vila Nova dos Martírios',10),(664,'Vitória do Mearim',10),(665,'Vitorino Freire',10),(666,'Zé Doca',10),(667,'Acauã',17),(668,'Agricolândia',17),(669,'Água Branca',17),(670,'Alagoinha do Piauí',17),(671,'Alegrete do Piauí',17),(672,'Alto Longá',17),(673,'Altos',17),(674,'Alvorada do Gurguéia',17),(675,'Amarante',17),(676,'Angical do Piauí',17),(677,'Anísio de Abreu',17),(678,'Antônio Almeida',17),(679,'Aroazes',17),(680,'Aroeiras do Itaim',17),(681,'Arraial',17),(682,'Assunção do Piauí',17),(683,'Avelino Lopes',17),(684,'Baixa Grande do Ribeiro',17),(685,'Barra D\'Alcântara',17),(686,'Barras',17),(687,'Barreiras do Piauí',17),(688,'Barro Duro',17),(689,'Batalha',17),(690,'Bela Vista do Piauí',17),(691,'Belém do Piauí',17),(692,'Beneditinos',17),(693,'Bertolínia',17),(694,'Betânia do Piauí',17),(695,'Boa Hora',17),(696,'Bocaina',17),(697,'Bom Jesus',17),(698,'Bom Princípio do Piauí',17),(699,'Bonfim do Piauí',17),(700,'Boqueirão do Piauí',17),(701,'Brasileira',17),(702,'Brejo do Piauí',17),(703,'Buriti dos Lopes',17),(704,'Buriti dos Montes',17),(705,'Cabeceiras do Piauí',17),(706,'Cajazeiras do Piauí',17),(707,'Cajueiro da Praia',17),(708,'Caldeirão Grande do Piauí',17),(709,'Campinas do Piauí',17),(710,'Campo Alegre do Fidalgo',17),(711,'Campo Grande do Piauí',17),(712,'Campo Largo do Piauí',17),(713,'Campo Maior',17),(714,'Canavieira',17),(715,'Canto do Buriti',17),(716,'Capitão de Campos',17),(717,'Capitão Gervásio Oliveira',17),(718,'Caracol',17),(719,'Caraúbas do Piauí',17),(720,'Caridade do Piauí',17),(721,'Castelo do Piauí',17),(722,'Caxingó',17),(723,'Cocal',17),(724,'Cocal de Telha',17),(725,'Cocal dos Alves',17),(726,'Coivaras',17),(727,'Colônia do Gurguéia',17),(728,'Colônia do Piauí',17),(729,'Conceição do Canindé',17),(730,'Coronel José Dias',17),(731,'Corrente',17),(732,'Cristalândia do Piauí',17),(733,'Cristino Castro',17),(734,'Curimatá',17),(735,'Currais',17),(736,'Curral Novo do Piauí',17),(737,'Curralinhos',17),(738,'Demerval Lobão',17),(739,'Dirceu Arcoverde',17),(740,'Dom Expedito Lopes',17),(741,'Dom Inocêncio',17),(742,'Domingos Mourão',17),(743,'Elesbão Veloso',17),(744,'Eliseu Martins',17),(745,'Esperantina',17),(746,'Fartura do Piauí',17),(747,'Flores do Piauí',17),(748,'Floresta do Piauí',17),(749,'Floriano',17),(750,'Francinópolis',17),(751,'Francisco Ayres',17),(752,'Francisco Macedo',17),(753,'Francisco Santos',17),(754,'Fronteiras',17),(755,'Geminiano',17),(756,'Gilbués',17),(757,'Guadalupe',17),(758,'Guaribas',17),(759,'Hugo Napoleão',17),(760,'Ilha Grande',17),(761,'Inhuma',17),(762,'Ipiranga do Piauí',17),(763,'Isaías Coelho',17),(764,'Itainópolis',17),(765,'Itaueira',17),(766,'Jacobina do Piauí',17),(767,'Jaicós',17),(768,'Jardim do Mulato',17),(769,'Jatobá do Piauí',17),(770,'Jerumenha',17),(771,'João Costa',17),(772,'Joaquim Pires',17),(773,'Joca Marques',17),(774,'José de Freitas',17),(775,'Juazeiro do Piauí',17),(776,'Júlio Borges',17),(777,'Jurema',17),(778,'Lagoa Alegre',17),(779,'Lagoa de São Francisco',17),(780,'Lagoa do Barro do Piauí',17),(781,'Lagoa do Piauí',17),(782,'Lagoa do Sítio',17),(783,'Lagoinha do Piauí',17),(784,'Landri Sales',17),(785,'Luís Correia',17),(786,'Luzilândia',17),(787,'Madeiro',17),(788,'Manoel Emídio',17),(789,'Marcolândia',17),(790,'Marcos Parente',17),(791,'Massapê do Piauí',17),(792,'Matias Olímpio',17),(793,'Miguel Alves',17),(794,'Miguel Leão',17),(795,'Milton Brandão',17),(796,'Monsenhor Gil',17),(797,'Monsenhor Hipólito',17),(798,'Monte Alegre do Piauí',17),(799,'Morro Cabeça no Tempo',17),(800,'Morro do Chapéu do Piauí',17),(801,'Murici dos Portelas',17),(802,'Nazaré do Piauí',17),(803,'Nazária ',17),(804,'Nossa Senhora de Nazaré',17),(805,'Nossa Senhora dos Remédios',17),(806,'Nova Santa Rita',17),(807,'Novo Oriente do Piauí',17),(808,'Novo Santo Antônio',17),(809,'Oeiras',17),(810,'Olho D\'Água do Piauí',17),(811,'Padre Marcos',17),(812,'Paes Landim',17),(813,'Pajeú do Piauí',17),(814,'Palmeira do Piauí',17),(815,'Palmeirais',17),(816,'Paquetá',17),(817,'Parnaguá',17),(818,'Parnaíba',17),(819,'Passagem Franca do Piauí',17),(820,'Patos do Piauí',17),(821,'Pau D\'Arco do Piauí',17),(822,'Paulistana',17),(823,'Pavussu',17),(824,'Pedro II',17),(825,'Pedro Laurentino',17),(826,'Picos',17),(827,'Pimenteiras',17),(828,'Pio IX',17),(829,'Piracuruca',17),(830,'Piripiri',17),(831,'Porto',17),(832,'Porto Alegre do Piauí',17),(833,'Prata do Piauí',17),(834,'Queimada Nova',17),(835,'Redenção do Gurguéia',17),(836,'Regeneração',17),(837,'Riacho Frio',17),(838,'Ribeira do Piauí',17),(839,'Ribeiro Gonçalves',17),(840,'Rio Grande do Piauí',17),(841,'Santa Cruz do Piauí',17),(842,'Santa Cruz dos Milagres',17),(843,'Santa Filomena',17),(844,'Santa Luz',17),(845,'Santa Rosa do Piauí',17),(846,'Santana do Piauí',17),(847,'Santo Antônio de Lisboa',17),(848,'Santo Antônio dos Milagres',17),(849,'Santo Inácio do Piauí',17),(850,'São Braz do Piauí',17),(851,'São Félix do Piauí',17),(852,'São Francisco de Assis do Piauí',17),(853,'São Francisco do Piauí',17),(854,'São Gonçalo do Gurguéia',17),(855,'São Gonçalo do Piauí',17),(856,'São João da Canabrava',17),(857,'São João da Fronteira',17),(858,'São João da Serra',17),(859,'São João da Varjota',17),(860,'São João do Arraial',17),(861,'São João do Piauí',17),(862,'São José do Divino',17),(863,'São José do Peixe',17),(864,'São José do Piauí',17),(865,'São Julião',17),(866,'São Lourenço do Piauí',17),(867,'São Luis do Piauí',17),(868,'São Miguel da Baixa Grande',17),(869,'São Miguel do Fidalgo',17),(870,'São Miguel do Tapuio',17),(871,'São Pedro do Piauí',17),(872,'São Raimundo Nonato',17),(873,'Sebastião Barros',17),(874,'Sebastião Leal',17),(875,'Sigefredo Pacheco',17),(876,'Simões',17),(877,'Simplício Mendes',17),(878,'Socorro do Piauí',17),(879,'Sussuapara',17),(880,'Tamboril do Piauí',17),(881,'Tanque do Piauí',17),(882,'Teresina',17),(883,'União',17),(884,'Uruçuí',17),(885,'Valença do Piauí',17),(886,'Várzea Branca',17),(887,'Várzea Grande',17),(888,'Vera Mendes',17),(889,'Vila Nova do Piauí',17),(890,'Wall Ferraz',17),(891,'Abaiara',6),(892,'Acarape',6),(893,'Acaraú',6),(894,'Acopiara',6),(895,'Aiuaba',6),(896,'Alcântaras',6),(897,'Altaneira',6),(898,'Alto Santo',6),(899,'Amontada',6),(900,'Antonina do Norte',6),(901,'Apuiarés',6),(902,'Aquiraz',6),(903,'Aracati',6),(904,'Aracoiaba',6),(905,'Ararendá',6),(906,'Araripe',6),(907,'Aratuba',6),(908,'Arneiroz',6),(909,'Assaré',6),(910,'Aurora',6),(911,'Baixio',6),(912,'Banabuiú',6),(913,'Barbalha',6),(914,'Barreira',6),(915,'Barro',6),(916,'Barroquinha',6),(917,'Baturité',6),(918,'Beberibe',6),(919,'Bela Cruz',6),(920,'Boa Viagem',6),(921,'Brejo Santo',6),(922,'Camocim',6),(923,'Campos Sales',6),(924,'Canindé',6),(925,'Capistrano',6),(926,'Caridade',6),(927,'Cariré',6),(928,'Caririaçu',6),(929,'Cariús',6),(930,'Carnaubal',6),(931,'Cascavel',6),(932,'Catarina',6),(933,'Catunda',6),(934,'Caucaia',6),(935,'Cedro',6),(936,'Chaval',6),(937,'Choró',6),(938,'Chorozinho',6),(939,'Coreaú',6),(940,'Crateús',6),(941,'Crato',6),(942,'Croatá',6),(943,'Cruz',6),(944,'Deputado Irapuan Pinheiro',6),(945,'Ererê',6),(946,'Eusébio',6),(947,'Farias Brito',6),(948,'Forquilha',6),(949,'Fortaleza',6),(950,'Fortim',6),(951,'Frecheirinha',6),(952,'General Sampaio',6),(953,'Graça',6),(954,'Granja',6),(955,'Granjeiro',6),(956,'Groaíras',6),(957,'Guaiúba',6),(958,'Guaraciaba do Norte',6),(959,'Guaramiranga',6),(960,'Hidrolândia',6),(961,'Horizonte',6),(962,'Ibaretama',6),(963,'Ibiapina',6),(964,'Ibicuitinga',6),(965,'Icapuí',6),(966,'Icó',6),(967,'Iguatu',6),(968,'Independência',6),(969,'Ipaporanga',6),(970,'Ipaumirim',6),(971,'Ipu',6),(972,'Ipueiras',6),(973,'Iracema',6),(974,'Irauçuba',6),(975,'Itaiçaba',6),(976,'Itaitinga',6),(977,'Itapagé',6),(978,'Itapipoca',6),(979,'Itapiúna',6),(980,'Itarema',6),(981,'Itatira',6),(982,'Jaguaretama',6),(983,'Jaguaribara',6),(984,'Jaguaribe',6),(985,'Jaguaruana',6),(986,'Jardim',6),(987,'Jati',6),(988,'Jijoca de Jericoacoara',6),(989,'Juazeiro do Norte',6),(990,'Jucás',6),(991,'Lavras da Mangabeira',6),(992,'Limoeiro do Norte',6),(993,'Madalena',6),(994,'Maracanaú',6),(995,'Maranguape',6),(996,'Marco',6),(997,'Martinópole',6),(998,'Massapê',6),(999,'Mauriti',6),(1000,'Meruoca',6),(1001,'Milagres',6),(1002,'Milhã',6),(1003,'Miraíma',6),(1004,'Missão Velha',6),(1005,'Mombaça',6),(1006,'Monsenhor Tabosa',6),(1007,'Morada Nova',6),(1008,'Moraújo',6),(1009,'Morrinhos',6),(1010,'Mucambo',6),(1011,'Mulungu',6),(1012,'Nova Olinda',6),(1013,'Nova Russas',6),(1014,'Novo Oriente',6),(1015,'Ocara',6),(1016,'Orós',6),(1017,'Pacajus',6),(1018,'Pacatuba',6),(1019,'Pacoti',6),(1020,'Pacujá',6),(1021,'Palhano',6),(1022,'Palmácia',6),(1023,'Paracuru',6),(1024,'Paraipaba',6),(1025,'Parambu',6),(1026,'Paramoti',6),(1027,'Pedra Branca',6),(1028,'Penaforte',6),(1029,'Pentecoste',6),(1030,'Pereiro',6),(1031,'Pindoretama',6),(1032,'Piquet Carneiro',6),(1033,'Pires Ferreira',6),(1034,'Poranga',6),(1035,'Porteiras',6),(1036,'Potengi',6),(1037,'Potiretama',6),(1038,'Quiterianópolis',6),(1039,'Quixadá',6),(1040,'Quixelô',6),(1041,'Quixeramobim',6),(1042,'Quixeré',6),(1043,'Redenção',6),(1044,'Reriutaba',6),(1045,'Russas',6),(1046,'Saboeiro',6),(1047,'Salitre',6),(1048,'Santa Quitéria',6),(1049,'Santana do Acaraú',6),(1050,'Santana do Cariri',6),(1051,'São Benedito',6),(1052,'São Gonçalo do Amarante',6),(1053,'São João do Jaguaribe',6),(1054,'São Luís do Curu',6),(1055,'Senador Pompeu',6),(1056,'Senador Sá',6),(1057,'Sobral',6),(1058,'Solonópole',6),(1059,'Tabuleiro do Norte',6),(1060,'Tamboril',6),(1061,'Tarrafas',6),(1062,'Tauá',6),(1063,'Tejuçuoca',6),(1064,'Tianguá',6),(1065,'Trairi',6),(1066,'Tururu',6),(1067,'Ubajara',6),(1068,'Umari',6),(1069,'Umirim',6),(1070,'Uruburetama',6),(1071,'Uruoca',6),(1072,'Varjota',6),(1073,'Várzea Alegre',6),(1074,'Viçosa do Ceará',6),(1075,'Acari',20),(1076,'Açu',20),(1077,'Afonso Bezerra',20),(1078,'Água Nova',20),(1079,'Alexandria',20),(1080,'Almino Afonso',20),(1081,'Alto do Rodrigues',20),(1082,'Angicos',20),(1083,'Antônio Martins',20),(1084,'Apodi',20),(1085,'Areia Branca',20),(1086,'Arês',20),(1087,'Augusto Severo',20),(1088,'Baía Formosa',20),(1089,'Baraúna',20),(1090,'Barcelona',20),(1091,'Bento Fernandes',20),(1092,'Bodó',20),(1093,'Bom Jesus',20),(1094,'Brejinho',20),(1095,'Caiçara do Norte',20),(1096,'Caiçara do Rio do Vento',20),(1097,'Caicó',20),(1098,'Campo Redondo',20),(1099,'Canguaretama',20),(1100,'Caraúbas',20),(1101,'Carnaúba dos Dantas',20),(1102,'Carnaubais',20),(1103,'Ceará-Mirim',20),(1104,'Cerro Corá',20),(1105,'Coronel Ezequiel',20),(1106,'Coronel João Pessoa',20),(1107,'Cruzeta',20),(1108,'Currais Novos',20),(1109,'Doutor Severiano',20),(1110,'Encanto',20),(1111,'Equador',20),(1112,'Espírito Santo',20),(1113,'Extremoz',20),(1114,'Felipe Guerra',20),(1115,'Fernando Pedroza',20),(1116,'Florânia',20),(1117,'Francisco Dantas',20),(1118,'Frutuoso Gomes',20),(1119,'Galinhos',20),(1120,'Goianinha',20),(1121,'Governador Dix-Sept Rosado',20),(1122,'Grossos',20),(1123,'Guamaré',20),(1124,'Ielmo Marinho',20),(1125,'Ipanguaçu',20),(1126,'Ipueira',20),(1127,'Itajá',20),(1128,'Itaú',20),(1129,'Jaçanã',20),(1130,'Jandaíra',20),(1131,'Janduís',20),(1132,'Januário Cicco',20),(1133,'Japi',20),(1134,'Jardim de Angicos',20),(1135,'Jardim de Piranhas',20),(1136,'Jardim do Seridó',20),(1137,'João Câmara',20),(1138,'João Dias',20),(1139,'José da Penha',20),(1140,'Jucurutu',20),(1141,'Jundiá',20),(1142,'Lagoa d\'Anta',20),(1143,'Lagoa de Pedras',20),(1144,'Lagoa de Velhos',20),(1145,'Lagoa Nova',20),(1146,'Lagoa Salgada',20),(1147,'Lajes',20),(1148,'Lajes Pintadas',20),(1149,'Lucrécia',20),(1150,'Luís Gomes',20),(1151,'Macaíba',20),(1152,'Macau',20),(1153,'Major Sales',20),(1154,'Marcelino Vieira',20),(1155,'Martins',20),(1156,'Maxaranguape',20),(1157,'Messias Targino',20),(1158,'Montanhas',20),(1159,'Monte Alegre',20),(1160,'Monte das Gameleiras',20),(1161,'Mossoró',20),(1162,'Natal',20),(1163,'Nísia Floresta',20),(1164,'Nova Cruz',20),(1165,'Olho-d\'Água do Borges',20),(1166,'Ouro Branco',20),(1167,'Paraná',20),(1168,'Paraú',20),(1169,'Parazinho',20),(1170,'Parelhas',20),(1171,'Parnamirim',20),(1172,'Passa e Fica',20),(1173,'Passagem',20),(1174,'Patu',20),(1175,'Pau dos Ferros',20),(1176,'Pedra Grande',20),(1177,'Pedra Preta',20),(1178,'Pedro Avelino',20),(1179,'Pedro Velho',20),(1180,'Pendências',20),(1181,'Pilões',20),(1182,'Poço Branco',20),(1183,'Portalegre',20),(1184,'Porto do Mangue',20),(1185,'Presidente Juscelino',20),(1186,'Pureza',20),(1187,'Rafael Fernandes',20),(1188,'Rafael Godeiro',20),(1189,'Riacho da Cruz',20),(1190,'Riacho de Santana',20),(1191,'Riachuelo',20),(1192,'Rio do Fogo',20),(1193,'Rodolfo Fernandes',20),(1194,'Ruy Barbosa',20),(1195,'Santa Cruz',20),(1196,'Santa Maria',20),(1197,'Santana do Matos',20),(1198,'Santana do Seridó',20),(1199,'Santo Antônio',20),(1200,'São Bento do Norte',20),(1201,'São Bento do Trairí',20),(1202,'São Fernando',20),(1203,'São Francisco do Oeste',20),(1204,'São Gonçalo do Amarante',20),(1205,'São João do Sabugi',20),(1206,'São José de Mipibu',20),(1207,'São José do Campestre',20),(1208,'São José do Seridó',20),(1209,'São Miguel',20),(1210,'São Miguel do Gostoso',20),(1211,'São Paulo do Potengi',20),(1212,'São Pedro',20),(1213,'São Rafael',20),(1214,'São Tomé',20),(1215,'São Vicente',20),(1216,'Senador Elói de Souza',20),(1217,'Senador Georgino Avelino',20),(1218,'Serra de São Bento',20),(1219,'Serra do Mel',20),(1220,'Serra Negra do Norte',20),(1221,'Serrinha',20),(1222,'Serrinha dos Pintos',20),(1223,'Severiano Melo',20),(1224,'Sítio Novo',20),(1225,'Taboleiro Grande',20),(1226,'Taipu',20),(1227,'Tangará',20),(1228,'Tenente Ananias',20),(1229,'Tenente Laurentino Cruz',20),(1230,'Tibau',20),(1231,'Tibau do Sul',20),(1232,'Timbaúba dos Batistas',20),(1233,'Touros',20),(1234,'Triunfo Potiguar',20),(1235,'Umarizal',20),(1236,'Upanema',20),(1237,'Várzea',20),(1238,'Venha-Ver',20),(1239,'Vera Cruz',20),(1240,'Viçosa',20),(1241,'Vila Flor',20),(1242,'Água Branca',15),(1243,'Aguiar',15),(1244,'Alagoa Grande',15),(1245,'Alagoa Nova',15),(1246,'Alagoinha',15),(1247,'Alcantil',15),(1248,'Algodão de Jandaíra',15),(1249,'Alhandra',15),(1250,'Amparo',15),(1251,'Aparecida',15),(1252,'Araçagi',15),(1253,'Arara',15),(1254,'Araruna',15),(1255,'Areia',15),(1256,'Areia de Baraúnas',15),(1257,'Areial',15),(1258,'Aroeiras',15),(1259,'Assunção',15),(1260,'Baía da Traição',15),(1261,'Bananeiras',15),(1262,'Baraúna',15),(1263,'Barra de Santa Rosa',15),(1264,'Barra de Santana',15),(1265,'Barra de São Miguel',15),(1266,'Bayeux',15),(1267,'Belém',15),(1268,'Belém do Brejo do Cruz',15),(1269,'Bernardino Batista',15),(1270,'Boa Ventura',15),(1271,'Boa Vista',15),(1272,'Bom Jesus',15),(1273,'Bom Sucesso',15),(1274,'Bonito de Santa Fé',15),(1275,'Boqueirão',15),(1276,'Borborema',15),(1277,'Brejo do Cruz',15),(1278,'Brejo dos Santos',15),(1279,'Caaporã',15),(1280,'Cabaceiras',15),(1281,'Cabedelo',15),(1282,'Cachoeira dos Índios',15),(1283,'Cacimba de Areia',15),(1284,'Cacimba de Dentro',15),(1285,'Cacimbas',15),(1286,'Caiçara',15),(1287,'Cajazeiras',15),(1288,'Cajazeirinhas',15),(1289,'Caldas Brandão',15),(1290,'Camalaú',15),(1291,'Campina Grande',15),(1292,'Tacima',15),(1293,'Capim',15),(1294,'Caraúbas',15),(1295,'Carrapateira',15),(1296,'Casserengue',15),(1297,'Catingueira',15),(1298,'Catolé do Rocha',15),(1299,'Caturité',15),(1300,'Conceição',15),(1301,'Condado',15),(1302,'Conde',15),(1303,'Congo',15),(1304,'Coremas',15),(1305,'Coxixola',15),(1306,'Cruz do Espírito Santo',15),(1307,'Cubati',15),(1308,'Cuité',15),(1309,'Cuité de Mamanguape',15),(1310,'Cuitegi',15),(1311,'Curral de Cima',15),(1312,'Curral Velho',15),(1313,'Damião',15),(1314,'Desterro',15),(1315,'Diamante',15),(1316,'Dona Inês',15),(1317,'Duas Estradas',15),(1318,'Emas',15),(1319,'Esperança',15),(1320,'Fagundes',15),(1321,'Frei Martinho',15),(1322,'Gado Bravo',15),(1323,'Guarabira',15),(1324,'Gurinhém',15),(1325,'Gurjão',15),(1326,'Ibiara',15),(1327,'Igaracy',15),(1328,'Imaculada',15),(1329,'Ingá',15),(1330,'Itabaiana',15),(1331,'Itaporanga',15),(1332,'Itapororoca',15),(1333,'Itatuba',15),(1334,'Jacaraú',15),(1335,'Jericó',15),(1336,'João Pessoa',15),(1337,'Juarez Távora',15),(1338,'Juazeirinho',15),(1339,'Junco do Seridó',15),(1340,'Juripiranga',15),(1341,'Juru',15),(1342,'Lagoa',15),(1343,'Lagoa de Dentro',15),(1344,'Lagoa Seca',15),(1345,'Lastro',15),(1346,'Livramento',15),(1347,'Logradouro',15),(1348,'Lucena',15),(1349,'Mãe d\'Água',15),(1350,'Malta',15),(1351,'Mamanguape',15),(1352,'Manaíra',15),(1353,'Marcação',15),(1354,'Mari',15),(1355,'Marizópolis',15),(1356,'Massaranduba',15),(1357,'Mataraca',15),(1358,'Matinhas',15),(1359,'Mato Grosso',15),(1360,'Maturéia',15),(1361,'Mogeiro',15),(1362,'Montadas',15),(1363,'Monte Horebe',15),(1364,'Monteiro',15),(1365,'Mulungu',15),(1366,'Natuba',15),(1367,'Nazarezinho',15),(1368,'Nova Floresta',15),(1369,'Nova Olinda',15),(1370,'Nova Palmeira',15),(1371,'Olho d\'Água',15),(1372,'Olivedos',15),(1373,'Ouro Velho',15),(1374,'Parari',15),(1375,'Passagem',15),(1376,'Patos',15),(1377,'Paulista',15),(1378,'Pedra Branca',15),(1379,'Pedra Lavrada',15),(1380,'Pedras de Fogo',15),(1381,'Pedro Régis',15),(1382,'Piancó',15),(1383,'Picuí',15),(1384,'Pilar',15),(1385,'Pilões',15),(1386,'Pilõezinhos',15),(1387,'Pirpirituba',15),(1388,'Pitimbu',15),(1389,'Pocinhos',15),(1390,'Poço Dantas',15),(1391,'Poço de José de Moura',15),(1392,'Pombal',15),(1393,'Prata',15),(1394,'Princesa Isabel',15),(1395,'Puxinanã',15),(1396,'Queimadas',15),(1397,'Quixabá',15),(1398,'Remígio',15),(1399,'Riachão',15),(1400,'Riachão do Bacamarte',15),(1401,'Riachão do Poço',15),(1402,'Riacho de Santo Antônio',15),(1403,'Riacho dos Cavalos',15),(1404,'Rio Tinto',15),(1405,'Salgadinho',15),(1406,'Salgado de São Félix',15),(1407,'Santa Cecília',15),(1408,'Santa Cruz',15),(1409,'Santa Helena',15),(1410,'Santa Inês',15),(1411,'Santa Luzia',15),(1412,'Santa Rita',15),(1413,'Santa Teresinha',15),(1414,'Santana de Mangueira',15),(1415,'Santana dos Garrotes',15),(1416,'Joca Claudino',15),(1417,'Santo André',15),(1418,'São Bentinho',15),(1419,'São Bento',15),(1420,'São Domingos',15),(1421,'São Domingos do Cariri',15),(1422,'São Francisco',15),(1423,'São João do Cariri',15),(1424,'São João do Rio do Peixe',15),(1425,'São João do Tigre',15),(1426,'São José da Lagoa Tapada',15),(1427,'São José de Caiana',15),(1428,'São José de Espinharas',15),(1429,'São José de Piranhas',15),(1430,'São José de Princesa',15),(1431,'São José do Bonfim',15),(1432,'São José do Brejo do Cruz',15),(1433,'São José do Sabugi',15),(1434,'São José dos Cordeiros',15),(1435,'São José dos Ramos',15),(1436,'São Mamede',15),(1437,'São Miguel de Taipu',15),(1438,'São Sebastião de Lagoa de Roça',15),(1439,'São Sebastião do Umbuzeiro',15),(1440,'Sapé',15),(1441,'Seridó',15),(1442,'Serra Branca',15),(1443,'Serra da Raiz',15),(1444,'Serra Grande',15),(1445,'Serra Redonda',15),(1446,'Serraria',15),(1447,'Sertãozinho',15),(1448,'Sobrado',15),(1449,'Solânea',15),(1450,'Soledade',15),(1451,'Sossêgo',15),(1452,'Sousa',15),(1453,'Sumé',15),(1454,'Taperoá',15),(1455,'Tavares',15),(1456,'Teixeira',15),(1457,'Tenório',15),(1458,'Triunfo',15),(1459,'Uiraúna',15),(1460,'Umbuzeiro',15),(1461,'Várzea',15),(1462,'Vieirópolis',15),(1463,'Vista Serrana',15),(1464,'Zabelê',15),(1465,'Abreu e Lima',16),(1466,'Afogados da Ingazeira',16),(1467,'Afrânio',16),(1468,'Agrestina',16),(1469,'Água Preta',16),(1470,'Águas Belas',16),(1471,'Alagoinha',16),(1472,'Aliança',16),(1473,'Altinho',16),(1474,'Amaraji',16),(1475,'Angelim',16),(1476,'Araçoiaba',16),(1477,'Araripina',16),(1478,'Arcoverde',16),(1479,'Barra de Guabiraba',16),(1480,'Barreiros',16),(1481,'Belém de Maria',16),(1482,'Belém do São Francisco',16),(1483,'Belo Jardim',16),(1484,'Betânia',16),(1485,'Bezerros',16),(1486,'Bodocó',16),(1487,'Bom Conselho',16),(1488,'Bom Jardim',16),(1489,'Bonito',16),(1490,'Brejão',16),(1491,'Brejinho',16),(1492,'Brejo da Madre de Deus',16),(1493,'Buenos Aires',16),(1494,'Buíque',16),(1495,'Cabo de Santo Agostinho',16),(1496,'Cabrobó',16),(1497,'Cachoeirinha',16),(1498,'Caetés',16),(1499,'Calçado',16),(1500,'Calumbi',16),(1501,'Camaragibe',16),(1502,'Camocim de São Félix',16),(1503,'Camutanga',16),(1504,'Canhotinho',16),(1505,'Capoeiras',16),(1506,'Carnaíba',16),(1507,'Carnaubeira da Penha',16),(1508,'Carpina',16),(1509,'Caruaru',16),(1510,'Casinhas',16),(1511,'Catende',16),(1512,'Cedro',16),(1513,'Chã de Alegria',16),(1514,'Chã Grande',16),(1515,'Condado',16),(1516,'Correntes',16),(1517,'Cortês',16),(1518,'Cumaru',16),(1519,'Cupira',16),(1520,'Custódia',16),(1521,'Dormentes',16),(1522,'Escada',16),(1523,'Exu',16),(1524,'Feira Nova',16),(1525,'Fernando de Noronha',16),(1526,'Ferreiros',16),(1527,'Flores',16),(1528,'Floresta',16),(1529,'Frei Miguelinho',16),(1530,'Gameleira',16),(1531,'Garanhuns',16),(1532,'Glória do Goitá',16),(1533,'Goiana',16),(1534,'Granito',16),(1535,'Gravatá',16),(1536,'Iati',16),(1537,'Ibimirim',16),(1538,'Ibirajuba',16),(1539,'Igarassu',16),(1540,'Iguaraci',16),(1541,'Ilha de Itamaracá',16),(1542,'Inajá',16),(1543,'Ingazeira',16),(1544,'Ipojuca',16),(1545,'Ipubi',16),(1546,'Itacuruba',16),(1547,'Itaíba',16),(1548,'Itambé',16),(1549,'Itapetim',16),(1550,'Itapissuma',16),(1551,'Itaquitinga',16),(1552,'Jaboatão dos Guararapes',16),(1553,'Jaqueira',16),(1554,'Jataúba',16),(1555,'Jatobá',16),(1556,'João Alfredo',16),(1557,'Joaquim Nabuco',16),(1558,'Jucati',16),(1559,'Jupi',16),(1560,'Jurema',16),(1561,'Lagoa do Carro',16),(1562,'Lagoa de Itaenga',16),(1563,'Lagoa do Ouro',16),(1564,'Lagoa dos Gatos',16),(1565,'Lagoa Grande',16),(1566,'Lajedo',16),(1567,'Limoeiro',16),(1568,'Macaparana',16),(1569,'Machados',16),(1570,'Manari',16),(1571,'Maraial',16),(1572,'Mirandiba',16),(1573,'Moreilândia',16),(1574,'Moreno',16),(1575,'Nazaré da Mata',16),(1576,'Olinda',16),(1577,'Orobó',16),(1578,'Orocó',16),(1579,'Ouricuri',16),(1580,'Palmares',16),(1581,'Palmeirina',16),(1582,'Panelas',16),(1583,'Paranatama',16),(1584,'Parnamirim',16),(1585,'Passira',16),(1586,'Paudalho',16),(1587,'Paulista',16),(1588,'Pedra',16),(1589,'Pesqueira',16),(1590,'Petrolândia',16),(1591,'Petrolina',16),(1592,'Poção',16),(1593,'Pombos',16),(1594,'Primavera',16),(1595,'Quipapá',16),(1596,'Quixaba',16),(1597,'Recife',16),(1598,'Riacho das Almas',16),(1599,'Ribeirão',16),(1600,'Rio Formoso',16),(1601,'Sairé',16),(1602,'Salgadinho',16),(1603,'Salgueiro',16),(1604,'Saloá',16),(1605,'Sanharó',16),(1606,'Santa Cruz',16),(1607,'Santa Cruz da Baixa Verde',16),(1608,'Santa Cruz do Capibaribe',16),(1609,'Santa Filomena',16),(1610,'Santa Maria da Boa Vista',16),(1611,'Santa Maria do Cambucá',16),(1612,'Santa Terezinha',16),(1613,'São Benedito do Sul',16),(1614,'São Bento do Una',16),(1615,'São Caitano',16),(1616,'São João',16),(1617,'São Joaquim do Monte',16),(1618,'São José da Coroa Grande',16),(1619,'São José do Belmonte',16),(1620,'São José do Egito',16),(1621,'São Lourenço da Mata',16),(1622,'São Vicente Ferrer',16),(1623,'Serra Talhada',16),(1624,'Serrita',16),(1625,'Sertânia',16),(1626,'Sirinhaém',16),(1627,'Solidão',16),(1628,'Surubim',16),(1629,'Tabira',16),(1630,'Tacaimbó',16),(1631,'Tacaratu',16),(1632,'Tamandaré',16),(1633,'Taquaritinga do Norte',16),(1634,'Terezinha',16),(1635,'Terra Nova',16),(1636,'Timbaúba',16),(1637,'Toritama',16),(1638,'Tracunhaém',16),(1639,'Trindade',16),(1640,'Triunfo',16),(1641,'Tupanatinga',16),(1642,'Tuparetama',16),(1643,'Venturosa',16),(1644,'Verdejante',16),(1645,'Vertente do Lério',16),(1646,'Vertentes',16),(1647,'Vicência',16),(1648,'Vitória de Santo Antão',16),(1649,'Xexéu',16),(1650,'Água Branca',2),(1651,'Anadia',2),(1652,'Arapiraca',2),(1653,'Atalaia',2),(1654,'Barra de Santo Antônio',2),(1655,'Barra de São Miguel',2),(1656,'Batalha',2),(1657,'Belém',2),(1658,'Belo Monte',2),(1659,'Boca da Mata',2),(1660,'Branquinha',2),(1661,'Cacimbinhas',2),(1662,'Cajueiro',2),(1663,'Campestre',2),(1664,'Campo Alegre',2),(1665,'Campo Grande',2),(1666,'Canapi',2),(1667,'Capela',2),(1668,'Carneiros',2),(1669,'Chã Preta',2),(1670,'Coité do Nóia',2),(1671,'Colônia Leopoldina',2),(1672,'Coqueiro Seco',2),(1673,'Coruripe',2),(1674,'Craíbas',2),(1675,'Delmiro Gouveia',2),(1676,'Dois Riachos',2),(1677,'Estrela de Alagoas',2),(1678,'Feira Grande',2),(1679,'Feliz Deserto',2),(1680,'Flexeiras',2),(1681,'Girau do Ponciano',2),(1682,'Ibateguara',2),(1683,'Igaci',2),(1684,'Igreja Nova',2),(1685,'Inhapi',2),(1686,'Jacaré dos Homens',2),(1687,'Jacuípe',2),(1688,'Japaratinga',2),(1689,'Jaramataia',2),(1690,'Jequiá da Praia',2),(1691,'Joaquim Gomes',2),(1692,'Jundiá',2),(1693,'Junqueiro',2),(1694,'Lagoa da Canoa',2),(1695,'Limoeiro de Anadia',2),(1696,'Maceió',2),(1697,'Major Isidoro',2),(1698,'Mar Vermelho',2),(1699,'Maragogi',2),(1700,'Maravilha',2),(1701,'Marechal Deodoro',2),(1702,'Maribondo',2),(1703,'Mata Grande',2),(1704,'Matriz de Camaragibe',2),(1705,'Messias',2),(1706,'Minador do Negrão',2),(1707,'Monteirópolis',2),(1708,'Murici',2),(1709,'Novo Lino',2),(1710,'Olho d\'Água das Flores',2),(1711,'Olho d\'Água do Casado',2),(1712,'Olho d\'Água Grande',2),(1713,'Olivença',2),(1714,'Ouro Branco',2),(1715,'Palestina',2),(1716,'Palmeira dos Índios',2),(1717,'Pão de Açúcar',2),(1718,'Pariconha',2),(1719,'Paripueira',2),(1720,'Passo de Camaragibe',2),(1721,'Paulo Jacinto',2),(1722,'Penedo',2),(1723,'Piaçabuçu',2),(1724,'Pilar',2),(1725,'Pindoba',2),(1726,'Piranhas',2),(1727,'Poço das Trincheiras',2),(1728,'Porto Calvo',2),(1729,'Porto de Pedras',2),(1730,'Porto Real do Colégio',2),(1731,'Quebrangulo',2),(1732,'Rio Largo',2),(1733,'Roteiro',2),(1734,'Santa Luzia do Norte',2),(1735,'Santana do Ipanema',2),(1736,'Santana do Mundaú',2),(1737,'São Brás',2),(1738,'São José da Laje',2),(1739,'São José da Tapera',2),(1740,'São Luís do Quitunde',2),(1741,'São Miguel dos Campos',2),(1742,'São Miguel dos Milagres',2),(1743,'São Sebastião',2),(1744,'Satuba',2),(1745,'Senador Rui Palmeira',2),(1746,'Tanque d\'Arca',2),(1747,'Taquarana',2),(1748,'Teotônio Vilela',2),(1749,'Traipu',2),(1750,'União dos Palmares',2),(1751,'Viçosa',2),(1752,'Amparo de São Francisco',25),(1753,'Aquidabã',25),(1754,'Aracaju',25),(1755,'Arauá',25),(1756,'Areia Branca',25),(1757,'Barra dos Coqueiros',25),(1758,'Boquim',25),(1759,'Brejo Grande',25),(1760,'Campo do Brito',25),(1761,'Canhoba',25),(1762,'Canindé de São Francisco',25),(1763,'Capela',25),(1764,'Carira',25),(1765,'Carmópolis',25),(1766,'Cedro de São João',25),(1767,'Cristinápolis',25),(1768,'Cumbe',25),(1769,'Divina Pastora',25),(1770,'Estância',25),(1771,'Feira Nova',25),(1772,'Frei Paulo',25),(1773,'Gararu',25),(1774,'General Maynard',25),(1775,'Gracho Cardoso',25),(1776,'Ilha das Flores',25),(1777,'Indiaroba',25),(1778,'Itabaiana',25),(1779,'Itabaianinha',25),(1780,'Itabi',25),(1781,'Itaporanga d\'Ajuda',25),(1782,'Japaratuba',25),(1783,'Japoatã',25),(1784,'Lagarto',25),(1785,'Laranjeiras',25),(1786,'Macambira',25),(1787,'Malhada dos Bois',25),(1788,'Malhador',25),(1789,'Maruim',25),(1790,'Moita Bonita',25),(1791,'Monte Alegre de Sergipe',25),(1792,'Muribeca',25),(1793,'Neópolis',25),(1794,'Nossa Senhora Aparecida',25),(1795,'Nossa Senhora da Glória',25),(1796,'Nossa Senhora das Dores',25),(1797,'Nossa Senhora de Lourdes',25),(1798,'Nossa Senhora do Socorro',25),(1799,'Pacatuba',25),(1800,'Pedra Mole',25),(1801,'Pedrinhas',25),(1802,'Pinhão',25),(1803,'Pirambu',25),(1804,'Poço Redondo',25),(1805,'Poço Verde',25),(1806,'Porto da Folha',25),(1807,'Propriá',25),(1808,'Riachão do Dantas',25),(1809,'Riachuelo',25),(1810,'Ribeirópolis',25),(1811,'Rosário do Catete',25),(1812,'Salgado',25),(1813,'Santa Luzia do Itanhy',25),(1814,'Santa Rosa de Lima',25),(1815,'Santana do São Francisco',25),(1816,'Santo Amaro das Brotas',25),(1817,'São Cristóvão',25),(1818,'São Domingos',25),(1819,'São Francisco',25),(1820,'São Miguel do Aleixo',25),(1821,'Simão Dias',25),(1822,'Siriri',25),(1823,'Telha',25),(1824,'Tobias Barreto',25),(1825,'Tomar do Geru',25),(1826,'Umbaúba',25),(1827,'Abaíra',5),(1828,'Abaré',5),(1829,'Acajutiba',5),(1830,'Adustina',5),(1831,'Água Fria',5),(1832,'Aiquara',5),(1833,'Alagoinhas',5),(1834,'Alcobaça',5),(1835,'Almadina',5),(1836,'Amargosa',5),(1837,'Amélia Rodrigues',5),(1838,'América Dourada',5),(1839,'Anagé',5),(1840,'Andaraí',5),(1841,'Andorinha',5),(1842,'Angical',5),(1843,'Anguera',5),(1844,'Antas',5),(1845,'Antônio Cardoso',5),(1846,'Antônio Gonçalves',5),(1847,'Aporá',5),(1848,'Apuarema',5),(1849,'Araças',5),(1850,'Aracatu',5),(1851,'Araci',5),(1852,'Aramari',5),(1853,'Arataca',5),(1854,'Aratuípe',5),(1855,'Aurelino Leal',5),(1856,'Baianópolis',5),(1857,'Baixa Grande',5),(1858,'Banzaê',5),(1859,'Barra',5),(1860,'Barra da Estiva',5),(1861,'Barra do Choça',5),(1862,'Barra do Mendes',5),(1863,'Barra do Rocha',5),(1864,'Barreiras',5),(1865,'Barro Alto',5),(1866,'Barro Preto',5),(1867,'Barrocas',5),(1868,'Belmonte',5),(1869,'Belo Campo',5),(1870,'Biritinga',5),(1871,'Boa Nova',5),(1872,'Boa Vista do Tupim',5),(1873,'Bom Jesus da Lapa',5),(1874,'Bom Jesus da Serra',5),(1875,'Boninal',5),(1876,'Bonito',5),(1877,'Boquira',5),(1878,'Botuporã',5),(1879,'Brejões',5),(1880,'Brejolândia',5),(1881,'Brotas de Macaúbas',5),(1882,'Brumado',5),(1883,'Buerarema',5),(1884,'Buritirama',5),(1885,'Caatiba',5),(1886,'Cabaceiras do Paraguaçu',5),(1887,'Cachoeira',5),(1888,'Caculé',5),(1889,'Caém',5),(1890,'Caetanos',5),(1891,'Caetité',5),(1892,'Cafarnaum',5),(1893,'Cairu',5),(1894,'Caldeirão Grande',5),(1895,'Camacan',5),(1896,'Camaçari',5),(1897,'Camamu',5),(1898,'Campo Alegre de Lourdes',5),(1899,'Campo Formoso',5),(1900,'Canápolis',5),(1901,'Canarana',5),(1902,'Canavieiras',5),(1903,'Candeal',5),(1904,'Candeias',5),(1905,'Candiba',5),(1906,'Cândido Sales',5),(1907,'Cansanção',5),(1908,'Canudos',5),(1909,'Capela do Alto Alegre',5),(1910,'Capim Grosso',5),(1911,'Caraíbas',5),(1912,'Caravelas',5),(1913,'Cardeal da Silva',5),(1914,'Carinhanha',5),(1915,'Casa Nova',5),(1916,'Castro Alves',5),(1917,'Catolândia',5),(1918,'Catu',5),(1919,'Caturama',5),(1920,'Central',5),(1921,'Chorrochó',5),(1922,'Cícero Dantas',5),(1923,'Cipó',5),(1924,'Coaraci',5),(1925,'Cocos',5),(1926,'Conceição da Feira',5),(1927,'Conceição do Almeida',5),(1928,'Conceição do Coité',5),(1929,'Conceição do Jacuípe',5),(1930,'Conde',5),(1931,'Condeúba',5),(1932,'Contendas do Sincorá',5),(1933,'Coração de Maria',5),(1934,'Cordeiros',5),(1935,'Coribe',5),(1936,'Coronel João Sá',5),(1937,'Correntina',5),(1938,'Cotegipe',5),(1939,'Cravolândia',5),(1940,'Crisópolis',5),(1941,'Cristópolis',5),(1942,'Cruz das Almas',5),(1943,'Curaçá',5),(1944,'Dário Meira',5),(1945,'Dias d\'Ávila',5),(1946,'Dom Basílio',5),(1947,'Dom Macedo Costa',5),(1948,'Elísio Medrado',5),(1949,'Encruzilhada',5),(1950,'Entre Rios',5),(1951,'Érico Cardoso',5),(1952,'Esplanada',5),(1953,'Euclides da Cunha',5),(1954,'Eunápolis',5),(1955,'Fátima',5),(1956,'Feira da Mata',5),(1957,'Feira de Santana',5),(1958,'Filadélfia',5),(1959,'Firmino Alves',5),(1960,'Floresta Azul',5),(1961,'Formosa do Rio Preto',5),(1962,'Gandu',5),(1963,'Gavião',5),(1964,'Gentio do Ouro',5),(1965,'Glória',5),(1966,'Gongogi',5),(1967,'Governador Mangabeira',5),(1968,'Guajeru',5),(1969,'Guanambi',5),(1970,'Guaratinga',5),(1971,'Heliópolis',5),(1972,'Iaçu',5),(1973,'Ibiassucê',5),(1974,'Ibicaraí',5),(1975,'Ibicoara',5),(1976,'Ibicuí',5),(1977,'Ibipeba',5),(1978,'Ibipitanga',5),(1979,'Ibiquera',5),(1980,'Ibirapitanga',5),(1981,'Ibirapuã',5),(1982,'Ibirataia',5),(1983,'Ibitiara',5),(1984,'Ibititá',5),(1985,'Ibotirama',5),(1986,'Ichu',5),(1987,'Igaporã',5),(1988,'Igrapiúna',5),(1989,'Iguaí',5),(1990,'Ilhéus',5),(1991,'Inhambupe',5),(1992,'Ipecaetá',5),(1993,'Ipiaú',5),(1994,'Ipirá',5),(1995,'Ipupiara',5),(1996,'Irajuba',5),(1997,'Iramaia',5),(1998,'Iraquara',5),(1999,'Irará',5),(2000,'Irecê',5),(2001,'Itabela',5),(2002,'Itaberaba',5),(2003,'Itabuna',5),(2004,'Itacaré',5),(2005,'Itaeté',5),(2006,'Itagi',5),(2007,'Itagibá',5),(2008,'Itagimirim',5),(2009,'Itaguaçu da Bahia',5),(2010,'Itaju do Colônia',5),(2011,'Itajuípe',5),(2012,'Itamaraju',5),(2013,'Itamari',5),(2014,'Itambé',5),(2015,'Itanagra',5),(2016,'Itanhém',5),(2017,'Itaparica',5),(2018,'Itapé',5),(2019,'Itapebi',5),(2020,'Itapetinga',5),(2021,'Itapicuru',5),(2022,'Itapitanga',5),(2023,'Itaquara',5),(2024,'Itarantim',5),(2025,'Itatim',5),(2026,'Itiruçu',5),(2027,'Itiúba',5),(2028,'Itororó',5),(2029,'Ituaçu',5),(2030,'Ituberá',5),(2031,'Iuiú',5),(2032,'Jaborandi',5),(2033,'Jacaraci',5),(2034,'Jacobina',5),(2035,'Jaguaquara',5),(2036,'Jaguarari',5),(2037,'Jaguaripe',5),(2038,'Jandaíra',5),(2039,'Jequié',5),(2040,'Jeremoabo',5),(2041,'Jiquiriçá',5),(2042,'Jitaúna',5),(2043,'João Dourado',5),(2044,'Juazeiro',5),(2045,'Jucuruçu',5),(2046,'Jussara',5),(2047,'Jussari',5),(2048,'Jussiape',5),(2049,'Lafaiete Coutinho',5),(2050,'Lagoa Real',5),(2051,'Laje',5),(2052,'Lajedão',5),(2053,'Lajedinho',5),(2054,'Lajedo do Tabocal',5),(2055,'Lamarão',5),(2056,'Lapão',5),(2057,'Lauro de Freitas',5),(2058,'Lençóis',5),(2059,'Licínio de Almeida',5),(2060,'Livramento de Nossa Senhora',5),(2061,'Luís Eduardo Magalhães',5),(2062,'Macajuba',5),(2063,'Macarani',5),(2064,'Macaúbas',5),(2065,'Macururé',5),(2066,'Madre de Deus',5),(2067,'Maetinga',5),(2068,'Maiquinique',5),(2069,'Mairi',5),(2070,'Malhada',5),(2071,'Malhada de Pedras',5),(2072,'Manoel Vitorino',5),(2073,'Mansidão',5),(2074,'Maracás',5),(2075,'Maragogipe',5),(2076,'Maraú',5),(2077,'Marcionílio Souza',5),(2078,'Mascote',5),(2079,'Mata de São João',5),(2080,'Matina',5),(2081,'Medeiros Neto',5),(2082,'Miguel Calmon',5),(2083,'Milagres',5),(2084,'Mirangaba',5),(2085,'Mirante',5),(2086,'Monte Santo',5),(2087,'Morpará',5),(2088,'Morro do Chapéu',5),(2089,'Mortugaba',5),(2090,'Mucugê',5),(2091,'Mucuri',5),(2092,'Mulungu do Morro',5),(2093,'Mundo Novo',5),(2094,'Muniz Ferreira',5),(2095,'Muquém de São Francisco',5),(2096,'Muritiba',5),(2097,'Mutuípe',5),(2098,'Nazaré',5),(2099,'Nilo Peçanha',5),(2100,'Nordestina',5),(2101,'Nova Canaã',5),(2102,'Nova Fátima',5),(2103,'Nova Ibiá',5),(2104,'Nova Itarana',5),(2105,'Nova Redenção',5),(2106,'Nova Soure',5),(2107,'Nova Viçosa',5),(2108,'Novo Horizonte',5),(2109,'Novo Triunfo',5),(2110,'Olindina',5),(2111,'Oliveira dos Brejinhos',5),(2112,'Ouriçangas',5),(2113,'Ourolândia',5),(2114,'Palmas de Monte Alto',5),(2115,'Palmeiras',5),(2116,'Paramirim',5),(2117,'Paratinga',5),(2118,'Paripiranga',5),(2119,'Pau Brasil',5),(2120,'Paulo Afonso',5),(2121,'Pé de Serra',5),(2122,'Pedrão',5),(2123,'Pedro Alexandre',5),(2124,'Piatã',5),(2125,'Pilão Arcado',5),(2126,'Pindaí',5),(2127,'Pindobaçu',5),(2128,'Pintadas',5),(2129,'Piraí do Norte',5),(2130,'Piripá',5),(2131,'Piritiba',5),(2132,'Planaltino',5),(2133,'Planalto',5),(2134,'Poções',5),(2135,'Pojuca',5),(2136,'Ponto Novo',5),(2137,'Porto Seguro',5),(2138,'Potiraguá',5),(2139,'Prado',5),(2140,'Presidente Dutra',5),(2141,'Presidente Jânio Quadros',5),(2142,'Presidente Tancredo Neves',5),(2143,'Queimadas',5),(2144,'Quijingue',5),(2145,'Quixabeira',5),(2146,'Rafael Jambeiro',5),(2147,'Remanso',5),(2148,'Retirolândia',5),(2149,'Riachão das Neves',5),(2150,'Riachão do Jacuípe',5),(2151,'Riacho de Santana',5),(2152,'Ribeira do Amparo',5),(2153,'Ribeira do Pombal',5),(2154,'Ribeirão do Largo',5),(2155,'Rio de Contas',5),(2156,'Rio do Antônio',5),(2157,'Rio do Pires',5),(2158,'Rio Real',5),(2159,'Rodelas',5),(2160,'Ruy Barbosa',5),(2161,'Salinas da Margarida',5),(2162,'Salvador',5),(2163,'Santa Bárbara',5),(2164,'Santa Brígida',5),(2165,'Santa Cruz Cabrália',5),(2166,'Santa Cruz da Vitória',5),(2167,'Santa Inês',5),(2168,'Santa Luzia',5),(2169,'Santa Maria da Vitória',5),(2170,'Santa Rita de Cássia',5),(2171,'Santa Teresinha',5),(2172,'Santaluz',5),(2173,'Santana',5),(2174,'Santanópolis',5),(2175,'Santo Amaro',5),(2176,'Santo Antônio de Jesus',5),(2177,'Santo Estêvão',5),(2178,'São Desidério',5),(2179,'São Domingos',5),(2180,'São Felipe',5),(2181,'São Félix',5),(2182,'São Félix do Coribe',5),(2183,'São Francisco do Conde',5),(2184,'São Gabriel',5),(2185,'São Gonçalo dos Campos',5),(2186,'São José da Vitória',5),(2187,'São José do Jacuípe',5),(2188,'São Miguel das Matas',5),(2189,'São Sebastião do Passé',5),(2190,'Sapeaçu',5),(2191,'Sátiro Dias',5),(2192,'Saubara',5),(2193,'Saúde',5),(2194,'Seabra',5),(2195,'Sebastião Laranjeiras',5),(2196,'Senhor do Bonfim',5),(2197,'Sento Sé',5),(2198,'Serra do Ramalho',5),(2199,'Serra Dourada',5),(2200,'Serra Preta',5),(2201,'Serrinha',5),(2202,'Serrolândia',5),(2203,'Simões Filho',5),(2204,'Sítio do Mato',5),(2205,'Sítio do Quinto',5),(2206,'Sobradinho',5),(2207,'Souto Soares',5),(2208,'Tabocas do Brejo Velho',5),(2209,'Tanhaçu',5),(2210,'Tanque Novo',5),(2211,'Tanquinho',5),(2212,'Taperoá',5),(2213,'Tapiramutá',5),(2214,'Teixeira de Freitas',5),(2215,'Teodoro Sampaio',5),(2216,'Teofilândia',5),(2217,'Teolândia',5),(2218,'Terra Nova',5),(2219,'Tremedal',5),(2220,'Tucano',5),(2221,'Uauá',5),(2222,'Ubaíra',5),(2223,'Ubaitaba',5),(2224,'Ubatã',5),(2225,'Uibaí',5),(2226,'Umburanas',5),(2227,'Una',5),(2228,'Urandi',5),(2229,'Uruçuca',5),(2230,'Utinga',5),(2231,'Valença',5),(2232,'Valente',5),(2233,'Várzea da Roça',5),(2234,'Várzea do Poço',5),(2235,'Várzea Nova',5),(2236,'Varzedo',5),(2237,'Vera Cruz',5),(2238,'Vereda',5),(2239,'Vitória da Conquista',5),(2240,'Wagner',5),(2241,'Wanderley',5),(2242,'Wenceslau Guimarães',5),(2243,'Xique-Xique',5),(2244,'Abadia dos Dourados',11),(2245,'Abaeté',11),(2246,'Abre Campo',11),(2247,'Acaiaca',11),(2248,'Açucena',11),(2249,'Água Boa',11),(2250,'Água Comprida',11),(2251,'Aguanil',11),(2252,'Águas Formosas',11),(2253,'Águas Vermelhas',11),(2254,'Aimorés',11),(2255,'Aiuruoca',11),(2256,'Alagoa',11),(2257,'Albertina',11),(2258,'Além Paraíba',11),(2259,'Alfenas',11),(2260,'Alfredo Vasconcelos',11),(2261,'Almenara',11),(2262,'Alpercata',11),(2263,'Alpinópolis',11),(2264,'Alterosa',11),(2265,'Alto Caparaó',11),(2266,'Alto Jequitibá',11),(2267,'Alto Rio Doce',11),(2268,'Alvarenga',11),(2269,'Alvinópolis',11),(2270,'Alvorada de Minas',11),(2271,'Amparo do Serra',11),(2272,'Andradas',11),(2273,'Andrelândia',11),(2274,'Angelândia',11),(2275,'Antônio Carlos',11),(2276,'Antônio Dias',11),(2277,'Antônio Prado de Minas',11),(2278,'Araçaí',11),(2279,'Aracitaba',11),(2280,'Araçuaí',11),(2281,'Araguari',11),(2282,'Arantina',11),(2283,'Araponga',11),(2284,'Araporã',11),(2285,'Arapuá',11),(2286,'Araújos',11),(2287,'Araxá',11),(2288,'Arceburgo',11),(2289,'Arcos',11),(2290,'Areado',11),(2291,'Argirita',11),(2292,'Aricanduva',11),(2293,'Arinos',11),(2294,'Astolfo Dutra',11),(2295,'Ataléia',11),(2296,'Augusto de Lima',11),(2297,'Baependi',11),(2298,'Baldim',11),(2299,'Bambuí',11),(2300,'Bandeira',11),(2301,'Bandeira do Sul',11),(2302,'Barão de Cocais',11),(2303,'Barão de Monte Alto',11),(2304,'Barbacena',11),(2305,'Barra Longa',11),(2306,'Barroso',11),(2307,'Bela Vista de Minas',11),(2308,'Belmiro Braga',11),(2309,'Belo Horizonte',11),(2310,'Belo Oriente',11),(2311,'Belo Vale',11),(2312,'Berilo',11),(2313,'Berizal',11),(2314,'Bertópolis',11),(2315,'Betim',11),(2316,'Bias Fortes',11),(2317,'Bicas',11),(2318,'Biquinhas',11),(2319,'Boa Esperança',11),(2320,'Bocaina de Minas',11),(2321,'Bocaiúva',11),(2322,'Bom Despacho',11),(2323,'Bom Jardim de Minas',11),(2324,'Bom Jesus da Penha',11),(2325,'Bom Jesus do Amparo',11),(2326,'Bom Jesus do Galho',11),(2327,'Bom Repouso',11),(2328,'Bom Sucesso',11),(2329,'Bonfim',11),(2330,'Bonfinópolis de Minas',11),(2331,'Bonito de Minas',11),(2332,'Borda da Mata',11),(2333,'Botelhos',11),(2334,'Botumirim',11),(2335,'Brás Pires',11),(2336,'Brasilândia de Minas',11),(2337,'Brasília de Minas',11),(2338,'Brasópolis',11),(2339,'Braúnas',11),(2340,'Brumadinho',11),(2341,'Bueno Brandão',11),(2342,'Buenópolis',11),(2343,'Bugre',11),(2344,'Buritis',11),(2345,'Buritizeiro',11),(2346,'Cabeceira Grande',11),(2347,'Cabo Verde',11),(2348,'Cachoeira da Prata',11),(2349,'Cachoeira de Minas',11),(2350,'Cachoeira de Pajeú',11),(2351,'Cachoeira Dourada',11),(2352,'Caetanópolis',11),(2353,'Caeté',11),(2354,'Caiana',11),(2355,'Cajuri',11),(2356,'Caldas',11),(2357,'Camacho',11),(2358,'Camanducaia',11),(2359,'Cambuí',11),(2360,'Cambuquira',11),(2361,'Campanário',11),(2362,'Campanha',11),(2363,'Campestre',11),(2364,'Campina Verde',11),(2365,'Campo Azul',11),(2366,'Campo Belo',11),(2367,'Campo do Meio',11),(2368,'Campo Florido',11),(2369,'Campos Altos',11),(2370,'Campos Gerais',11),(2371,'Cana Verde',11),(2372,'Canaã',11),(2373,'Canápolis',11),(2374,'Candeias',11),(2375,'Cantagalo',11),(2376,'Caparaó',11),(2377,'Capela Nova',11),(2378,'Capelinha',11),(2379,'Capetinga',11),(2380,'Capim Branco',11),(2381,'Capinópolis',11),(2382,'Capitão Andrade',11),(2383,'Capitão Enéas',11),(2384,'Capitólio',11),(2385,'Caputira',11),(2386,'Caraí',11),(2387,'Caranaíba',11),(2388,'Carandaí',11),(2389,'Carangola',11),(2390,'Caratinga',11),(2391,'Carbonita',11),(2392,'Careaçu',11),(2393,'Carlos Chagas',11),(2394,'Carmésia',11),(2395,'Carmo da Cachoeira',11),(2396,'Carmo da Mata',11),(2397,'Carmo de Minas',11),(2398,'Carmo do Cajuru',11),(2399,'Carmo do Paranaíba',11),(2400,'Carmo do Rio Claro',11),(2401,'Carmópolis de Minas',11),(2402,'Carneirinho',11),(2403,'Carrancas',11),(2404,'Carvalhópolis',11),(2405,'Carvalhos',11),(2406,'Casa Grande',11),(2407,'Cascalho Rico',11),(2408,'Cássia',11),(2409,'Cataguases',11),(2410,'Catas Altas',11),(2411,'Catas Altas da Noruega',11),(2412,'Catuji',11),(2413,'Catuti',11),(2414,'Caxambu',11),(2415,'Cedro do Abaeté',11),(2416,'Central de Minas',11),(2417,'Centralina',11),(2418,'Chácara',11),(2419,'Chalé',11),(2420,'Chapada do Norte',11),(2421,'Chapada Gaúcha',11),(2422,'Chiador',11),(2423,'Cipotânea',11),(2424,'Claraval',11),(2425,'Claro dos Poções',11),(2426,'Cláudio',11),(2427,'Coimbra',11),(2428,'Coluna',11),(2429,'Comendador Gomes',11),(2430,'Comercinho',11),(2431,'Conceição da Aparecida',11),(2432,'Conceição da Barra de Minas',11),(2433,'Conceição das Alagoas',11),(2434,'Conceição das Pedras',11),(2435,'Conceição de Ipanema',11),(2436,'Conceição do Mato Dentro',11),(2437,'Conceição do Pará',11),(2438,'Conceição do Rio Verde',11),(2439,'Conceição dos Ouros',11),(2440,'Cônego Marinho',11),(2441,'Confins',11),(2442,'Congonhal',11),(2443,'Congonhas',11),(2444,'Congonhas do Norte',11),(2445,'Conquista',11),(2446,'Conselheiro Lafaiete',11),(2447,'Conselheiro Pena',11),(2448,'Consolação',11),(2449,'Contagem',11),(2450,'Coqueiral',11),(2451,'Coração de Jesus',11),(2452,'Cordisburgo',11),(2453,'Cordislândia',11),(2454,'Corinto',11),(2455,'Coroaci',11),(2456,'Coromandel',11),(2457,'Coronel Fabriciano',11),(2458,'Coronel Murta',11),(2459,'Coronel Pacheco',11),(2460,'Coronel Xavier Chaves',11),(2461,'Córrego Danta',11),(2462,'Córrego do Bom Jesus',11),(2463,'Córrego Fundo',11),(2464,'Córrego Novo',11),(2465,'Couto de Magalhães de Minas',11),(2466,'Crisólita',11),(2467,'Cristais',11),(2468,'Cristália',11),(2469,'Cristiano Otoni',11),(2470,'Cristina',11),(2471,'Crucilândia',11),(2472,'Cruzeiro da Fortaleza',11),(2473,'Cruzília',11),(2474,'Cuparaque',11),(2475,'Curral de Dentro',11),(2476,'Curvelo',11),(2477,'Datas',11),(2478,'Delfim Moreira',11),(2479,'Delfinópolis',11),(2480,'Delta',11),(2481,'Descoberto',11),(2482,'Desterro de Entre Rios',11),(2483,'Desterro do Melo',11),(2484,'Diamantina',11),(2485,'Diogo de Vasconcelos',11),(2486,'Dionísio',11),(2487,'Divinésia',11),(2488,'Divino',11),(2489,'Divino das Laranjeiras',11),(2490,'Divinolândia de Minas',11),(2491,'Divinópolis',11),(2492,'Divisa Alegre',11),(2493,'Divisa Nova',11),(2494,'Divisópolis',11),(2495,'Dom Bosco',11),(2496,'Dom Cavati',11),(2497,'Dom Joaquim',11),(2498,'Dom Silvério',11),(2499,'Dom Viçoso',11),(2500,'Dona Eusébia',11),(2501,'Dores de Campos',11),(2502,'Dores de Guanhães',11),(2503,'Dores do Indaiá',11),(2504,'Dores do Turvo',11),(2505,'Doresópolis',11),(2506,'Douradoquara',11),(2507,'Durandé',11),(2508,'Elói Mendes',11),(2509,'Engenheiro Caldas',11),(2510,'Engenheiro Navarro',11),(2511,'Entre Folhas',11),(2512,'Entre Rios de Minas',11),(2513,'Ervália',11),(2514,'Esmeraldas',11),(2515,'Espera Feliz',11),(2516,'Espinosa',11),(2517,'Espírito Santo do Dourado',11),(2518,'Estiva',11),(2519,'Estrela Dalva',11),(2520,'Estrela do Indaiá',11),(2521,'Estrela do Sul',11),(2522,'Eugenópolis',11),(2523,'Ewbank da Câmara',11),(2524,'Extrema',11),(2525,'Fama',11),(2526,'Faria Lemos',11),(2527,'Felício dos Santos',11),(2528,'Felisburgo',11),(2529,'Felixlândia',11),(2530,'Fernandes Tourinho',11),(2531,'Ferros',11),(2532,'Fervedouro',11),(2533,'Florestal',11),(2534,'Formiga',11),(2535,'Formoso',11),(2536,'Fortaleza de Minas',11),(2537,'Fortuna de Minas',11),(2538,'Francisco Badaró',11),(2539,'Francisco Dumont',11),(2540,'Francisco Sá',11),(2541,'Franciscópolis',11),(2542,'Frei Gaspar',11),(2543,'Frei Inocêncio',11),(2544,'Frei Lagonegro',11),(2545,'Fronteira',11),(2546,'Fronteira dos Vales',11),(2547,'Fruta de Leite',11),(2548,'Frutal',11),(2549,'Funilândia',11),(2550,'Galiléia',11),(2551,'Gameleiras',11),(2552,'Glaucilândia',11),(2553,'Goiabeira',11),(2554,'Goianá',11),(2555,'Gonçalves',11),(2556,'Gonzaga',11),(2557,'Gouveia',11),(2558,'Governador Valadares',11),(2559,'Grão Mogol',11),(2560,'Grupiara',11),(2561,'Guanhães',11),(2562,'Guapé',11),(2563,'Guaraciaba',11),(2564,'Guaraciama',11),(2565,'Guaranésia',11),(2566,'Guarani',11),(2567,'Guarará',11),(2568,'Guarda-Mor',11),(2569,'Guaxupé',11),(2570,'Guidoval',11),(2571,'Guimarânia',11),(2572,'Guiricema',11),(2573,'Gurinhatã',11),(2574,'Heliodora',11),(2575,'Iapu',11),(2576,'Ibertioga',11),(2577,'Ibiá',11),(2578,'Ibiaí',11),(2579,'Ibiracatu',11),(2580,'Ibiraci',11),(2581,'Ibirité',11),(2582,'Ibitiúra de Minas',11),(2583,'Ibituruna',11),(2584,'Icaraí de Minas',11),(2585,'Igarapé',11),(2586,'Igaratinga',11),(2587,'Iguatama',11),(2588,'Ijaci',11),(2589,'Ilicínea',11),(2590,'Imbé de Minas',11),(2591,'Inconfidentes',11),(2592,'Indaiabira',11),(2593,'Indianópolis',11),(2594,'Ingaí',11),(2595,'Inhapim',11),(2596,'Inhaúma',11),(2597,'Inimutaba',11),(2598,'Ipaba',11),(2599,'Ipanema',11),(2600,'Ipatinga',11),(2601,'Ipiaçu',11),(2602,'Ipuiúna',11),(2603,'Iraí de Minas',11),(2604,'Itabira',11),(2605,'Itabirinha',11),(2606,'Itabirito',11),(2607,'Itacambira',11),(2608,'Itacarambi',11),(2609,'Itaguara',11),(2610,'Itaipé',11),(2611,'Itajubá',11),(2612,'Itamarandiba',11),(2613,'Itamarati de Minas',11),(2614,'Itambacuri',11),(2615,'Itambé do Mato Dentro',11),(2616,'Itamogi',11),(2617,'Itamonte',11),(2618,'Itanhandu',11),(2619,'Itanhomi',11),(2620,'Itaobim',11),(2621,'Itapagipe',11),(2622,'Itapecerica',11),(2623,'Itapeva',11),(2624,'Itatiaiuçu',11),(2625,'Itaú de Minas',11),(2626,'Itaúna',11),(2627,'Itaverava',11),(2628,'Itinga',11),(2629,'Itueta',11),(2630,'Ituiutaba',11),(2631,'Itumirim',11),(2632,'Iturama',11),(2633,'Itutinga',11),(2634,'Jaboticatubas',11),(2635,'Jacinto',11),(2636,'Jacuí',11),(2637,'Jacutinga',11),(2638,'Jaguaraçu',11),(2639,'Jaíba',11),(2640,'Jampruca',11),(2641,'Janaúba',11),(2642,'Januária',11),(2643,'Japaraíba',11),(2644,'Japonvar',11),(2645,'Jeceaba',11),(2646,'Jenipapo de Minas',11),(2647,'Jequeri',11),(2648,'Jequitaí',11),(2649,'Jequitibá',11),(2650,'Jequitinhonha',11),(2651,'Jesuânia',11),(2652,'Joaíma',11),(2653,'Joanésia',11),(2654,'João Monlevade',11),(2655,'João Pinheiro',11),(2656,'Joaquim Felício',11),(2657,'Jordânia',11),(2658,'José Gonçalves de Minas',11),(2659,'José Raydan',11),(2660,'Josenópolis',11),(2661,'Juatuba',11),(2662,'Juiz de Fora',11),(2663,'Juramento',11),(2664,'Juruaia',11),(2665,'Juvenília',11),(2666,'Ladainha',11),(2667,'Lagamar',11),(2668,'Lagoa da Prata',11),(2669,'Lagoa dos Patos',11),(2670,'Lagoa Dourada',11),(2671,'Lagoa Formosa',11),(2672,'Lagoa Grande',11),(2673,'Lagoa Santa',11),(2674,'Lajinha',11),(2675,'Lambari',11),(2676,'Lamim',11),(2677,'Laranjal',11),(2678,'Lassance',11),(2679,'Lavras',11),(2680,'Leandro Ferreira',11),(2681,'Leme do Prado',11),(2682,'Leopoldina',11),(2683,'Liberdade',11),(2684,'Lima Duarte',11),(2685,'Limeira do Oeste',11),(2686,'Lontra',11),(2687,'Luisburgo',11),(2688,'Luislândia',11),(2689,'Luminárias',11),(2690,'Luz',11),(2691,'Machacalis',11),(2692,'Machado',11),(2693,'Madre de Deus de Minas',11),(2694,'Malacacheta',11),(2695,'Mamonas',11),(2696,'Manga',11),(2697,'Manhuaçu',11),(2698,'Manhumirim',11),(2699,'Mantena',11),(2700,'Mar de Espanha',11),(2701,'Maravilhas',11),(2702,'Maria da Fé',11),(2703,'Mariana',11),(2704,'Marilac',11),(2705,'Mário Campos',11),(2706,'Maripá de Minas',11),(2707,'Marliéria',11),(2708,'Marmelópolis',11),(2709,'Martinho Campos',11),(2710,'Martins Soares',11),(2711,'Mata Verde',11),(2712,'Materlândia',11),(2713,'Mateus Leme',11),(2714,'Mathias Lobato',11),(2715,'Matias Barbosa',11),(2716,'Matias Cardoso',11),(2717,'Matipó',11),(2718,'Mato Verde',11),(2719,'Matozinhos',11),(2720,'Matutina',11),(2721,'Medeiros',11),(2722,'Medina',11),(2723,'Mendes Pimentel',11),(2724,'Mercês',11),(2725,'Mesquita',11),(2726,'Minas Novas',11),(2727,'Minduri',11),(2728,'Mirabela',11),(2729,'Miradouro',11),(2730,'Miraí',11),(2731,'Miravânia',11),(2732,'Moeda',11),(2733,'Moema',11),(2734,'Monjolos',11),(2735,'Monsenhor Paulo',11),(2736,'Montalvânia',11),(2737,'Monte Alegre de Minas',11),(2738,'Monte Azul',11),(2739,'Monte Belo',11),(2740,'Monte Carmelo',11),(2741,'Monte Formoso',11),(2742,'Monte Santo de Minas',11),(2743,'Monte Sião',11),(2744,'Montes Claros',11),(2745,'Montezuma',11),(2746,'Morada Nova de Minas',11),(2747,'Morro da Garça',11),(2748,'Morro do Pilar',11),(2749,'Munhoz',11),(2750,'Muriaé',11),(2751,'Mutum',11),(2752,'Muzambinho',11),(2753,'Nacip Raydan',11),(2754,'Nanuque',11),(2755,'Naque',11),(2756,'Natalândia',11),(2757,'Natércia',11),(2758,'Nazareno',11),(2759,'Nepomuceno',11),(2760,'Ninheira',11),(2761,'Nova Belém',11),(2762,'Nova Era',11),(2763,'Nova Lima',11),(2764,'Nova Módica',11),(2765,'Nova Ponte',11),(2766,'Nova Porteirinha',11),(2767,'Nova Resende',11),(2768,'Nova Serrana',11),(2769,'Nova União',11),(2770,'Novo Cruzeiro',11),(2771,'Novo Oriente de Minas',11),(2772,'Novorizonte',11),(2773,'Olaria',11),(2774,'Olhos-d\'Água',11),(2775,'Olímpio Noronha',11),(2776,'Oliveira',11),(2777,'Oliveira Fortes',11),(2778,'Onça de Pitangui',11),(2779,'Oratórios',11),(2780,'Orizânia',11),(2781,'Ouro Branco',11),(2782,'Ouro Fino',11),(2783,'Ouro Preto',11),(2784,'Ouro Verde de Minas',11),(2785,'Padre Carvalho',11),(2786,'Padre Paraíso',11),(2787,'Pai Pedro',11),(2788,'Paineiras',11),(2789,'Pains',11),(2790,'Paiva',11),(2791,'Palma',11),(2792,'Palmópolis',11),(2793,'Papagaios',11),(2794,'Pará de Minas',11),(2795,'Paracatu',11),(2796,'Paraguaçu',11),(2797,'Paraisópolis',11),(2798,'Paraopeba',11),(2799,'Passa Quatro',11),(2800,'Passa Tempo',11),(2801,'Passabém',11),(2802,'Passa-Vinte',11),(2803,'Passos',11),(2804,'Patis',11),(2805,'Patos de Minas',11),(2806,'Patrocínio',11),(2807,'Patrocínio do Muriaé',11),(2808,'Paula Cândido',11),(2809,'Paulistas',11),(2810,'Pavão',11),(2811,'Peçanha',11),(2812,'Pedra Azul',11),(2813,'Pedra Bonita',11),(2814,'Pedra do Anta',11),(2815,'Pedra do Indaiá',11),(2816,'Pedra Dourada',11),(2817,'Pedralva',11),(2818,'Pedras de Maria da Cruz',11),(2819,'Pedrinópolis',11),(2820,'Pedro Leopoldo',11),(2821,'Pedro Teixeira',11),(2822,'Pequeri',11),(2823,'Pequi',11),(2824,'Perdigão',11),(2825,'Perdizes',11),(2826,'Perdões',11),(2827,'Periquito',11),(2828,'Pescador',11),(2829,'Piau',11),(2830,'Piedade de Caratinga',11),(2831,'Piedade de Ponte Nova',11),(2832,'Piedade do Rio Grande',11),(2833,'Piedade dos Gerais',11),(2834,'Pimenta',11),(2835,'Pingo-d\'Água',11),(2836,'Pintópolis',11),(2837,'Piracema',11),(2838,'Pirajuba',11),(2839,'Piranga',11),(2840,'Piranguçu',11),(2841,'Piranguinho',11),(2842,'Pirapetinga',11),(2843,'Pirapora',11),(2844,'Piraúba',11),(2845,'Pitangui',11),(2846,'Piumhi',11),(2847,'Planura',11),(2848,'Poço Fundo',11),(2849,'Poços de Caldas',11),(2850,'Pocrane',11),(2851,'Pompéu',11),(2852,'Ponte Nova',11),(2853,'Ponto Chique',11),(2854,'Ponto dos Volantes',11),(2855,'Porteirinha',11),(2856,'Porto Firme',11),(2857,'Poté',11),(2858,'Pouso Alegre',11),(2859,'Pouso Alto',11),(2860,'Prados',11),(2861,'Prata',11),(2862,'Pratápolis',11),(2863,'Pratinha',11),(2864,'Presidente Bernardes',11),(2865,'Presidente Juscelino',11),(2866,'Presidente Kubitschek',11),(2867,'Presidente Olegário',11),(2868,'Prudente de Morais',11),(2869,'Quartel Geral',11),(2870,'Queluzito',11),(2871,'Raposos',11),(2872,'Raul Soares',11),(2873,'Recreio',11),(2874,'Reduto',11),(2875,'Resende Costa',11),(2876,'Resplendor',11),(2877,'Ressaquinha',11),(2878,'Riachinho',11),(2879,'Riacho dos Machados',11),(2880,'Ribeirão das Neves',11),(2881,'Ribeirão Vermelho',11),(2882,'Rio Acima',11),(2883,'Rio Casca',11),(2884,'Rio do Prado',11),(2885,'Rio Doce',11),(2886,'Rio Espera',11),(2887,'Rio Manso',11),(2888,'Rio Novo',11),(2889,'Rio Paranaíba',11),(2890,'Rio Pardo de Minas',11),(2891,'Rio Piracicaba',11),(2892,'Rio Pomba',11),(2893,'Rio Preto',11),(2894,'Rio Vermelho',11),(2895,'Ritápolis',11),(2896,'Rochedo de Minas',11),(2897,'Rodeiro',11),(2898,'Romaria',11),(2899,'Rosário da Limeira',11),(2900,'Rubelita',11),(2901,'Rubim',11),(2902,'Sabará',11),(2903,'Sabinópolis',11),(2904,'Sacramento',11),(2905,'Salinas',11),(2906,'Salto da Divisa',11),(2907,'Santa Bárbara',11),(2908,'Santa Bárbara do Leste',11),(2909,'Santa Bárbara do Monte Verde',11),(2910,'Santa Bárbara do Tugúrio',11),(2911,'Santa Cruz de Minas',11),(2912,'Santa Cruz de Salinas',11),(2913,'Santa Cruz do Escalvado',11),(2914,'Santa Efigênia de Minas',11),(2915,'Santa Fé de Minas',11),(2916,'Santa Helena de Minas',11),(2917,'Santa Juliana',11),(2918,'Santa Luzia',11),(2919,'Santa Margarida',11),(2920,'Santa Maria de Itabira',11),(2921,'Santa Maria do Salto',11),(2922,'Santa Maria do Suaçuí',11),(2923,'Santa Rita de Caldas',11),(2924,'Santa Rita de Ibitipoca',11),(2925,'Santa Rita de Jacutinga',11),(2926,'Santa Rita de Minas',11),(2927,'Santa Rita do Itueto',11),(2928,'Santa Rita do Sapucaí',11),(2929,'Santa Rosa da Serra',11),(2930,'Santa Vitória',11),(2931,'Santana da Vargem',11),(2932,'Santana de Cataguases',11),(2933,'Santana de Pirapama',11),(2934,'Santana do Deserto',11),(2935,'Santana do Garambéu',11),(2936,'Santana do Jacaré',11),(2937,'Santana do Manhuaçu',11),(2938,'Santana do Paraíso',11),(2939,'Santana do Riacho',11),(2940,'Santana dos Montes',11),(2941,'Santo Antônio do Amparo',11),(2942,'Santo Antônio do Aventureiro',11),(2943,'Santo Antônio do Grama',11),(2944,'Santo Antônio do Itambé',11),(2945,'Santo Antônio do Jacinto',11),(2946,'Santo Antônio do Monte',11),(2947,'Santo Antônio do Retiro',11),(2948,'Santo Antônio do Rio Abaixo',11),(2949,'Santo Hipólito',11),(2950,'Santos Dumont',11),(2951,'São Bento Abade',11),(2952,'São Brás do Suaçuí',11),(2953,'São Domingos das Dores',11),(2954,'São Domingos do Prata',11),(2955,'São Félix de Minas',11),(2956,'São Francisco',11),(2957,'São Francisco de Paula',11),(2958,'São Francisco de Sales',11),(2959,'São Francisco do Glória',11),(2960,'São Geraldo',11),(2961,'São Geraldo da Piedade',11),(2962,'São Geraldo do Baixio',11),(2963,'São Gonçalo do Abaeté',11),(2964,'São Gonçalo do Pará',11),(2965,'São Gonçalo do Rio Abaixo',11),(2966,'São Gonçalo do Rio Preto',11),(2967,'São Gonçalo do Sapucaí',11),(2968,'São Gotardo',11),(2969,'São João Batista do Glória',11),(2970,'São João da Lagoa',11),(2971,'São João da Mata',11),(2972,'São João da Ponte',11),(2973,'São João das Missões',11),(2974,'São João del Rei',11),(2975,'São João do Manhuaçu',11),(2976,'São João do Manteninha',11),(2977,'São João do Oriente',11),(2978,'São João do Pacuí',11),(2979,'São João do Paraíso',11),(2980,'São João Evangelista',11),(2981,'São João Nepomuceno',11),(2982,'São Joaquim de Bicas',11),(2983,'São José da Barra',11),(2984,'São José da Lapa',11),(2985,'São José da Safira',11),(2986,'São José da Varginha',11),(2987,'São José do Alegre',11),(2988,'São José do Divino',11),(2989,'São José do Goiabal',11),(2990,'São José do Jacuri',11),(2991,'São José do Mantimento',11),(2992,'São Lourenço',11),(2993,'São Miguel do Anta',11),(2994,'São Pedro da União',11),(2995,'São Pedro do Suaçuí',11),(2996,'São Pedro dos Ferros',11),(2997,'São Romão',11),(2998,'São Roque de Minas',11),(2999,'São Sebastião da Bela Vista',11),(3000,'São Sebastião da Vargem Alegre',11),(3001,'São Sebastião do Anta',11),(3002,'São Sebastião do Maranhão',11),(3003,'São Sebastião do Oeste',11),(3004,'São Sebastião do Paraíso',11),(3005,'São Sebastião do Rio Preto',11),(3006,'São Sebastião do Rio Verde',11),(3007,'São Thomé das Letras',11),(3008,'São Tiago',11),(3009,'São Tomás de Aquino',11),(3010,'São Vicente de Minas',11),(3011,'Sapucaí-Mirim',11),(3012,'Sardoá',11),(3013,'Sarzedo',11),(3014,'Sem-Peixe',11),(3015,'Senador Amaral',11),(3016,'Senador Cortes',11),(3017,'Senador Firmino',11),(3018,'Senador José Bento',11),(3019,'Senador Modestino Gonçalves',11),(3020,'Senhora de Oliveira',11),(3021,'Senhora do Porto',11),(3022,'Senhora dos Remédios',11),(3023,'Sericita',11),(3024,'Seritinga',11),(3025,'Serra Azul de Minas',11),(3026,'Serra da Saudade',11),(3027,'Serra do Salitre',11),(3028,'Serra dos Aimorés',11),(3029,'Serrania',11),(3030,'Serranópolis de Minas',11),(3031,'Serranos',11),(3032,'Serro',11),(3033,'Sete Lagoas',11),(3034,'Setubinha',11),(3035,'Silveirânia',11),(3036,'Silvianópolis',11),(3037,'Simão Pereira',11),(3038,'Simonésia',11),(3039,'Sobrália',11),(3040,'Soledade de Minas',11),(3041,'Tabuleiro',11),(3042,'Taiobeiras',11),(3043,'Taparuba',11),(3044,'Tapira',11),(3045,'Tapiraí',11),(3046,'Taquaraçu de Minas',11),(3047,'Tarumirim',11),(3048,'Teixeiras',11),(3049,'Teófilo Otoni',11),(3050,'Timóteo',11),(3051,'Tiradentes',11),(3052,'Tiros',11),(3053,'Tocantins',11),(3054,'Tocos do Moji',11),(3055,'Toledo',11),(3056,'Tombos',11),(3057,'Três Corações',11),(3058,'Três Marias',11),(3059,'Três Pontas',11),(3060,'Tumiritinga',11),(3061,'Tupaciguara',11),(3062,'Turmalina',11),(3063,'Turvolândia',11),(3064,'Ubá',11),(3065,'Ubaí',11),(3066,'Ubaporanga',11),(3067,'Uberaba',11),(3068,'Uberlândia',11),(3069,'Umburatiba',11),(3070,'Unaí',11),(3071,'União de Minas',11),(3072,'Uruana de Minas',11),(3073,'Urucânia',11),(3074,'Urucuia',11),(3075,'Vargem Alegre',11),(3076,'Vargem Bonita',11),(3077,'Vargem Grande do Rio Pardo',11),(3078,'Varginha',11),(3079,'Varjão de Minas',11),(3080,'Várzea da Palma',11),(3081,'Varzelândia',11),(3082,'Vazante',11),(3083,'Verdelândia',11),(3084,'Veredinha',11),(3085,'Veríssimo',11),(3086,'Vermelho Novo',11),(3087,'Vespasiano',11),(3088,'Viçosa',11),(3089,'Vieiras',11),(3090,'Virgem da Lapa',11),(3091,'Virgínia',11),(3092,'Virginópolis',11),(3093,'Virgolândia',11),(3094,'Visconde do Rio Branco',11),(3095,'Volta Grande',11),(3096,'Wenceslau Braz',11),(3097,'Afonso Cláudio',8),(3098,'Água Doce do Norte',8),(3099,'Águia Branca',8),(3100,'Alegre',8),(3101,'Alfredo Chaves',8),(3102,'Alto Rio Novo',8),(3103,'Anchieta',8),(3104,'Apiacá',8),(3105,'Aracruz',8),(3106,'Atilio Vivacqua',8),(3107,'Baixo Guandu',8),(3108,'Barra de São Francisco',8),(3109,'Boa Esperança',8),(3110,'Bom Jesus do Norte',8),(3111,'Brejetuba',8),(3112,'Cachoeiro de Itapemirim',8),(3113,'Cariacica',8),(3114,'Castelo',8),(3115,'Colatina',8),(3116,'Conceição da Barra',8),(3117,'Conceição do Castelo',8),(3118,'Divino de São Lourenço',8),(3119,'Domingos Martins',8),(3120,'Dores do Rio Preto',8),(3121,'Ecoporanga',8),(3122,'Fundão',8),(3123,'Governador Lindenberg',8),(3124,'Guaçuí',8),(3125,'Guarapari',8),(3126,'Ibatiba',8),(3127,'Ibiraçu',8),(3128,'Ibitirama',8),(3129,'Iconha',8),(3130,'Irupi',8),(3131,'Itaguaçu',8),(3132,'Itapemirim',8),(3133,'Itarana',8),(3134,'Iúna',8),(3135,'Jaguaré',8),(3136,'Jerônimo Monteiro',8),(3137,'João Neiva',8),(3138,'Laranja da Terra',8),(3139,'Linhares',8),(3140,'Mantenópolis',8),(3141,'Marataízes',8),(3142,'Marechal Floriano',8),(3143,'Marilândia',8),(3144,'Mimoso do Sul',8),(3145,'Montanha',8),(3146,'Mucurici',8),(3147,'Muniz Freire',8),(3148,'Muqui',8),(3149,'Nova Venécia',8),(3150,'Pancas',8),(3151,'Pedro Canário',8),(3152,'Pinheiros',8),(3153,'Piúma',8),(3154,'Ponto Belo',8),(3155,'Presidente Kennedy',8),(3156,'Rio Bananal',8),(3157,'Rio Novo do Sul',8),(3158,'Santa Leopoldina',8),(3159,'Santa Maria de Jetibá',8),(3160,'Santa Teresa',8),(3161,'São Domingos do Norte',8),(3162,'São Gabriel da Palha',8),(3163,'São José do Calçado',8),(3164,'São Mateus',8),(3165,'São Roque do Canaã',8),(3166,'Serra',8),(3167,'Sooretama',8),(3168,'Vargem Alta',8),(3169,'Venda Nova do Imigrante',8),(3170,'Viana',8),(3171,'Vila Pavão',8),(3172,'Vila Valério',8),(3173,'Vila Velha',8),(3174,'Vitória',8),(3175,'Angra dos Reis',19),(3176,'Aperibé',19),(3177,'Araruama',19),(3178,'Areal',19),(3179,'Armação dos Búzios',19),(3180,'Arraial do Cabo',19),(3181,'Barra do Piraí',19),(3182,'Barra Mansa',19),(3183,'Belford Roxo',19),(3184,'Bom Jardim',19),(3185,'Bom Jesus do Itabapoana',19),(3186,'Cabo Frio',19),(3187,'Cachoeiras de Macacu',19),(3188,'Cambuci',19),(3189,'Campos dos Goytacazes',19),(3190,'Cantagalo',19),(3191,'Carapebus',19),(3192,'Cardoso Moreira',19),(3193,'Carmo',19),(3194,'Casimiro de Abreu',19),(3195,'Comendador Levy Gasparian',19),(3196,'Conceição de Macabu',19),(3197,'Cordeiro',19),(3198,'Duas Barras',19),(3199,'Duque de Caxias',19),(3200,'Engenheiro Paulo de Frontin',19),(3201,'Guapimirim',19),(3202,'Iguaba Grande',19),(3203,'Itaboraí',19),(3204,'Itaguaí',19),(3205,'Italva',19),(3206,'Itaocara',19),(3207,'Itaperuna',19),(3208,'Itatiaia',19),(3209,'Japeri',19),(3210,'Laje do Muriaé',19),(3211,'Macaé',19),(3212,'Macuco',19),(3213,'Magé',19),(3214,'Mangaratiba',19),(3215,'Maricá',19),(3216,'Mendes',19),(3217,'Mesquita',19),(3218,'Miguel Pereira',19),(3219,'Miracema',19),(3220,'Natividade',19),(3221,'Nilópolis',19),(3222,'Niterói',19),(3223,'Nova Friburgo',19),(3224,'Nova Iguaçu',19),(3225,'Paracambi',19),(3226,'Paraíba do Sul',19),(3227,'Paraty',19),(3228,'Paty do Alferes',19),(3229,'Petrópolis',19),(3230,'Pinheiral',19),(3231,'Piraí',19),(3232,'Porciúncula',19),(3233,'Porto Real',19),(3234,'Quatis',19),(3235,'Queimados',19),(3236,'Quissamã',19),(3237,'Resende',19),(3238,'Rio Bonito',19),(3239,'Rio Claro',19),(3240,'Rio das Flores',19),(3241,'Rio das Ostras',19),(3242,'Rio de Janeiro',19),(3243,'Santa Maria Madalena',19),(3244,'Santo Antônio de Pádua',19),(3245,'São Fidélis',19),(3246,'São Francisco de Itabapoana',19),(3247,'São Gonçalo',19),(3248,'São João da Barra',19),(3249,'São João de Meriti',19),(3250,'São José de Ubá',19),(3251,'São José do Vale do Rio Preto',19),(3252,'São Pedro da Aldeia',19),(3253,'São Sebastião do Alto',19),(3254,'Sapucaia',19),(3255,'Saquarema',19),(3256,'Seropédica',19),(3257,'Silva Jardim',19),(3258,'Sumidouro',19),(3259,'Tanguá',19),(3260,'Teresópolis',19),(3261,'Trajano de Moraes',19),(3262,'Três Rios',19),(3263,'Valença',19),(3264,'Varre-Sai',19),(3265,'Vassouras',19),(3266,'Volta Redonda',19),(3267,'Adamantina',26),(3268,'Adolfo',26),(3269,'Aguaí',26),(3270,'Águas da Prata',26),(3271,'Águas de Lindóia',26),(3272,'Águas de Santa Bárbara',26),(3273,'Águas de São Pedro',26),(3274,'Agudos',26),(3275,'Alambari',26),(3276,'Alfredo Marcondes',26),(3277,'Altair',26),(3278,'Altinópolis',26),(3279,'Alto Alegre',26),(3280,'Alumínio',26),(3281,'Álvares Florence',26),(3282,'Álvares Machado',26),(3283,'Álvaro de Carvalho',26),(3284,'Alvinlândia',26),(3285,'Americana',26),(3286,'Américo Brasiliense',26),(3287,'Américo de Campos',26),(3288,'Amparo',26),(3289,'Analândia',26),(3290,'Andradina',26),(3291,'Angatuba',26),(3292,'Anhembi',26),(3293,'Anhumas',26),(3294,'Aparecida',26),(3295,'Aparecida d\'Oeste',26),(3296,'Apiaí',26),(3297,'Araçariguama',26),(3298,'Araçatuba',26),(3299,'Araçoiaba da Serra',26),(3300,'Aramina',26),(3301,'Arandu',26),(3302,'Arapeí',26),(3303,'Araraquara',26),(3304,'Araras',26),(3305,'Arco-Íris',26),(3306,'Arealva',26),(3307,'Areias',26),(3308,'Areiópolis',26),(3309,'Ariranha',26),(3310,'Artur Nogueira',26),(3311,'Arujá',26),(3312,'Aspásia',26),(3313,'Assis',26),(3314,'Atibaia',26),(3315,'Auriflama',26),(3316,'Avaí',26),(3317,'Avanhandava',26),(3318,'Avaré',26),(3319,'Bady Bassitt',26),(3320,'Balbinos',26),(3321,'Bálsamo',26),(3322,'Bananal',26),(3323,'Barão de Antonina',26),(3324,'Barbosa',26),(3325,'Bariri',26),(3326,'Barra Bonita',26),(3327,'Barra do Chapéu',26),(3328,'Barra do Turvo',26),(3329,'Barretos',26),(3330,'Barrinha',26),(3331,'Barueri',26),(3332,'Bastos',26),(3333,'Batatais',26),(3334,'Bauru',26),(3335,'Bebedouro',26),(3336,'Bento de Abreu',26),(3337,'Bernardino de Campos',26),(3338,'Bertioga',26),(3339,'Bilac',26),(3340,'Birigui',26),(3341,'Biritiba-Mirim',26),(3342,'Boa Esperança do Sul',26),(3343,'Bocaina',26),(3344,'Bofete',26),(3345,'Boituva',26),(3346,'Bom Jesus dos Perdões',26),(3347,'Bom Sucesso de Itararé',26),(3348,'Borá',26),(3349,'Boracéia',26),(3350,'Borborema',26),(3351,'Borebi',26),(3352,'Botucatu',26),(3353,'Bragança Paulista',26),(3354,'Braúna',26),(3355,'Brejo Alegre',26),(3356,'Brodowski',26),(3357,'Brotas',26),(3358,'Buri',26),(3359,'Buritama',26),(3360,'Buritizal',26),(3361,'Cabrália Paulista',26),(3362,'Cabreúva',26),(3363,'Caçapava',26),(3364,'Cachoeira Paulista',26),(3365,'Caconde',26),(3366,'Cafelândia',26),(3367,'Caiabu',26),(3368,'Caieiras',26),(3369,'Caiuá',26),(3370,'Cajamar',26),(3371,'Cajati',26),(3372,'Cajobi',26),(3373,'Cajuru',26),(3374,'Campina do Monte Alegre',26),(3375,'Campinas',26),(3376,'Campo Limpo Paulista',26),(3377,'Campos do Jordão',26),(3378,'Campos Novos Paulista',26),(3379,'Cananéia',26),(3380,'Canas',26),(3381,'Cândido Mota',26),(3382,'Cândido Rodrigues',26),(3383,'Canitar',26),(3384,'Capão Bonito',26),(3385,'Capela do Alto',26),(3386,'Capivari',26),(3387,'Caraguatatuba',26),(3388,'Carapicuíba',26),(3389,'Cardoso',26),(3390,'Casa Branca',26),(3391,'Cássia dos Coqueiros',26),(3392,'Castilho',26),(3393,'Catanduva',26),(3394,'Catiguá',26),(3395,'Cedral',26),(3396,'Cerqueira César',26),(3397,'Cerquilho',26),(3398,'Cesário Lange',26),(3399,'Charqueada',26),(3400,'Chavantes',26),(3401,'Clementina',26),(3402,'Colina',26),(3403,'Colômbia',26),(3404,'Conchal',26),(3405,'Conchas',26),(3406,'Cordeirópolis',26),(3407,'Coroados',26),(3408,'Coronel Macedo',26),(3409,'Corumbataí',26),(3410,'Cosmópolis',26),(3411,'Cosmorama',26),(3412,'Cotia',26),(3413,'Cravinhos',26),(3414,'Cristais Paulista',26),(3415,'Cruzália',26),(3416,'Cruzeiro',26),(3417,'Cubatão',26),(3418,'Cunha',26),(3419,'Descalvado',26),(3420,'Diadema',26),(3421,'Dirce Reis',26),(3422,'Divinolândia',26),(3423,'Dobrada',26),(3424,'Dois Córregos',26),(3425,'Dolcinópolis',26),(3426,'Dourado',26),(3427,'Dracena',26),(3428,'Duartina',26),(3429,'Dumont',26),(3430,'Echaporã',26),(3431,'Eldorado',26),(3432,'Elias Fausto',26),(3433,'Elisiário',26),(3434,'Embaúba',26),(3435,'Embu',26),(3436,'Embu-Guaçu',26),(3437,'Emilianópolis',26),(3438,'Engenheiro Coelho',26),(3439,'Espírito Santo do Pinhal',26),(3440,'Espírito Santo do Turvo',26),(3441,'Estiva Gerbi',26),(3442,'Estrela do Norte',26),(3443,'Estrela d\'Oeste',26),(3444,'Euclides da Cunha Paulista',26),(3445,'Fartura',26),(3446,'Fernando Prestes',26),(3447,'Fernandópolis',26),(3448,'Fernão',26),(3449,'Ferraz de Vasconcelos',26),(3450,'Flora Rica',26),(3451,'Floreal',26),(3452,'Flórida Paulista',26),(3453,'Florínia',26),(3454,'Franca',26),(3455,'Francisco Morato',26),(3456,'Franco da Rocha',26),(3457,'Gabriel Monteiro',26),(3458,'Gália',26),(3459,'Garça',26),(3460,'Gastão Vidigal',26),(3461,'Gavião Peixoto',26),(3462,'General Salgado',26),(3463,'Getulina',26),(3464,'Glicério',26),(3465,'Guaiçara',26),(3466,'Guaimbê',26),(3467,'Guaíra',26),(3468,'Guapiaçu',26),(3469,'Guapiara',26),(3470,'Guará',26),(3471,'Guaraçaí',26),(3472,'Guaraci',26),(3473,'Guarani d\'Oeste',26),(3474,'Guarantã',26),(3475,'Guararapes',26),(3476,'Guararema',26),(3477,'Guaratinguetá',26),(3478,'Guareí',26),(3479,'Guariba',26),(3480,'Guarujá',26),(3481,'Guarulhos',26),(3482,'Guatapará',26),(3483,'Guzolândia',26),(3484,'Herculândia',26),(3485,'Holambra',26),(3486,'Hortolândia',26),(3487,'Iacanga',26),(3488,'Iacri',26),(3489,'Iaras',26),(3490,'Ibaté',26),(3491,'Ibirá',26),(3492,'Ibirarema',26),(3493,'Ibitinga',26),(3494,'Ibiúna',26),(3495,'Icém',26),(3496,'Iepê',26),(3497,'Igaraçu do Tietê',26),(3498,'Igarapava',26),(3499,'Igaratá',26),(3500,'Iguape',26),(3501,'Ilha Comprida',26),(3502,'Ilha Solteira',26),(3503,'Ilhabela',26),(3504,'Indaiatuba',26),(3505,'Indiana',26),(3506,'Indiaporã',26),(3507,'Inúbia Paulista',26),(3508,'Ipaussu',26),(3509,'Iperó',26),(3510,'Ipeúna',26),(3511,'Ipiguá',26),(3512,'Iporanga',26),(3513,'Ipuã',26),(3514,'Iracemápolis',26),(3515,'Irapuã',26),(3516,'Irapuru',26),(3517,'Itaberá',26),(3518,'Itaí',26),(3519,'Itajobi',26),(3520,'Itaju',26),(3521,'Itanhaém',26),(3522,'Itaóca',26),(3523,'Itapecerica da Serra',26),(3524,'Itapetininga',26),(3525,'Itapeva',26),(3526,'Itapevi',26),(3527,'Itapira',26),(3528,'Itapirapuã Paulista',26),(3529,'Itápolis',26),(3530,'Itaporanga',26),(3531,'Itapuí',26),(3532,'Itapura',26),(3533,'Itaquaquecetuba',26),(3534,'Itararé',26),(3535,'Itariri',26),(3536,'Itatiba',26),(3537,'Itatinga',26),(3538,'Itirapina',26),(3539,'Itirapuã',26),(3540,'Itobi',26),(3541,'Itu',26),(3542,'Itupeva',26),(3543,'Ituverava',26),(3544,'Jaborandi',26),(3545,'Jaboticabal',26),(3546,'Jacareí',26),(3547,'Jaci',26),(3548,'Jacupiranga',26),(3549,'Jaguariúna',26),(3550,'Jales',26),(3551,'Jambeiro',26),(3552,'Jandira',26),(3553,'Jardinópolis',26),(3554,'Jarinu',26),(3555,'Jaú',26),(3556,'Jeriquara',26),(3557,'Joanópolis',26),(3558,'João Ramalho',26),(3559,'José Bonifácio',26),(3560,'Júlio Mesquita',26),(3561,'Jumirim',26),(3562,'Jundiaí',26),(3563,'Junqueirópolis',26),(3564,'Juquiá',26),(3565,'Juquitiba',26),(3566,'Lagoinha',26),(3567,'Laranjal Paulista',26),(3568,'Lavínia',26),(3569,'Lavrinhas',26),(3570,'Leme',26),(3571,'Lençóis Paulista',26),(3572,'Limeira',26),(3573,'Lindóia',26),(3574,'Lins',26),(3575,'Lorena',26),(3576,'Lourdes',26),(3577,'Louveira',26),(3578,'Lucélia',26),(3579,'Lucianópolis',26),(3580,'Luís Antônio',26),(3581,'Luiziânia',26),(3582,'Lupércio',26),(3583,'Lutécia',26),(3584,'Macatuba',26),(3585,'Macaubal',26),(3586,'Macedônia',26),(3587,'Magda',26),(3588,'Mairinque',26),(3589,'Mairiporã',26),(3590,'Manduri',26),(3591,'Marabá Paulista',26),(3592,'Maracaí',26),(3593,'Marapoama',26),(3594,'Mariápolis',26),(3595,'Marília',26),(3596,'Marinópolis',26),(3597,'Martinópolis',26),(3598,'Matão',26),(3599,'Mauá',26),(3600,'Mendonça',26),(3601,'Meridiano',26),(3602,'Mesópolis',26),(3603,'Miguelópolis',26),(3604,'Mineiros do Tietê',26),(3605,'Mira Estrela',26),(3606,'Miracatu',26),(3607,'Mirandópolis',26),(3608,'Mirante do Paranapanema',26),(3609,'Mirassol',26),(3610,'Mirassolândia',26),(3611,'Mococa',26),(3612,'Mogi das Cruzes',26),(3613,'Mogi Guaçu',26),(3614,'Moji Mirim',26),(3615,'Mombuca',26),(3616,'Monções',26),(3617,'Mongaguá',26),(3618,'Monte Alegre do Sul',26),(3619,'Monte Alto',26),(3620,'Monte Aprazível',26),(3621,'Monte Azul Paulista',26),(3622,'Monte Castelo',26),(3623,'Monte Mor',26),(3624,'Monteiro Lobato',26),(3625,'Morro Agudo',26),(3626,'Morungaba',26),(3627,'Motuca',26),(3628,'Murutinga do Sul',26),(3629,'Nantes',26),(3630,'Narandiba',26),(3631,'Natividade da Serra',26),(3632,'Nazaré Paulista',26),(3633,'Neves Paulista',26),(3634,'Nhandeara',26),(3635,'Nipoã',26),(3636,'Nova Aliança',26),(3637,'Nova Campina',26),(3638,'Nova Canaã Paulista',26),(3639,'Nova Castilho',26),(3640,'Nova Europa',26),(3641,'Nova Granada',26),(3642,'Nova Guataporanga',26),(3643,'Nova Independência',26),(3644,'Nova Luzitânia',26),(3645,'Nova Odessa',26),(3646,'Novais',26),(3647,'Novo Horizonte',26),(3648,'Nuporanga',26),(3649,'Ocauçu',26),(3650,'Óleo',26),(3651,'Olímpia',26),(3652,'Onda Verde',26),(3653,'Oriente',26),(3654,'Orindiúva',26),(3655,'Orlândia',26),(3656,'Osasco',26),(3657,'Oscar Bressane',26),(3658,'Osvaldo Cruz',26),(3659,'Ourinhos',26),(3660,'Ouro Verde',26),(3661,'Ouroeste',26),(3662,'Pacaembu',26),(3663,'Palestina',26),(3664,'Palmares Paulista',26),(3665,'Palmeira d\'Oeste',26),(3666,'Palmital',26),(3667,'Panorama',26),(3668,'Paraguaçu Paulista',26),(3669,'Paraibuna',26),(3670,'Paraíso',26),(3671,'Paranapanema',26),(3672,'Paranapuã',26),(3673,'Parapuã',26),(3674,'Pardinho',26),(3675,'Pariquera-Açu',26),(3676,'Parisi',26),(3677,'Patrocínio Paulista',26),(3678,'Paulicéia',26),(3679,'Paulínia',26),(3680,'Paulistânia',26),(3681,'Paulo de Faria',26),(3682,'Pederneiras',26),(3683,'Pedra Bela',26),(3684,'Pedranópolis',26),(3685,'Pedregulho',26),(3686,'Pedreira',26),(3687,'Pedrinhas Paulista',26),(3688,'Pedro de Toledo',26),(3689,'Penápolis',26),(3690,'Pereira Barreto',26),(3691,'Pereiras',26),(3692,'Peruíbe',26),(3693,'Piacatu',26),(3694,'Piedade',26),(3695,'Pilar do Sul',26),(3696,'Pindamonhangaba',26),(3697,'Pindorama',26),(3698,'Pinhalzinho',26),(3699,'Piquerobi',26),(3700,'Piquete',26),(3701,'Piracaia',26),(3702,'Piracicaba',26),(3703,'Piraju',26),(3704,'Pirajuí',26),(3705,'Pirangi',26),(3706,'Pirapora do Bom Jesus',26),(3707,'Pirapozinho',26),(3708,'Pirassununga',26),(3709,'Piratininga',26),(3710,'Pitangueiras',26),(3711,'Planalto',26),(3712,'Platina',26),(3713,'Poá',26),(3714,'Poloni',26),(3715,'Pompéia',26),(3716,'Pongaí',26),(3717,'Pontal',26),(3718,'Pontalinda',26),(3719,'Pontes Gestal',26),(3720,'Populina',26),(3721,'Porangaba',26),(3722,'Porto Feliz',26),(3723,'Porto Ferreira',26),(3724,'Potim',26),(3725,'Potirendaba',26),(3726,'Pracinha',26),(3727,'Pradópolis',26),(3728,'Praia Grande',26),(3729,'Pratânia',26),(3730,'Presidente Alves',26),(3731,'Presidente Bernardes',26),(3732,'Presidente Epitácio',26),(3733,'Presidente Prudente',26),(3734,'Presidente Venceslau',26),(3735,'Promissão',26),(3736,'Quadra',26),(3737,'Quatá',26),(3738,'Queiroz',26),(3739,'Queluz',26),(3740,'Quintana',26),(3741,'Rafard',26),(3742,'Rancharia',26),(3743,'Redenção da Serra',26),(3744,'Regente Feijó',26),(3745,'Reginópolis',26),(3746,'Registro',26),(3747,'Restinga',26),(3748,'Ribeira',26),(3749,'Ribeirão Bonito',26),(3750,'Ribeirão Branco',26),(3751,'Ribeirão Corrente',26),(3752,'Ribeirão do Sul',26),(3753,'Ribeirão dos Índios',26),(3754,'Ribeirão Grande',26),(3755,'Ribeirão Pires',26),(3756,'Ribeirão Preto',26),(3757,'Rifaina',26),(3758,'Rincão',26),(3759,'Rinópolis',26),(3760,'Rio Claro',26),(3761,'Rio das Pedras',26),(3762,'Rio Grande da Serra',26),(3763,'Riolândia',26),(3764,'Riversul',26),(3765,'Rosana',26),(3766,'Roseira',26),(3767,'Rubiácea',26),(3768,'Rubinéia',26),(3769,'Sabino',26),(3770,'Sagres',26),(3771,'Sales',26),(3772,'Sales Oliveira',26),(3773,'Salesópolis',26),(3774,'Salmourão',26),(3775,'Saltinho',26),(3776,'Salto',26),(3777,'Salto de Pirapora',26),(3778,'Salto Grande',26),(3779,'Sandovalina',26),(3780,'Santa Adélia',26),(3781,'Santa Albertina',26),(3782,'Santa Bárbara d\'Oeste',26),(3783,'Santa Branca',26),(3784,'Santa Clara d\'Oeste',26),(3785,'Santa Cruz da Conceição',26),(3786,'Santa Cruz da Esperança',26),(3787,'Santa Cruz das Palmeiras',26),(3788,'Santa Cruz do Rio Pardo',26),(3789,'Santa Ernestina',26),(3790,'Santa Fé do Sul',26),(3791,'Santa Gertrudes',26),(3792,'Santa Isabel',26),(3793,'Santa Lúcia',26),(3794,'Santa Maria da Serra',26),(3795,'Santa Mercedes',26),(3796,'Santa Rita do Passa Quatro',26),(3797,'Santa Rita d\'Oeste',26),(3798,'Santa Rosa de Viterbo',26),(3799,'Santa Salete',26),(3800,'Santana da Ponte Pensa',26),(3801,'Santana de Parnaíba',26),(3802,'Santo Anastácio',26),(3803,'Santo André',26),(3804,'Santo Antônio da Alegria',26),(3805,'Santo Antônio de Posse',26),(3806,'Santo Antônio do Aracanguá',26),(3807,'Santo Antônio do Jardim',26),(3808,'Santo Antônio do Pinhal',26),(3809,'Santo Expedito',26),(3810,'Santópolis do Aguapeí',26),(3811,'Santos',26),(3812,'São Bento do Sapucaí',26),(3813,'São Bernardo do Campo',26),(3814,'São Caetano do Sul',26),(3815,'São Carlos',26),(3816,'São Francisco',26),(3817,'São João da Boa Vista',26),(3818,'São João das Duas Pontes',26),(3819,'São João de Iracema',26),(3820,'São João do Pau d\'Alho',26),(3821,'São Joaquim da Barra',26),(3822,'São José da Bela Vista',26),(3823,'São José do Barreiro',26),(3824,'São José do Rio Pardo',26),(3825,'São José do Rio Preto',26),(3826,'São José dos Campos',26),(3827,'São Lourenço da Serra',26),(3828,'São Luís do Paraitinga',26),(3829,'São Manuel',26),(3830,'São Miguel Arcanjo',26),(3831,'São Paulo',26),(3832,'São Pedro',26),(3833,'São Pedro do Turvo',26),(3834,'São Roque',26),(3835,'São Sebastião',26),(3836,'São Sebastião da Grama',26),(3837,'São Simão',26),(3838,'São Vicente',26),(3839,'Sarapuí',26),(3840,'Sarutaiá',26),(3841,'Sebastianópolis do Sul',26),(3842,'Serra Azul',26),(3843,'Serra Negra',26),(3844,'Serrana',26),(3845,'Sertãozinho',26),(3846,'Sete Barras',26),(3847,'Severínia',26),(3848,'Silveiras',26),(3849,'Socorro',26),(3850,'Sorocaba',26),(3851,'Sud Mennucci',26),(3852,'Sumaré',26),(3853,'Suzanápolis',26),(3854,'Suzano',26),(3855,'Tabapuã',26),(3856,'Tabatinga',26),(3857,'Taboão da Serra',26),(3858,'Taciba',26),(3859,'Taguaí',26),(3860,'Taiaçu',26),(3861,'Taiúva',26),(3862,'Tambaú',26),(3863,'Tanabi',26),(3864,'Tapiraí',26),(3865,'Tapiratiba',26),(3866,'Taquaral',26),(3867,'Taquaritinga',26),(3868,'Taquarituba',26),(3869,'Taquarivaí',26),(3870,'Tarabai',26),(3871,'Tarumã',26),(3872,'Tatuí',26),(3873,'Taubaté',26),(3874,'Tejupá',26),(3875,'Teodoro Sampaio',26),(3876,'Terra Roxa',26),(3877,'Tietê',26),(3878,'Timburi',26),(3879,'Torre de Pedra',26),(3880,'Torrinha',26),(3881,'Trabiju',26),(3882,'Tremembé',26),(3883,'Três Fronteiras',26),(3884,'Tuiuti',26),(3885,'Tupã',26),(3886,'Tupi Paulista',26),(3887,'Turiúba',26),(3888,'Turmalina',26),(3889,'Ubarana',26),(3890,'Ubatuba',26),(3891,'Ubirajara',26),(3892,'Uchoa',26),(3893,'União Paulista',26),(3894,'Urânia',26),(3895,'Uru',26),(3896,'Urupês',26),(3897,'Valentim Gentil',26),(3898,'Valinhos',26),(3899,'Valparaíso',26),(3900,'Vargem',26),(3901,'Vargem Grande do Sul',26),(3902,'Vargem Grande Paulista',26),(3903,'Várzea Paulista',26),(3904,'Vera Cruz',26),(3905,'Vinhedo',26),(3906,'Viradouro',26),(3907,'Vista Alegre do Alto',26),(3908,'Vitória Brasil',26),(3909,'Votorantim',26),(3910,'Votuporanga',26),(3911,'Zacarias',26),(3912,'Abatiá',18),(3913,'Adrianópolis',18),(3914,'Agudos do Sul',18),(3915,'Almirante Tamandaré',18),(3916,'Altamira do Paraná',18),(3917,'Alto Paraíso',18),(3918,'Alto Paraná',18),(3919,'Alto Piquiri',18),(3920,'Altônia',18),(3921,'Alvorada do Sul',18),(3922,'Amaporã',18),(3923,'Ampére',18),(3924,'Anahy',18),(3925,'Andirá',18),(3926,'Ângulo',18),(3927,'Antonina',18),(3928,'Antônio Olinto',18),(3929,'Apucarana',18),(3930,'Arapongas',18),(3931,'Arapoti',18),(3932,'Arapuã',18),(3933,'Araruna',18),(3934,'Araucária',18),(3935,'Ariranha do Ivaí',18),(3936,'Assaí',18),(3937,'Assis Chateaubriand',18),(3938,'Astorga',18),(3939,'Atalaia',18),(3940,'Balsa Nova',18),(3941,'Bandeirantes',18),(3942,'Barbosa Ferraz',18),(3943,'Barra do Jacaré',18),(3944,'Barracão',18),(3945,'Bela Vista da Caroba',18),(3946,'Bela Vista do Paraíso',18),(3947,'Bituruna',18),(3948,'Boa Esperança',18),(3949,'Boa Esperança do Iguaçu',18),(3950,'Boa Ventura de São Roque',18),(3951,'Boa Vista da Aparecida',18),(3952,'Bocaiúva do Sul',18),(3953,'Bom Jesus do Sul',18),(3954,'Bom Sucesso',18),(3955,'Bom Sucesso do Sul',18),(3956,'Borrazópolis',18),(3957,'Braganey',18),(3958,'Brasilândia do Sul',18),(3959,'Cafeara',18),(3960,'Cafelândia',18),(3961,'Cafezal do Sul',18),(3962,'Califórnia',18),(3963,'Cambará',18),(3964,'Cambé',18),(3965,'Cambira',18),(3966,'Campina da Lagoa',18),(3967,'Campina do Simão',18),(3968,'Campina Grande do Sul',18),(3969,'Campo Bonito',18),(3970,'Campo do Tenente',18),(3971,'Campo Largo',18),(3972,'Campo Magro',18),(3973,'Campo Mourão',18),(3974,'Cândido de Abreu',18),(3975,'Candói',18),(3976,'Cantagalo',18),(3977,'Capanema',18),(3978,'Capitão Leônidas Marques',18),(3979,'Carambeí',18),(3980,'Carlópolis',18),(3981,'Cascavel',18),(3982,'Castro',18),(3983,'Catanduvas',18),(3984,'Centenário do Sul',18),(3985,'Cerro Azul',18),(3986,'Céu Azul',18),(3987,'Chopinzinho',18),(3988,'Cianorte',18),(3989,'Cidade Gaúcha',18),(3990,'Clevelândia',18),(3991,'Colombo',18),(3992,'Colorado',18),(3993,'Congonhinhas',18),(3994,'Conselheiro Mairinck',18),(3995,'Contenda',18),(3996,'Corbélia',18),(3997,'Cornélio Procópio',18),(3998,'Coronel Domingos Soares',18),(3999,'Coronel Vivida',18),(4000,'Corumbataí do Sul',18),(4001,'Cruz Machado',18),(4002,'Cruzeiro do Iguaçu',18),(4003,'Cruzeiro do Oeste',18),(4004,'Cruzeiro do Sul',18),(4005,'Cruzmaltina',18),(4006,'Curitiba',18),(4007,'Curiúva',18),(4008,'Diamante do Norte',18),(4009,'Diamante do Sul',18),(4010,'Diamante D\'Oeste',18),(4011,'Dois Vizinhos',18),(4012,'Douradina',18),(4013,'Doutor Camargo',18),(4014,'Doutor Ulysses',18),(4015,'Enéas Marques',18),(4016,'Engenheiro Beltrão',18),(4017,'Entre Rios do Oeste',18),(4018,'Esperança Nova',18),(4019,'Espigão Alto do Iguaçu',18),(4020,'Farol',18),(4021,'Faxinal',18),(4022,'Fazenda Rio Grande',18),(4023,'Fênix',18),(4024,'Fernandes Pinheiro',18),(4025,'Figueira',18),(4026,'Flor da Serra do Sul',18),(4027,'Floraí',18),(4028,'Floresta',18),(4029,'Florestópolis',18),(4030,'Flórida',18),(4031,'Formosa do Oeste',18),(4032,'Foz do Iguaçu',18),(4033,'Foz do Jordão',18),(4034,'Francisco Alves',18),(4035,'Francisco Beltrão',18),(4036,'General Carneiro',18),(4037,'Godoy Moreira',18),(4038,'Goioerê',18),(4039,'Goioxim',18),(4040,'Grandes Rios',18),(4041,'Guaíra',18),(4042,'Guairaçá',18),(4043,'Guamiranga',18),(4044,'Guapirama',18),(4045,'Guaporema',18),(4046,'Guaraci',18),(4047,'Guaraniaçu',18),(4048,'Guarapuava',18),(4049,'Guaraqueçaba',18),(4050,'Guaratuba',18),(4051,'Honório Serpa',18),(4052,'Ibaiti',18),(4053,'Ibema',18),(4054,'Ibiporã',18),(4055,'Icaraíma',18),(4056,'Iguaraçu',18),(4057,'Iguatu',18),(4058,'Imbaú',18),(4059,'Imbituva',18),(4060,'Inácio Martins',18),(4061,'Inajá',18),(4062,'Indianópolis',18),(4063,'Ipiranga',18),(4064,'Iporã',18),(4065,'Iracema do Oeste',18),(4066,'Irati',18),(4067,'Iretama',18),(4068,'Itaguajé',18),(4069,'Itaipulândia',18),(4070,'Itambaracá',18),(4071,'Itambé',18),(4072,'Itapejara d\'Oeste',18),(4073,'Itaperuçu',18),(4074,'Itaúna do Sul',18),(4075,'Ivaí',18),(4076,'Ivaiporã',18),(4077,'Ivaté',18),(4078,'Ivatuba',18),(4079,'Jaboti',18),(4080,'Jacarezinho',18),(4081,'Jaguapitã',18),(4082,'Jaguariaíva',18),(4083,'Jandaia do Sul',18),(4084,'Janiópolis',18),(4085,'Japira',18),(4086,'Japurá',18),(4087,'Jardim Alegre',18),(4088,'Jardim Olinda',18),(4089,'Jataizinho',18),(4090,'Jesuítas',18),(4091,'Joaquim Távora',18),(4092,'Jundiaí do Sul',18),(4093,'Juranda',18),(4094,'Jussara',18),(4095,'Kaloré',18),(4096,'Lapa',18),(4097,'Laranjal',18),(4098,'Laranjeiras do Sul',18),(4099,'Leópolis',18),(4100,'Lidianópolis',18),(4101,'Lindoeste',18),(4102,'Loanda',18),(4103,'Lobato',18),(4104,'Londrina',18),(4105,'Luiziana',18),(4106,'Lunardelli',18),(4107,'Lupionópolis',18),(4108,'Mallet',18),(4109,'Mamborê',18),(4110,'Mandaguaçu',18),(4111,'Mandaguari',18),(4112,'Mandirituba',18),(4113,'Manfrinópolis',18),(4114,'Mangueirinha',18),(4115,'Manoel Ribas',18),(4116,'Marechal Cândido Rondon',18),(4117,'Maria Helena',18),(4118,'Marialva',18),(4119,'Marilândia do Sul',18),(4120,'Marilena',18),(4121,'Mariluz',18),(4122,'Maringá',18),(4123,'Mariópolis',18),(4124,'Maripá',18),(4125,'Marmeleiro',18),(4126,'Marquinho',18),(4127,'Marumbi',18),(4128,'Matelândia',18),(4129,'Matinhos',18),(4130,'Mato Rico',18),(4131,'Mauá da Serra',18),(4132,'Medianeira',18),(4133,'Mercedes',18),(4134,'Mirador',18),(4135,'Miraselva',18),(4136,'Missal',18),(4137,'Moreira Sales',18),(4138,'Morretes',18),(4139,'Munhoz de Melo',18),(4140,'Nossa Senhora das Graças',18),(4141,'Nova Aliança do Ivaí',18),(4142,'Nova América da Colina',18),(4143,'Nova Aurora',18),(4144,'Nova Cantu',18),(4145,'Nova Esperança',18),(4146,'Nova Esperança do Sudoeste',18),(4147,'Nova Fátima',18),(4148,'Nova Laranjeiras',18),(4149,'Nova Londrina',18),(4150,'Nova Olímpia',18),(4151,'Nova Prata do Iguaçu',18),(4152,'Nova Santa Bárbara',18),(4153,'Nova Santa Rosa',18),(4154,'Nova Tebas',18),(4155,'Novo Itacolomi',18),(4156,'Ortigueira',18),(4157,'Ourizona',18),(4158,'Ouro Verde do Oeste',18),(4159,'Paiçandu',18),(4160,'Palmas',18),(4161,'Palmeira',18),(4162,'Palmital',18),(4163,'Palotina',18),(4164,'Paraíso do Norte',18),(4165,'Paranacity',18),(4166,'Paranaguá',18),(4167,'Paranapoema',18),(4168,'Paranavaí',18),(4169,'Pato Bragado',18),(4170,'Pato Branco',18),(4171,'Paula Freitas',18),(4172,'Paulo Frontin',18),(4173,'Peabiru',18),(4174,'Perobal',18),(4175,'Pérola',18),(4176,'Pérola d\'Oeste',18),(4177,'Piên',18),(4178,'Pinhais',18),(4179,'Pinhal de São Bento',18),(4180,'Pinhalão',18),(4181,'Pinhão',18),(4182,'Piraí do Sul',18),(4183,'Piraquara',18),(4184,'Pitanga',18),(4185,'Pitangueiras',18),(4186,'Planaltina do Paraná',18),(4187,'Planalto',18),(4188,'Ponta Grossa',18),(4189,'Pontal do Paraná',18),(4190,'Porecatu',18),(4191,'Porto Amazonas',18),(4192,'Porto Barreiro',18),(4193,'Porto Rico',18),(4194,'Porto Vitória',18),(4195,'Prado Ferreira',18),(4196,'Pranchita',18),(4197,'Presidente Castelo Branco',18),(4198,'Primeiro de Maio',18),(4199,'Prudentópolis',18),(4200,'Quarto Centenário',18),(4201,'Quatiguá',18),(4202,'Quatro Barras',18),(4203,'Quatro Pontes',18),(4204,'Quedas do Iguaçu',18),(4205,'Querência do Norte',18),(4206,'Quinta do Sol',18),(4207,'Quitandinha',18),(4208,'Ramilândia',18),(4209,'Rancho Alegre',18),(4210,'Rancho Alegre D\'Oeste',18),(4211,'Realeza',18),(4212,'Rebouças',18),(4213,'Renascença',18),(4214,'Reserva',18),(4215,'Reserva do Iguaçu',18),(4216,'Ribeirão Claro',18),(4217,'Ribeirão do Pinhal',18),(4218,'Rio Azul',18),(4219,'Rio Bom',18),(4220,'Rio Bonito do Iguaçu',18),(4221,'Rio Branco do Ivaí',18),(4222,'Rio Branco do Sul',18),(4223,'Rio Negro',18),(4224,'Rolândia',18),(4225,'Roncador',18),(4226,'Rondon',18),(4227,'Rosário do Ivaí',18),(4228,'Sabáudia',18),(4229,'Salgado Filho',18),(4230,'Salto do Itararé',18),(4231,'Salto do Lontra',18),(4232,'Santa Amélia',18),(4233,'Santa Cecília do Pavão',18),(4234,'Santa Cruz de Monte Castelo',18),(4235,'Santa Fé',18),(4236,'Santa Helena',18),(4237,'Santa Inês',18),(4238,'Santa Isabel do Ivaí',18),(4239,'Santa Izabel do Oeste',18),(4240,'Santa Lúcia',18),(4241,'Santa Maria do Oeste',18),(4242,'Santa Mariana',18),(4243,'Santa Mônica',18),(4244,'Santa Tereza do Oeste',18),(4245,'Santa Terezinha de Itaipu',18),(4246,'Santana do Itararé',18),(4247,'Santo Antônio da Platina',18),(4248,'Santo Antônio do Caiuá',18),(4249,'Santo Antônio do Paraíso',18),(4250,'Santo Antônio do Sudoeste',18),(4251,'Santo Inácio',18),(4252,'São Carlos do Ivaí',18),(4253,'São Jerônimo da Serra',18),(4254,'São João',18),(4255,'São João do Caiuá',18),(4256,'São João do Ivaí',18),(4257,'São João do Triunfo',18),(4258,'São Jorge do Ivaí',18),(4259,'São Jorge do Patrocínio',18),(4260,'São Jorge d\'Oeste',18),(4261,'São José da Boa Vista',18),(4262,'São José das Palmeiras',18),(4263,'São José dos Pinhais',18),(4264,'São Manoel do Paraná',18),(4265,'São Mateus do Sul',18),(4266,'São Miguel do Iguaçu',18),(4267,'São Pedro do Iguaçu',18),(4268,'São Pedro do Ivaí',18),(4269,'São Pedro do Paraná',18),(4270,'São Sebastião da Amoreira',18),(4271,'São Tomé',18),(4272,'Sapopema',18),(4273,'Sarandi',18),(4274,'Saudade do Iguaçu',18),(4275,'Sengés',18),(4276,'Serranópolis do Iguaçu',18),(4277,'Sertaneja',18),(4278,'Sertanópolis',18),(4279,'Siqueira Campos',18),(4280,'Sulina',18),(4281,'Tamarana',18),(4282,'Tamboara',18),(4283,'Tapejara',18),(4284,'Tapira',18),(4285,'Teixeira Soares',18),(4286,'Telêmaco Borba',18),(4287,'Terra Boa',18),(4288,'Terra Rica',18),(4289,'Terra Roxa',18),(4290,'Tibagi',18),(4291,'Tijucas do Sul',18),(4292,'Toledo',18),(4293,'Tomazina',18),(4294,'Três Barras do Paraná',18),(4295,'Tunas do Paraná',18),(4296,'Tuneiras do Oeste',18),(4297,'Tupãssi',18),(4298,'Turvo',18),(4299,'Ubiratã',18),(4300,'Umuarama',18),(4301,'União da Vitória',18),(4302,'Uniflor',18),(4303,'Uraí',18),(4304,'Ventania',18),(4305,'Vera Cruz do Oeste',18),(4306,'Verê',18),(4307,'Virmond',18),(4308,'Vitorino',18),(4309,'Wenceslau Braz',18),(4310,'Xambrê',18),(4311,'Abdon Batista',24),(4312,'Abelardo Luz',24),(4313,'Agrolândia',24),(4314,'Agronômica',24),(4315,'Água Doce',24),(4316,'Águas de Chapecó',24),(4317,'Águas Frias',24),(4318,'Águas Mornas',24),(4319,'Alfredo Wagner',24),(4320,'Alto Bela Vista',24),(4321,'Anchieta',24),(4322,'Angelina',24),(4323,'Anita Garibaldi',24),(4324,'Anitápolis',24),(4325,'Antônio Carlos',24),(4326,'Apiúna',24),(4327,'Arabutã',24),(4328,'Araquari',24),(4329,'Araranguá',24),(4330,'Armazém',24),(4331,'Arroio Trinta',24),(4332,'Arvoredo',24),(4333,'Ascurra',24),(4334,'Atalanta',24),(4335,'Aurora',24),(4336,'Balneário Arroio do Silva',24),(4337,'Balneário Barra do Sul',24),(4338,'Balneário Camboriú',24),(4339,'Balneário Gaivota',24),(4340,'Balneário Piçarras',24),(4341,'Bandeirante',24),(4342,'Barra Bonita',24),(4343,'Barra Velha',24),(4344,'Bela Vista do Toldo',24),(4345,'Belmonte',24),(4346,'Benedito Novo',24),(4347,'Biguaçu',24),(4348,'Blumenau',24),(4349,'Bocaina do Sul',24),(4350,'Bom Jardim da Serra',24),(4351,'Bom Jesus',24),(4352,'Bom Jesus do Oeste',24),(4353,'Bom Retiro',24),(4354,'Bombinhas',24),(4355,'Botuverá',24),(4356,'Braço do Norte',24),(4357,'Braço do Trombudo',24),(4358,'Brunópolis',24),(4359,'Brusque',24),(4360,'Caçador',24),(4361,'Caibi',24),(4362,'Calmon',24),(4363,'Camboriú',24),(4364,'Campo Alegre',24),(4365,'Campo Belo do Sul',24),(4366,'Campo Erê',24),(4367,'Campos Novos',24),(4368,'Canelinha',24),(4369,'Canoinhas',24),(4370,'Capão Alto',24),(4371,'Capinzal',24),(4372,'Capivari de Baixo',24),(4373,'Catanduvas',24),(4374,'Caxambu do Sul',24),(4375,'Celso Ramos',24),(4376,'Cerro Negro',24),(4377,'Chapadão do Lageado',24),(4378,'Chapecó',24),(4379,'Cocal do Sul',24),(4380,'Concórdia',24),(4381,'Cordilheira Alta',24),(4382,'Coronel Freitas',24),(4383,'Coronel Martins',24),(4384,'Correia Pinto',24),(4385,'Corupá',24),(4386,'Criciúma',24),(4387,'Cunha Porã',24),(4388,'Cunhataí',24),(4389,'Curitibanos',24),(4390,'Descanso',24),(4391,'Dionísio Cerqueira',24),(4392,'Dona Emma',24),(4393,'Doutor Pedrinho',24),(4394,'Entre Rios',24),(4395,'Ermo',24),(4396,'Erval Velho',24),(4397,'Faxinal dos Guedes',24),(4398,'Flor do Sertão',24),(4399,'Florianópolis',24),(4400,'Formosa do Sul',24),(4401,'Forquilhinha',24),(4402,'Fraiburgo',24),(4403,'Frei Rogério',24),(4404,'Galvão',24),(4405,'Garopaba',24),(4406,'Garuva',24),(4407,'Gaspar',24),(4408,'Governador Celso Ramos',24),(4409,'Grão Pará',24),(4410,'Gravatal',24),(4411,'Guabiruba',24),(4412,'Guaraciaba',24),(4413,'Guaramirim',24),(4414,'Guarujá do Sul',24),(4415,'Guatambú',24),(4416,'Herval d\'Oeste',24),(4417,'Ibiam',24),(4418,'Ibicaré',24),(4419,'Ibirama',24),(4420,'Içara',24),(4421,'Ilhota',24),(4422,'Imaruí',24),(4423,'Imbituba',24),(4424,'Imbuia',24),(4425,'Indaial',24),(4426,'Iomerê',24),(4427,'Ipira',24),(4428,'Iporã do Oeste',24),(4429,'Ipuaçu',24),(4430,'Ipumirim',24),(4431,'Iraceminha',24),(4432,'Irani',24),(4433,'Irati',24),(4434,'Irineópolis',24),(4435,'Itá',24),(4436,'Itaiópolis',24),(4437,'Itajaí',24),(4438,'Itapema',24),(4439,'Itapiranga',24),(4440,'Itapoá',24),(4441,'Ituporanga',24),(4442,'Jaborá',24),(4443,'Jacinto Machado',24),(4444,'Jaguaruna',24),(4445,'Jaraguá do Sul',24),(4446,'Jardinópolis',24),(4447,'Joaçaba',24),(4448,'Joinville',24),(4449,'José Boiteux',24),(4450,'Jupiá',24),(4451,'Lacerdópolis',24),(4452,'Lages',24),(4453,'Laguna',24),(4454,'Lajeado Grande',24),(4455,'Laurentino',24),(4456,'Lauro Muller',24),(4457,'Lebon Régis',24),(4458,'Leoberto Leal',24),(4459,'Lindóia do Sul',24),(4460,'Lontras',24),(4461,'Luiz Alves',24),(4462,'Luzerna',24),(4463,'Macieira',24),(4464,'Mafra',24),(4465,'Major Gercino',24),(4466,'Major Vieira',24),(4467,'Maracajá',24),(4468,'Maravilha',24),(4469,'Marema',24),(4470,'Massaranduba',24),(4471,'Matos Costa',24),(4472,'Meleiro',24),(4473,'Mirim Doce',24),(4474,'Modelo',24),(4475,'Mondaí',24),(4476,'Monte Carlo',24),(4477,'Monte Castelo',24),(4478,'Morro da Fumaça',24),(4479,'Morro Grande',24),(4480,'Navegantes',24),(4481,'Nova Erechim',24),(4482,'Nova Itaberaba',24),(4483,'Nova Trento',24),(4484,'Nova Veneza',24),(4485,'Novo Horizonte',24),(4486,'Orleans',24),(4487,'Otacílio Costa',24),(4488,'Ouro',24),(4489,'Ouro Verde',24),(4490,'Paial',24),(4491,'Painel',24),(4492,'Palhoça',24),(4493,'Palma Sola',24),(4494,'Palmeira',24),(4495,'Palmitos',24),(4496,'Papanduva',24),(4497,'Paraíso',24),(4498,'Passo de Torres',24),(4499,'Passos Maia',24),(4500,'Paulo Lopes',24),(4501,'Pedras Grandes',24),(4502,'Penha',24),(4503,'Peritiba',24),(4504,'Petrolândia',24),(4505,'Pinhalzinho',24),(4506,'Pinheiro Preto',24),(4507,'Piratuba',24),(4508,'Planalto Alegre',24),(4509,'Pomerode',24),(4510,'Ponte Alta',24),(4511,'Ponte Alta do Norte',24),(4512,'Ponte Serrada',24),(4513,'Porto Belo',24),(4514,'Porto União',24),(4515,'Pouso Redondo',24),(4516,'Praia Grande',24),(4517,'Presidente Castello Branco',24),(4518,'Presidente Getúlio',24),(4519,'Presidente Nereu',24),(4520,'Princesa',24),(4521,'Quilombo',24),(4522,'Rancho Queimado',24),(4523,'Rio das Antas',24),(4524,'Rio do Campo',24),(4525,'Rio do Oeste',24),(4526,'Rio do Sul',24),(4527,'Rio dos Cedros',24),(4528,'Rio Fortuna',24),(4529,'Rio Negrinho',24),(4530,'Rio Rufino',24),(4531,'Riqueza',24),(4532,'Rodeio',24),(4533,'Romelândia',24),(4534,'Salete',24),(4535,'Saltinho',24),(4536,'Salto Veloso',24),(4537,'Sangão',24),(4538,'Santa Cecília',24),(4539,'Santa Helena',24),(4540,'Santa Rosa de Lima',24),(4541,'Santa Rosa do Sul',24),(4542,'Santa Terezinha',24),(4543,'Santa Terezinha do Progresso',24),(4544,'Santiago do Sul',24),(4545,'Santo Amaro da Imperatriz',24),(4546,'São Bento do Sul',24),(4547,'São Bernardino',24),(4548,'São Bonifácio',24),(4549,'São Carlos',24),(4550,'São Cristovão do Sul',24),(4551,'São Domingos',24),(4552,'São Francisco do Sul',24),(4553,'São João Batista',24),(4554,'São João do Itaperiú',24),(4555,'São João do Oeste',24),(4556,'São João do Sul',24),(4557,'São Joaquim',24),(4558,'São José',24),(4559,'São José do Cedro',24),(4560,'São José do Cerrito',24),(4561,'São Lourenço do Oeste',24),(4562,'São Ludgero',24),(4563,'São Martinho',24),(4564,'São Miguel da Boa Vista',24),(4565,'São Miguel do Oeste',24),(4566,'São Pedro de Alcântara',24),(4567,'Saudades',24),(4568,'Schroeder',24),(4569,'Seara',24),(4570,'Serra Alta',24),(4571,'Siderópolis',24),(4572,'Sombrio',24),(4573,'Sul Brasil',24),(4574,'Taió',24),(4575,'Tangará',24),(4576,'Tigrinhos',24),(4577,'Tijucas',24),(4578,'Timbé do Sul',24),(4579,'Timbó',24),(4580,'Timbó Grande',24),(4581,'Três Barras',24),(4582,'Treviso',24),(4583,'Treze de Maio',24),(4584,'Treze Tílias',24),(4585,'Trombudo Central',24),(4586,'Tubarão',24),(4587,'Tunápolis',24),(4588,'Turvo',24),(4589,'União do Oeste',24),(4590,'Urubici',24),(4591,'Urupema',24),(4592,'Urussanga',24),(4593,'Vargeão',24),(4594,'Vargem',24),(4595,'Vargem Bonita',24),(4596,'Vidal Ramos',24),(4597,'Videira',24),(4598,'Vitor Meireles',24),(4599,'Witmarsum',24),(4600,'Xanxerê',24),(4601,'Xavantina',24),(4602,'Xaxim',24),(4603,'Zortéa',24),(4604,'Aceguá',23),(4605,'Água Santa',23),(4606,'Agudo',23),(4607,'Ajuricaba',23),(4608,'Alecrim',23),(4609,'Alegrete',23),(4610,'Alegria',23),(4611,'Almirante Tamandaré do Sul',23),(4612,'Alpestre',23),(4613,'Alto Alegre',23),(4614,'Alto Feliz',23),(4615,'Alvorada',23),(4616,'Amaral Ferrador',23),(4617,'Ametista do Sul',23),(4618,'André da Rocha',23),(4619,'Anta Gorda',23),(4620,'Antônio Prado',23),(4621,'Arambaré',23),(4622,'Araricá',23),(4623,'Aratiba',23),(4624,'Arroio do Meio',23),(4625,'Arroio do Padre',23),(4626,'Arroio do Sal',23),(4627,'Arroio do Tigre',23),(4628,'Arroio dos Ratos',23),(4629,'Arroio Grande',23),(4630,'Arvorezinha',23),(4631,'Augusto Pestana',23),(4632,'Áurea',23),(4633,'Bagé',23),(4634,'Balneário Pinhal',23),(4635,'Barão',23),(4636,'Barão de Cotegipe',23),(4637,'Barão do Triunfo',23),(4638,'Barra do Guarita',23),(4639,'Barra do Quaraí',23),(4640,'Barra do Ribeiro',23),(4641,'Barra do Rio Azul',23),(4642,'Barra Funda',23),(4643,'Barracão',23),(4644,'Barros Cassal',23),(4645,'Benjamin Constant do Sul',23),(4646,'Bento Gonçalves',23),(4647,'Boa Vista das Missões',23),(4648,'Boa Vista do Buricá',23),(4649,'Boa Vista do Cadeado',23),(4650,'Boa Vista do Incra',23),(4651,'Boa Vista do Sul',23),(4652,'Bom Jesus',23),(4653,'Bom Princípio',23),(4654,'Bom Progresso',23),(4655,'Bom Retiro do Sul',23),(4656,'Boqueirão do Leão',23),(4657,'Bossoroca',23),(4658,'Bozano',23),(4659,'Braga',23),(4660,'Brochier',23),(4661,'Butiá',23),(4662,'Caçapava do Sul',23),(4663,'Cacequi',23),(4664,'Cachoeira do Sul',23),(4665,'Cachoeirinha',23),(4666,'Cacique Doble',23),(4667,'Caibaté',23),(4668,'Caiçara',23),(4669,'Camaquã',23),(4670,'Camargo',23),(4671,'Cambará do Sul',23),(4672,'Campestre da Serra',23),(4673,'Campina das Missões',23),(4674,'Campinas do Sul',23),(4675,'Campo Bom',23),(4676,'Campo Novo',23),(4677,'Campos Borges',23),(4678,'Candelária',23),(4679,'Cândido Godói',23),(4680,'Candiota',23),(4681,'Canela',23),(4682,'Canguçu',23),(4683,'Canoas',23),(4684,'Canudos do Vale',23),(4685,'Capão Bonito do Sul',23),(4686,'Capão da Canoa',23),(4687,'Capão do Cipó',23),(4688,'Capão do Leão',23),(4689,'Capela de Santana',23),(4690,'Capitão',23),(4691,'Capivari do Sul',23),(4692,'Caraá',23),(4693,'Carazinho',23),(4694,'Carlos Barbosa',23),(4695,'Carlos Gomes',23),(4696,'Casca',23),(4697,'Caseiros',23),(4698,'Catuípe',23),(4699,'Caxias do Sul',23),(4700,'Centenário',23),(4701,'Cerrito',23),(4702,'Cerro Branco',23),(4703,'Cerro Grande',23),(4704,'Cerro Grande do Sul',23),(4705,'Cerro Largo',23),(4706,'Chapada',23),(4707,'Charqueadas',23),(4708,'Charrua',23),(4709,'Chiapetta',23),(4710,'Chuí',23),(4711,'Chuvisca',23),(4712,'Cidreira',23),(4713,'Ciríaco',23),(4714,'Colinas',23),(4715,'Colorado',23),(4716,'Condor',23),(4717,'Constantina',23),(4718,'Coqueiro Baixo',23),(4719,'Coqueiros do Sul',23),(4720,'Coronel Barros',23),(4721,'Coronel Bicaco',23),(4722,'Coronel Pilar',23),(4723,'Cotiporã',23),(4724,'Coxilha',23),(4725,'Crissiumal',23),(4726,'Cristal',23),(4727,'Cristal do Sul',23),(4728,'Cruz Alta',23),(4729,'Cruzaltense',23),(4730,'Cruzeiro do Sul',23),(4731,'David Canabarro',23),(4732,'Derrubadas',23),(4733,'Dezesseis de Novembro',23),(4734,'Dilermando de Aguiar',23),(4735,'Dois Irmãos',23),(4736,'Dois Irmãos das Missões',23),(4737,'Dois Lajeados',23),(4738,'Dom Feliciano',23),(4739,'Dom Pedrito',23),(4740,'Dom Pedro de Alcântara',23),(4741,'Dona Francisca',23),(4742,'Doutor Maurício Cardoso',23),(4743,'Doutor Ricardo',23),(4744,'Eldorado do Sul',23),(4745,'Encantado',23),(4746,'Encruzilhada do Sul',23),(4747,'Engenho Velho',23),(4748,'Entre Rios do Sul',23),(4749,'Entre-Ijuís',23),(4750,'Erebango',23),(4751,'Erechim',23),(4752,'Ernestina',23),(4753,'Erval Grande',23),(4754,'Erval Seco',23),(4755,'Esmeralda',23),(4756,'Esperança do Sul',23),(4757,'Espumoso',23),(4758,'Estação',23),(4759,'Estância Velha',23),(4760,'Esteio',23),(4761,'Estrela',23),(4762,'Estrela Velha',23),(4763,'Eugênio de Castro',23),(4764,'Fagundes Varela',23),(4765,'Farroupilha',23),(4766,'Faxinal do Soturno',23),(4767,'Faxinalzinho',23),(4768,'Fazenda Vilanova',23),(4769,'Feliz',23),(4770,'Flores da Cunha',23),(4771,'Floriano Peixoto',23),(4772,'Fontoura Xavier',23),(4773,'Formigueiro',23),(4774,'Forquetinha',23),(4775,'Fortaleza dos Valos',23),(4776,'Frederico Westphalen',23),(4777,'Garibaldi',23),(4778,'Garruchos',23),(4779,'Gaurama',23),(4780,'General Câmara',23),(4781,'Gentil',23),(4782,'Getúlio Vargas',23),(4783,'Giruá',23),(4784,'Glorinha',23),(4785,'Gramado',23),(4786,'Gramado dos Loureiros',23),(4787,'Gramado Xavier',23),(4788,'Gravataí',23),(4789,'Guabiju',23),(4790,'Guaíba',23),(4791,'Guaporé',23),(4792,'Guarani das Missões',23),(4793,'Harmonia',23),(4794,'Herval',23),(4795,'Herveiras',23),(4796,'Horizontina',23),(4797,'Hulha Negra',23),(4798,'Humaitá',23),(4799,'Ibarama',23),(4800,'Ibiaçá',23),(4801,'Ibiraiaras',23),(4802,'Ibirapuitã',23),(4803,'Ibirubá',23),(4804,'Igrejinha',23),(4805,'Ijuí',23),(4806,'Ilópolis',23),(4807,'Imbé',23),(4808,'Imigrante',23),(4809,'Independência',23),(4810,'Inhacorá',23),(4811,'Ipê',23),(4812,'Ipiranga do Sul',23),(4813,'Iraí',23),(4814,'Itaara',23),(4815,'Itacurubi',23),(4816,'Itapuca',23),(4817,'Itaqui',23),(4818,'Itati',23),(4819,'Itatiba do Sul',23),(4820,'Ivorá',23),(4821,'Ivoti',23),(4822,'Jaboticaba',23),(4823,'Jacuizinho',23),(4824,'Jacutinga',23),(4825,'Jaguarão',23),(4826,'Jaguari',23),(4827,'Jaquirana',23),(4828,'Jari',23),(4829,'Jóia',23),(4830,'Júlio de Castilhos',23),(4831,'Lagoa Bonita do Sul',23),(4832,'Lagoa dos Três Cantos',23),(4833,'Lagoa Vermelha',23),(4834,'Lagoão',23),(4835,'Lajeado',23),(4836,'Lajeado do Bugre',23),(4837,'Lavras do Sul',23),(4838,'Liberato Salzano',23),(4839,'Lindolfo Collor',23),(4840,'Linha Nova',23),(4841,'Maçambará',23),(4842,'Machadinho',23),(4843,'Mampituba',23),(4844,'Manoel Viana',23),(4845,'Maquiné',23),(4846,'Maratá',23),(4847,'Marau',23),(4848,'Marcelino Ramos',23),(4849,'Mariana Pimentel',23),(4850,'Mariano Moro',23),(4851,'Marques de Souza',23),(4852,'Mata',23),(4853,'Mato Castelhano',23),(4854,'Mato Leitão',23),(4855,'Mato Queimado',23),(4856,'Maximiliano de Almeida',23),(4857,'Minas do Leão',23),(4858,'Miraguaí',23),(4859,'Montauri',23),(4860,'Monte Alegre dos Campos',23),(4861,'Monte Belo do Sul',23),(4862,'Montenegro',23),(4863,'Mormaço',23),(4864,'Morrinhos do Sul',23),(4865,'Morro Redondo',23),(4866,'Morro Reuter',23),(4867,'Mostardas',23),(4868,'Muçum',23),(4869,'Muitos Capões',23),(4870,'Muliterno',23),(4871,'Não-Me-Toque',23),(4872,'Nicolau Vergueiro',23),(4873,'Nonoai',23),(4874,'Nova Alvorada',23),(4875,'Nova Araçá',23),(4876,'Nova Bassano',23),(4877,'Nova Boa Vista',23),(4878,'Nova Bréscia',23),(4879,'Nova Candelária',23),(4880,'Nova Esperança do Sul',23),(4881,'Nova Hartz',23),(4882,'Nova Pádua',23),(4883,'Nova Palma',23),(4884,'Nova Petrópolis',23),(4885,'Nova Prata',23),(4886,'Nova Ramada',23),(4887,'Nova Roma do Sul',23),(4888,'Nova Santa Rita',23),(4889,'Novo Barreiro',23),(4890,'Novo Cabrais',23),(4891,'Novo Hamburgo',23),(4892,'Novo Machado',23),(4893,'Novo Tiradentes',23),(4894,'Novo Xingu',23),(4895,'Osório',23),(4896,'Paim Filho',23),(4897,'Palmares do Sul',23),(4898,'Palmeira das Missões',23),(4899,'Palmitinho',23),(4900,'Panambi',23),(4901,'Pantano Grande',23),(4902,'Paraí',23),(4903,'Paraíso do Sul',23),(4904,'Pareci Novo',23),(4905,'Parobé',23),(4906,'Passa Sete',23),(4907,'Passo do Sobrado',23),(4908,'Passo Fundo',23),(4909,'Paulo Bento',23),(4910,'Paverama',23),(4911,'Pedras Altas',23),(4912,'Pedro Osório',23),(4913,'Pejuçara',23),(4914,'Pelotas',23),(4915,'Picada Café',23),(4916,'Pinhal',23),(4917,'Pinhal da Serra',23),(4918,'Pinhal Grande',23),(4919,'Pinheirinho do Vale',23),(4920,'Pinheiro Machado',23),(4921,'Pirapó',23),(4922,'Piratini',23),(4923,'Planalto',23),(4924,'Poço das Antas',23),(4925,'Pontão',23),(4926,'Ponte Preta',23),(4927,'Portão',23),(4928,'Porto Alegre',23),(4929,'Porto Lucena',23),(4930,'Porto Mauá',23),(4931,'Porto Vera Cruz',23),(4932,'Porto Xavier',23),(4933,'Pouso Novo',23),(4934,'Presidente Lucena',23),(4935,'Progresso',23),(4936,'Protásio Alves',23),(4937,'Putinga',23),(4938,'Quaraí',23),(4939,'Quatro Irmãos',23),(4940,'Quevedos',23),(4941,'Quinze de Novembro',23),(4942,'Redentora',23),(4943,'Relvado',23),(4944,'Restinga Seca',23),(4945,'Rio dos Índios',23),(4946,'Rio Grande',23),(4947,'Rio Pardo',23),(4948,'Riozinho',23),(4949,'Roca Sales',23),(4950,'Rodeio Bonito',23),(4951,'Rolador',23),(4952,'Rolante',23),(4953,'Ronda Alta',23),(4954,'Rondinha',23),(4955,'Roque Gonzales',23),(4956,'Rosário do Sul',23),(4957,'Sagrada Família',23),(4958,'Saldanha Marinho',23),(4959,'Salto do Jacuí',23),(4960,'Salvador das Missões',23),(4961,'Salvador do Sul',23),(4962,'Sananduva',23),(4963,'Santa Bárbara do Sul',23),(4964,'Santa Cecília do Sul',23),(4965,'Santa Clara do Sul',23),(4966,'Santa Cruz do Sul',23),(4967,'Santa Margarida do Sul',23),(4968,'Santa Maria',23),(4969,'Santa Maria do Herval',23),(4970,'Santa Rosa',23),(4971,'Santa Tereza',23),(4972,'Santa Vitória do Palmar',23),(4973,'Santana da Boa Vista',23),(4974,'Sant\'Ana do Livramento',23),(4975,'Santiago',23),(4976,'Santo Ângelo',23),(4977,'Santo Antônio da Patrulha',23),(4978,'Santo Antônio das Missões',23),(4979,'Santo Antônio do Palma',23),(4980,'Santo Antônio do Planalto',23),(4981,'Santo Augusto',23),(4982,'Santo Cristo',23),(4983,'Santo Expedito do Sul',23),(4984,'São Borja',23),(4985,'São Domingos do Sul',23),(4986,'São Francisco de Assis',23),(4987,'São Francisco de Paula',23),(4988,'São Gabriel',23),(4989,'São Jerônimo',23),(4990,'São João da Urtiga',23),(4991,'São João do Polêsine',23),(4992,'São Jorge',23),(4993,'São José das Missões',23),(4994,'São José do Herval',23),(4995,'São José do Hortêncio',23),(4996,'São José do Inhacorá',23),(4997,'São José do Norte',23),(4998,'São José do Ouro',23),(4999,'São José do Sul',23),(5000,'São José dos Ausentes',23),(5001,'São Leopoldo',23),(5002,'São Lourenço do Sul',23),(5003,'São Luiz Gonzaga',23),(5004,'São Marcos',23),(5005,'São Martinho',23),(5006,'São Martinho da Serra',23),(5007,'São Miguel das Missões',23),(5008,'São Nicolau',23),(5009,'São Paulo das Missões',23),(5010,'São Pedro da Serra',23),(5011,'São Pedro das Missões',23),(5012,'São Pedro do Butiá',23),(5013,'São Pedro do Sul',23),(5014,'São Sebastião do Caí',23),(5015,'São Sepé',23),(5016,'São Valentim',23),(5017,'São Valentim do Sul',23),(5018,'São Valério do Sul',23),(5019,'São Vendelino',23),(5020,'São Vicente do Sul',23),(5021,'Sapiranga',23),(5022,'Sapucaia do Sul',23),(5023,'Sarandi',23),(5024,'Seberi',23),(5025,'Sede Nova',23),(5026,'Segredo',23),(5027,'Selbach',23),(5028,'Senador Salgado Filho',23),(5029,'Sentinela do Sul',23),(5030,'Serafina Corrêa',23),(5031,'Sério',23),(5032,'Sertão',23),(5033,'Sertão Santana',23),(5034,'Sete de Setembro',23),(5035,'Severiano de Almeida',23),(5036,'Silveira Martins',23),(5037,'Sinimbu',23),(5038,'Sobradinho',23),(5039,'Soledade',23),(5040,'Tabaí',23),(5041,'Tapejara',23),(5042,'Tapera',23),(5043,'Tapes',23),(5044,'Taquara',23),(5045,'Taquari',23),(5046,'Taquaruçu do Sul',23),(5047,'Tavares',23),(5048,'Tenente Portela',23),(5049,'Terra de Areia',23),(5050,'Teutônia',23),(5051,'Tio Hugo',23),(5052,'Tiradentes do Sul',23),(5053,'Toropi',23),(5054,'Torres',23),(5055,'Tramandaí',23),(5056,'Travesseiro',23),(5057,'Três Arroios',23),(5058,'Três Cachoeiras',23),(5059,'Três Coroas',23),(5060,'Três de Maio',23),(5061,'Três Forquilhas',23),(5062,'Três Palmeiras',23),(5063,'Três Passos',23),(5064,'Trindade do Sul',23),(5065,'Triunfo',23),(5066,'Tucunduva',23),(5067,'Tunas',23),(5068,'Tupanci do Sul',23),(5069,'Tupanciretã',23),(5070,'Tupandi',23),(5071,'Tuparendi',23),(5072,'Turuçu',23),(5073,'Ubiretama',23),(5074,'União da Serra',23),(5075,'Unistalda',23),(5076,'Uruguaiana',23),(5077,'Vacaria',23),(5078,'Vale do Sol',23),(5079,'Vale Real',23),(5080,'Vale Verde',23),(5081,'Vanini',23),(5082,'Venâncio Aires',23),(5083,'Vera Cruz',23),(5084,'Veranópolis',23),(5085,'Vespasiano Correa',23),(5086,'Viadutos',23),(5087,'Viamão',23),(5088,'Vicente Dutra',23),(5089,'Victor Graeff',23),(5090,'Vila Flores',23),(5091,'Vila Lângaro',23),(5092,'Vila Maria',23),(5093,'Vila Nova do Sul',23),(5094,'Vista Alegre',23),(5095,'Vista Alegre do Prata',23),(5096,'Vista Gaúcha',23),(5097,'Vitória das Missões',23),(5098,'Westfalia',23),(5099,'Xangri-lá',23),(5100,'Água Clara',12),(5101,'Alcinópolis',12),(5102,'Amambai',12),(5103,'Anastácio',12),(5104,'Anaurilândia',12),(5105,'Angélica',12),(5106,'Antônio João',12),(5107,'Aparecida do Taboado',12),(5108,'Aquidauana',12),(5109,'Aral Moreira',12),(5110,'Bandeirantes',12),(5111,'Bataguassu',12),(5112,'Batayporã',12),(5113,'Bela Vista',12),(5114,'Bodoquena',12),(5115,'Bonito',12),(5116,'Brasilândia',12),(5117,'Caarapó',12),(5118,'Camapuã',12),(5119,'Campo Grande',12),(5120,'Caracol',12),(5121,'Cassilândia',12),(5122,'Chapadão do Sul',12),(5123,'Corguinho',12),(5124,'Coronel Sapucaia',12),(5125,'Corumbá',12),(5126,'Costa Rica',12),(5127,'Coxim',12),(5128,'Deodápolis',12),(5129,'Dois Irmãos do Buriti',12),(5130,'Douradina',12),(5131,'Dourados',12),(5132,'Eldorado',12),(5133,'Fátima do Sul',12),(5134,'Figueirão',12),(5135,'Glória de Dourados',12),(5136,'Guia Lopes da Laguna',12),(5137,'Iguatemi',12),(5138,'Inocência',12),(5139,'Itaporã',12),(5140,'Itaquiraí',12),(5141,'Ivinhema',12),(5142,'Japorã',12),(5143,'Jaraguari',12),(5144,'Jardim',12),(5145,'Jateí',12),(5146,'Juti',12),(5147,'Ladário',12),(5148,'Laguna Carapã',12),(5149,'Maracaju',12),(5150,'Miranda',12),(5151,'Mundo Novo',12),(5152,'Naviraí',12),(5153,'Nioaque',12),(5154,'Nova Alvorada do Sul',12),(5155,'Nova Andradina',12),(5156,'Novo Horizonte do Sul',12),(5157,'Paranaíba',12),(5158,'Paranhos',12),(5159,'Pedro Gomes',12),(5160,'Ponta Porã',12),(5161,'Porto Murtinho',12),(5162,'Ribas do Rio Pardo',12),(5163,'Rio Brilhante',12),(5164,'Rio Negro',12),(5165,'Rio Verde de Mato Grosso',12),(5166,'Rochedo',12),(5167,'Santa Rita do Pardo',12),(5168,'São Gabriel do Oeste',12),(5169,'Selvíria',12),(5170,'Sete Quedas',12),(5171,'Sidrolândia',12),(5172,'Sonora',12),(5173,'Tacuru',12),(5174,'Taquarussu',12),(5175,'Terenos',12),(5176,'Três Lagoas',12),(5177,'Vicentina',12),(5178,'Acorizal',13),(5179,'Água Boa',13),(5180,'Alta Floresta',13),(5181,'Alto Araguaia',13),(5182,'Alto Boa Vista',13),(5183,'Alto Garças',13),(5184,'Alto Paraguai',13),(5185,'Alto Taquari',13),(5186,'Apiacás',13),(5187,'Araguaiana',13),(5188,'Araguainha',13),(5189,'Araputanga',13),(5190,'Arenápolis',13),(5191,'Aripuanã',13),(5192,'Barão de Melgaço',13),(5193,'Barra do Bugres',13),(5194,'Barra do Garças',13),(5195,'Bom Jesus do Araguaia',13),(5196,'Brasnorte',13),(5197,'Cáceres',13),(5198,'Campinápolis',13),(5199,'Campo Novo do Parecis',13),(5200,'Campo Verde',13),(5201,'Campos de Júlio',13),(5202,'Canabrava do Norte',13),(5203,'Canarana',13),(5204,'Carlinda',13),(5205,'Castanheira',13),(5206,'Chapada dos Guimarães',13),(5207,'Cláudia',13),(5208,'Cocalinho',13),(5209,'Colíder',13),(5210,'Colniza',13),(5211,'Comodoro',13),(5212,'Confresa',13),(5213,'Conquista D\'Oeste',13),(5214,'Cotriguaçu',13),(5215,'Cuiabá',13),(5216,'Curvelândia',13),(5217,'Denise',13),(5218,'Diamantino',13),(5219,'Dom Aquino',13),(5220,'Feliz Natal',13),(5221,'Figueirópolis D\'Oeste',13),(5222,'Gaúcha do Norte',13),(5223,'General Carneiro',13),(5224,'Glória D\'Oeste',13),(5225,'Guarantã do Norte',13),(5226,'Guiratinga',13),(5227,'Indiavaí',13),(5228,'Ipiranga do Norte',13),(5229,'Itanhangá',13),(5230,'Itaúba',13),(5231,'Itiquira',13),(5232,'Jaciara',13),(5233,'Jangada',13),(5234,'Jauru',13),(5235,'Juara',13),(5236,'Juína',13),(5237,'Juruena',13),(5238,'Juscimeira',13),(5239,'Lambari D\'Oeste',13),(5240,'Lucas do Rio Verde',13),(5241,'Luciara',13),(5242,'Marcelândia',13),(5243,'Matupá',13),(5244,'Mirassol d\'Oeste',13),(5245,'Nobres',13),(5246,'Nortelândia',13),(5247,'Nossa Senhora do Livramento',13),(5248,'Nova Bandeirantes',13),(5249,'Nova Brasilândia',13),(5250,'Nova Canaã do Norte',13),(5251,'Nova Guarita',13),(5252,'Nova Lacerda',13),(5253,'Nova Marilândia',13),(5254,'Nova Maringá',13),(5255,'Nova Monte Verde',13),(5256,'Nova Mutum',13),(5257,'Nova Nazaré',13),(5258,'Nova Olímpia',13),(5259,'Nova Santa Helena',13),(5260,'Nova Ubiratã',13),(5261,'Nova Xavantina',13),(5262,'Novo Horizonte do Norte',13),(5263,'Novo Mundo',13),(5264,'Novo Santo Antônio',13),(5265,'Novo São Joaquim',13),(5266,'Paranaíta',13),(5267,'Paranatinga',13),(5268,'Pedra Preta',13),(5269,'Peixoto de Azevedo',13),(5270,'Planalto da Serra',13),(5271,'Poconé',13),(5272,'Pontal do Araguaia',13),(5273,'Ponte Branca',13),(5274,'Pontes e Lacerda',13),(5275,'Porto Alegre do Norte',13),(5276,'Porto dos Gaúchos',13),(5277,'Porto Esperidião',13),(5278,'Porto Estrela',13),(5279,'Poxoréo',13),(5280,'Primavera do Leste',13),(5281,'Querência',13),(5282,'Reserva do Cabaçal',13),(5283,'Ribeirão Cascalheira',13),(5284,'Ribeirãozinho',13),(5285,'Rio Branco',13),(5286,'Rondolândia',13),(5287,'Rondonópolis',13),(5288,'Rosário Oeste',13),(5289,'Salto do Céu',13),(5290,'Santa Carmem',13),(5291,'Santa Cruz do Xingu',13),(5292,'Santa Rita do Trivelato',13),(5293,'Santa Terezinha',13),(5294,'Santo Afonso',13),(5295,'Santo Antônio do Leste',13),(5296,'Santo Antônio do Leverger',13),(5297,'São Félix do Araguaia',13),(5298,'São José do Povo',13),(5299,'São José do Rio Claro',13),(5300,'São José do Xingu',13),(5301,'São José dos Quatro Marcos',13),(5302,'São Pedro da Cipa',13),(5303,'Sapezal',13),(5304,'Serra Nova Dourada',13),(5305,'Sinop',13),(5306,'Sorriso',13),(5307,'Tabaporã',13),(5308,'Tangará da Serra',13),(5309,'Tapurah',13),(5310,'Terra Nova do Norte',13),(5311,'Tesouro',13),(5312,'Torixoréu',13),(5313,'União do Sul',13),(5314,'Vale de São Domingos',13),(5315,'Várzea Grande',13),(5316,'Vera',13),(5317,'Vila Bela da Santíssima Trindade',13),(5318,'Vila Rica',13),(5319,'Abadia de Goiás',9),(5320,'Abadiânia',9),(5321,'Acreúna',9),(5322,'Adelândia',9),(5323,'Água Fria de Goiás',9),(5324,'Água Limpa',9),(5325,'Águas Lindas de Goiás',9),(5326,'Alexânia',9),(5327,'Aloândia',9),(5328,'Alto Horizonte',9),(5329,'Alto Paraíso de Goiás',9),(5330,'Alvorada do Norte',9),(5331,'Amaralina',9),(5332,'Americano do Brasil',9),(5333,'Amorinópolis',9),(5334,'Anápolis',9),(5335,'Anhanguera',9),(5336,'Anicuns',9),(5337,'Aparecida de Goiânia',9),(5338,'Aparecida do Rio Doce',9),(5339,'Aporé',9),(5340,'Araçu',9),(5341,'Aragarças',9),(5342,'Aragoiânia',9),(5343,'Araguapaz',9),(5344,'Arenópolis',9),(5345,'Aruanã',9),(5346,'Aurilândia',9),(5347,'Avelinópolis',9),(5348,'Baliza',9),(5349,'Barro Alto',9),(5350,'Bela Vista de Goiás',9),(5351,'Bom Jardim de Goiás',9),(5352,'Bom Jesus de Goiás',9),(5353,'Bonfinópolis',9),(5354,'Bonópolis',9),(5355,'Brazabrantes',9),(5356,'Britânia',9),(5357,'Buriti Alegre',9),(5358,'Buriti de Goiás',9),(5359,'Buritinópolis',9),(5360,'Cabeceiras',9),(5361,'Cachoeira Alta',9),(5362,'Cachoeira de Goiás',9),(5363,'Cachoeira Dourada',9),(5364,'Caçu',9),(5365,'Caiapônia',9),(5366,'Caldas Novas',9),(5367,'Caldazinha',9),(5368,'Campestre de Goiás',9),(5369,'Campinaçu',9),(5370,'Campinorte',9),(5371,'Campo Alegre de Goiás',9),(5372,'Campo Limpo de Goiás',9),(5373,'Campos Belos',9),(5374,'Campos Verdes',9),(5375,'Carmo do Rio Verde',9),(5376,'Castelândia',9),(5377,'Catalão',9),(5378,'Caturaí',9),(5379,'Cavalcante',9),(5380,'Ceres',9),(5381,'Cezarina',9),(5382,'Chapadão do Céu',9),(5383,'Cidade Ocidental',9),(5384,'Cocalzinho de Goiás',9),(5385,'Colinas do Sul',9),(5386,'Córrego do Ouro',9),(5387,'Corumbá de Goiás',9),(5388,'Corumbaíba',9),(5389,'Cristalina',9),(5390,'Cristianópolis',9),(5391,'Crixás',9),(5392,'Cromínia',9),(5393,'Cumari',9),(5394,'Damianópolis',9),(5395,'Damolândia',9),(5396,'Davinópolis',9),(5397,'Diorama',9),(5398,'Divinópolis de Goiás',9),(5399,'Doverlândia',9),(5400,'Edealina',9),(5401,'Edéia',9),(5402,'Estrela do Norte',9),(5403,'Faina',9),(5404,'Fazenda Nova',9),(5405,'Firminópolis',9),(5406,'Flores de Goiás',9),(5407,'Formosa',9),(5408,'Formoso',9),(5409,'Gameleira de Goiás',9),(5410,'Goianápolis',9),(5411,'Goiandira',9),(5412,'Goianésia',9),(5413,'Goiânia',9),(5414,'Goianira',9),(5415,'Goiás',9),(5416,'Goiatuba',9),(5417,'Gouvelândia',9),(5418,'Guapó',9),(5419,'Guaraíta',9),(5420,'Guarani de Goiás',9),(5421,'Guarinos',9),(5422,'Heitoraí',9),(5423,'Hidrolândia',9),(5424,'Hidrolina',9),(5425,'Iaciara',9),(5426,'Inaciolândia',9),(5427,'Indiara',9),(5428,'Inhumas',9),(5429,'Ipameri',9),(5430,'Ipiranga de Goiás',9),(5431,'Iporá',9),(5432,'Israelândia',9),(5433,'Itaberaí',9),(5434,'Itaguari',9),(5435,'Itaguaru',9),(5436,'Itajá',9),(5437,'Itapaci',9),(5438,'Itapirapuã',9),(5439,'Itapuranga',9),(5440,'Itarumã',9),(5441,'Itauçu',9),(5442,'Itumbiara',9),(5443,'Ivolândia',9),(5444,'Jandaia',9),(5445,'Jaraguá',9),(5446,'Jataí',9),(5447,'Jaupaci',9),(5448,'Jesúpolis',9),(5449,'Joviânia',9),(5450,'Jussara',9),(5451,'Lagoa Santa',9),(5452,'Leopoldo de Bulhões',9),(5453,'Luziânia',9),(5454,'Mairipotaba',9),(5455,'Mambaí',9),(5456,'Mara Rosa',9),(5457,'Marzagão',9),(5458,'Matrinchã',9),(5459,'Maurilândia',9),(5460,'Mimoso de Goiás',9),(5461,'Minaçu',9),(5462,'Mineiros',9),(5463,'Moiporá',9),(5464,'Monte Alegre de Goiás',9),(5465,'Montes Claros de Goiás',9),(5466,'Montividiu',9),(5467,'Montividiu do Norte',9),(5468,'Morrinhos',9),(5469,'Morro Agudo de Goiás',9),(5470,'Mossâmedes',9),(5471,'Mozarlândia',9),(5472,'Mundo Novo',9),(5473,'Mutunópolis',9),(5474,'Nazário',9),(5475,'Nerópolis',9),(5476,'Niquelândia',9),(5477,'Nova América',9),(5478,'Nova Aurora',9),(5479,'Nova Crixás',9),(5480,'Nova Glória',9),(5481,'Nova Iguaçu de Goiás',9),(5482,'Nova Roma',9),(5483,'Nova Veneza',9),(5484,'Novo Brasil',9),(5485,'Novo Gama',9),(5486,'Novo Planalto',9),(5487,'Orizona',9),(5488,'Ouro Verde de Goiás',9),(5489,'Ouvidor',9),(5490,'Padre Bernardo',9),(5491,'Palestina de Goiás',9),(5492,'Palmeiras de Goiás',9),(5493,'Palmelo',9),(5494,'Palminópolis',9),(5495,'Panamá',9),(5496,'Paranaiguara',9),(5497,'Paraúna',9),(5498,'Perolândia',9),(5499,'Petrolina de Goiás',9),(5500,'Pilar de Goiás',9),(5501,'Piracanjuba',9),(5502,'Piranhas',9),(5503,'Pirenópolis',9),(5504,'Pires do Rio',9),(5505,'Planaltina',9),(5506,'Pontalina',9),(5507,'Porangatu',9),(5508,'Porteirão',9),(5509,'Portelândia',9),(5510,'Posse',9),(5511,'Professor Jamil',9),(5512,'Quirinópolis',9),(5513,'Rialma',9),(5514,'Rianápolis',9),(5515,'Rio Quente',9),(5516,'Rio Verde',9),(5517,'Rubiataba',9),(5518,'Sanclerlândia',9),(5519,'Santa Bárbara de Goiás',9),(5520,'Santa Cruz de Goiás',9),(5521,'Santa Fé de Goiás',9),(5522,'Santa Helena de Goiás',9),(5523,'Santa Isabel',9),(5524,'Santa Rita do Araguaia',9),(5525,'Santa Rita do Novo Destino',9),(5526,'Santa Rosa de Goiás',9),(5527,'Santa Tereza de Goiás',9),(5528,'Santa Terezinha de Goiás',9),(5529,'Santo Antônio da Barra',9),(5530,'Santo Antônio de Goiás',9),(5531,'Santo Antônio do Descoberto',9),(5532,'São Domingos',9),(5533,'São Francisco de Goiás',9),(5534,'São João da Paraúna',9),(5535,'São João d\'Aliança',9),(5536,'São Luís de Montes Belos',9),(5537,'São Luíz do Norte',9),(5538,'São Miguel do Araguaia',9),(5539,'São Miguel do Passa Quatro',9),(5540,'São Patrício',9),(5541,'São Simão',9),(5542,'Senador Canedo',9),(5543,'Serranópolis',9),(5544,'Silvânia',9),(5545,'Simolândia',9),(5546,'Sítio d\'Abadia',9),(5547,'Taquaral de Goiás',9),(5548,'Teresina de Goiás',9),(5549,'Terezópolis de Goiás',9),(5550,'Três Ranchos',9),(5551,'Trindade',9),(5552,'Trombas',9),(5553,'Turvânia',9),(5554,'Turvelândia',9),(5555,'Uirapuru',9),(5556,'Uruaçu',9),(5557,'Uruana',9),(5558,'Urutaí',9),(5559,'Valparaíso de Goiás',9),(5560,'Varjão',9),(5561,'Vianópolis',9),(5562,'Vicentinópolis',9),(5563,'Vila Boa',9),(5564,'Vila Propício',9),(5565,'Brasília',7);
/*!40000 ALTER TABLE `tblcidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcliente`
--

DROP TABLE IF EXISTS `tblcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcliente` (
  `codCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(60) DEFAULT NULL,
  `cpfCliente` varchar(14) DEFAULT NULL,
  `dtNascCliente` date DEFAULT NULL,
  `peso` decimal(9,2) DEFAULT NULL,
  `altura` decimal(9,2) DEFAULT NULL,
  `telefoneCliente` varchar(60) DEFAULT NULL,
  `celularCliente` varchar(20) DEFAULT NULL,
  `emailCliente` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcliente`
--

LOCK TABLES `tblcliente` WRITE;
/*!40000 ALTER TABLE `tblcliente` DISABLE KEYS */;
INSERT INTO `tblcliente` VALUES (1,'Julia Pereira ','437-137-648/75','1997-01-02',65.00,1.00,'11 3655-3419','11 4 8941-929','juliapcosta97@gmail.com','F');
/*!40000 ALTER TABLE `tblcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclienteend`
--

DROP TABLE IF EXISTS `tblclienteend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclienteend` (
  `codClienteEnd` int(11) NOT NULL AUTO_INCREMENT,
  `codEndereco` int(11) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`codClienteEnd`),
  KEY `codEndereco` (`codEndereco`),
  KEY `codCliente` (`codCliente`),
  CONSTRAINT `tblclienteend_ibfk_1` FOREIGN KEY (`codEndereco`) REFERENCES `tblendereco` (`codEndereco`),
  CONSTRAINT `tblclienteend_ibfk_2` FOREIGN KEY (`codCliente`) REFERENCES `tblcliente` (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclienteend`
--

LOCK TABLES `tblclienteend` WRITE;
/*!40000 ALTER TABLE `tblclienteend` DISABLE KEYS */;
INSERT INTO `tblclienteend` VALUES (1,6,1);
/*!40000 ALTER TABLE `tblclienteend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientejuridico`
--

DROP TABLE IF EXISTS `tblclientejuridico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientejuridico` (
  `codClienteJuridico` int(11) NOT NULL AUTO_INCREMENT,
  `nomeContato` varchar(60) DEFAULT NULL,
  `razaoSocial` varchar(60) DEFAULT NULL,
  `inscricaoEstadual` varchar(60) DEFAULT NULL,
  `telefonePrincipal` varchar(60) DEFAULT NULL,
  `telefoneContato` varchar(60) DEFAULT NULL,
  `emailPrincipal` varchar(60) DEFAULT NULL,
  `emailContato` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codClienteJuridico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientejuridico`
--

LOCK TABLES `tblclientejuridico` WRITE;
/*!40000 ALTER TABLE `tblclientejuridico` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientejuridico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclientejuridicoend`
--

DROP TABLE IF EXISTS `tblclientejuridicoend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclientejuridicoend` (
  `codClienteJuridicoEnd` int(11) NOT NULL AUTO_INCREMENT,
  `codEndereco` int(11) DEFAULT NULL,
  `codClienteJuridico` int(11) DEFAULT NULL,
  PRIMARY KEY (`codClienteJuridicoEnd`),
  KEY `codClienteJuridico` (`codClienteJuridico`),
  KEY `codEndereco` (`codEndereco`),
  CONSTRAINT `tblclientejuridicoend_ibfk_1` FOREIGN KEY (`codClienteJuridico`) REFERENCES `tblclientejuridico` (`codClienteJuridico`),
  CONSTRAINT `tblclientejuridicoend_ibfk_2` FOREIGN KEY (`codEndereco`) REFERENCES `tblendereco` (`codEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclientejuridicoend`
--

LOCK TABLES `tblclientejuridicoend` WRITE;
/*!40000 ALTER TABLE `tblclientejuridicoend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblclientejuridicoend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontato`
--

DROP TABLE IF EXISTS `tblcontato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontato` (
  `codContato` int(11) NOT NULL AUTO_INCREMENT,
  `telefoneContato1` varchar(20) DEFAULT NULL,
  `emailContato` varchar(100) DEFAULT NULL,
  `celularContato` varchar(20) DEFAULT NULL,
  `telefoneContato2` varchar(20) DEFAULT NULL,
  `codEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`codContato`),
  KEY `codEmpresa` (`codEmpresa`),
  CONSTRAINT `tblcontato_ibfk_1` FOREIGN KEY (`codEmpresa`) REFERENCES `tblempresa` (`codEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontato`
--

LOCK TABLES `tblcontato` WRITE;
/*!40000 ALTER TABLE `tblcontato` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldadosgps`
--

DROP TABLE IF EXISTS `tbldadosgps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldadosgps` (
  `codDadosGps` int(11) NOT NULL AUTO_INCREMENT,
  `codPedido` int(11) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codDadosGps`),
  KEY `codPedido` (`codPedido`),
  CONSTRAINT `tbldadosgps_ibfk_1` FOREIGN KEY (`codPedido`) REFERENCES `tblpedido` (`codPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldadosgps`
--

LOCK TABLES `tbldadosgps` WRITE;
/*!40000 ALTER TABLE `tbldadosgps` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldadosgps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldica`
--

DROP TABLE IF EXISTS `tbldica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldica` (
  `codDica` int(11) NOT NULL AUTO_INCREMENT,
  `imagemDica` varchar(200) DEFAULT NULL,
  `descricaoDica` text,
  `tituloDica` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codDica`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldica`
--

LOCK TABLES `tbldica` WRITE;
/*!40000 ALTER TABLE `tbldica` DISABLE KEYS */;
INSERT INTO `tbldica` VALUES (1,'conteudo/imagem/dica_alimentacao.jpg','Frutas, legumes e verduras. Elas são ricas em vitaminas, minerais e fibras. As vitaminas e minerais colaboram na manutenção e no bom funcionamento do organismo. E as fibras regulam o funcionamento intestinal, dão sensação de saciedade, e podem atuar prevenindo várias doenças.','Aumente e varie o consumo de frutas!');
/*!40000 ALTER TABLE `tbldica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblempresa`
--

DROP TABLE IF EXISTS `tblempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblempresa` (
  `codEmpresa` int(11) NOT NULL AUTO_INCREMENT,
  `cnpjEmpresa` varchar(14) DEFAULT NULL,
  `nomeEmpresa` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codEmpresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblempresa`
--

LOCK TABLES `tblempresa` WRITE;
/*!40000 ALTER TABLE `tblempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblempresaend`
--

DROP TABLE IF EXISTS `tblempresaend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblempresaend` (
  `codEmpresaEnd` int(11) NOT NULL AUTO_INCREMENT,
  `codEndereco` int(11) DEFAULT NULL,
  `codEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`codEmpresaEnd`),
  KEY `codEmpresa` (`codEmpresa`),
  KEY `codEndereco` (`codEndereco`),
  CONSTRAINT `tblempresaend_ibfk_1` FOREIGN KEY (`codEmpresa`) REFERENCES `tblempresa` (`codEmpresa`),
  CONSTRAINT `tblempresaend_ibfk_2` FOREIGN KEY (`codEndereco`) REFERENCES `tblendereco` (`codEndereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblempresaend`
--

LOCK TABLES `tblempresaend` WRITE;
/*!40000 ALTER TABLE `tblempresaend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblempresaend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblendereco`
--

DROP TABLE IF EXISTS `tblendereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblendereco` (
  `codEndereco` int(11) NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `numero` varchar(30) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `complemento` varchar(80) DEFAULT NULL,
  `codCidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`codEndereco`),
  KEY `codCidade` (`codCidade`),
  CONSTRAINT `tblendereco_ibfk_1` FOREIGN KEY (`codCidade`) REFERENCES `tblcidade` (`codCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblendereco`
--

LOCK TABLES `tblendereco` WRITE;
/*!40000 ALTER TABLE `tblendereco` DISABLE KEYS */;
INSERT INTO `tblendereco` VALUES (1,'Rua Transp 1','11111-111','1111','Pq Transp 1',NULL,3331),(2,'Rua Transp 2','22222-222','2222','Jd Transp 2',NULL,3656),(3,'Rua Transp 3','33333-333','3333','Jd Transp 3',NULL,3552),(4,'Rua Transp 4','44444-444','4444','Pq Transp 4',NULL,3526),(5,'Rua Transp 0','00000-000','0000','Pq Transp 0',NULL,3526),(6,'Rua Santa Josefina Bakhita','06160-209','34','Bandeiras','nenhum',85),(7,'Rodovia Raposo Tavares','06160209','1234','Granja Viana','Proximo ao shooping Granja Viana',3722),(8,'Rua Sao Bento','06160209','4552','Paisagem Colonial','nenhum',60),(9,'Rua Antonio Agu','064871224','1208','Centro','nenhum',70);
/*!40000 ALTER TABLE `tblendereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestado`
--

DROP TABLE IF EXISTS `tblestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestado` (
  `codEstado` int(11) NOT NULL AUTO_INCREMENT,
  `nomeEstado` varchar(60) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`codEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestado`
--

LOCK TABLES `tblestado` WRITE;
/*!40000 ALTER TABLE `tblestado` DISABLE KEYS */;
INSERT INTO `tblestado` VALUES (1,'Acre','AC'),(2,'Alagoas','AL'),(3,'Amazonas','AM'),(4,'Amapá','AP'),(5,'Bahia','BA'),(6,'Ceará','CE'),(7,'Distrito Federal','DF'),(8,'Espírito Santo','ES'),(9,'Goiás','GO'),(10,'Maranhão','MA'),(11,'Minas Gerais','MG'),(12,'Mato Grosso do Sul','MS'),(13,'Mato Grosso','MT'),(14,'Pará','PA'),(15,'Paraíba','PB'),(16,'Pernambuco','PE'),(17,'Piauí','PI'),(18,'Paraná','PR'),(19,'Rio de Janeiro','RJ'),(20,'Rio Grande do Norte','RN'),(21,'Rondônia','RO'),(22,'Roraima','RR'),(23,'Rio Grande do Sul','RS'),(24,'Santa Catarina','SC'),(25,'Sergipe','SE'),(26,'São Paulo','SP'),(27,'Tocantins','TO');
/*!40000 ALTER TABLE `tblestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestoque`
--

DROP TABLE IF EXISTS `tblestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestoque` (
  `codEstoque` int(11) NOT NULL AUTO_INCREMENT,
  `codMateria` int(11) DEFAULT NULL,
  `dtFabricacao` date DEFAULT NULL,
  `dtValidade` date DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `quantidadeMinima` int(11) DEFAULT NULL,
  PRIMARY KEY (`codEstoque`),
  KEY `codMateria` (`codMateria`),
  CONSTRAINT `tblestoque_ibfk_1` FOREIGN KEY (`codMateria`) REFERENCES `tblmateriaprima` (`codMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestoque`
--

LOCK TABLES `tblestoque` WRITE;
/*!40000 ALTER TABLE `tblestoque` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblexercicio`
--

DROP TABLE IF EXISTS `tblexercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexercicio` (
  `codExercicio` int(11) NOT NULL AUTO_INCREMENT,
  `imagemExercicio` varchar(200) DEFAULT NULL,
  `tituloExercicio` varchar(60) DEFAULT NULL,
  `descricaoExercicio` text,
  PRIMARY KEY (`codExercicio`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexercicio`
--

LOCK TABLES `tblexercicio` WRITE;
/*!40000 ALTER TABLE `tblexercicio` DISABLE KEYS */;
INSERT INTO `tblexercicio` VALUES (1,'conteudo/imagem/dica_exercicios.jpg','Fracione o treino','Alguns estudos recentes vêm demonstrando que sessões de exercícios curtas e cumulativas durante o dia são tão benéficas quanto períodos longos e isolados de treino.');
/*!40000 ALTER TABLE `tblexercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblexercicioobjetivo`
--

DROP TABLE IF EXISTS `tblexercicioobjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexercicioobjetivo` (
  `codExercicioObjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `codExercicio` int(11) DEFAULT NULL,
  `codObjetivo` int(11) DEFAULT NULL,
  PRIMARY KEY (`codExercicioObjetivo`),
  KEY `codObjetivo` (`codObjetivo`),
  KEY `codExercicio` (`codExercicio`),
  CONSTRAINT `tblexercicioobjetivo_ibfk_1` FOREIGN KEY (`codObjetivo`) REFERENCES `tblobjetivo` (`codObjetivo`),
  CONSTRAINT `tblexercicioobjetivo_ibfk_2` FOREIGN KEY (`codExercicio`) REFERENCES `tblexercicio` (`codExercicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexercicioobjetivo`
--

LOCK TABLES `tblexercicioobjetivo` WRITE;
/*!40000 ALTER TABLE `tblexercicioobjetivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexercicioobjetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfaleconosco`
--

DROP TABLE IF EXISTS `tblfaleconosco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfaleconosco` (
  `codFaleConosco` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `sobrenome` varchar(60) DEFAULT NULL,
  `mensagem` text,
  `descricao` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codFaleConosco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfaleconosco`
--

LOCK TABLES `tblfaleconosco` WRITE;
/*!40000 ALTER TABLE `tblfaleconosco` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfaleconosco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfuncionarioloja`
--

DROP TABLE IF EXISTS `tblfuncionarioloja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfuncionarioloja` (
  `codFuncionarioLoja` int(11) NOT NULL AUTO_INCREMENT,
  `nomeFuncionarioLoja` varchar(60) DEFAULT NULL,
  `cpfFuncionarioLoja` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`codFuncionarioLoja`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfuncionarioloja`
--

LOCK TABLES `tblfuncionarioloja` WRITE;
/*!40000 ALTER TABLE `tblfuncionarioloja` DISABLE KEYS */;
INSERT INTO `tblfuncionarioloja` VALUES (1,'Amanda Barreto','123-456-789/10');
/*!40000 ALTER TABLE `tblfuncionarioloja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfuncionariotransp`
--

DROP TABLE IF EXISTS `tblfuncionariotransp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfuncionariotransp` (
  `codFuncionarioTransp` int(11) NOT NULL AUTO_INCREMENT,
  `nomeFuncionarioTransp` varchar(60) DEFAULT NULL,
  `cpfFuncionarioTransp` varchar(14) DEFAULT NULL,
  `cargo` varchar(60) DEFAULT NULL,
  `codTransportadora` int(11) DEFAULT NULL,
  PRIMARY KEY (`codFuncionarioTransp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfuncionariotransp`
--

LOCK TABLES `tblfuncionariotransp` WRITE;
/*!40000 ALTER TABLE `tblfuncionariotransp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfuncionariotransp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitempedido`
--

DROP TABLE IF EXISTS `tblitempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitempedido` (
  `codItemPedido` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) DEFAULT NULL,
  `codPedido` int(11) DEFAULT NULL,
  `codPrato` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codItemPedido`),
  KEY `codPedido` (`codPedido`),
  KEY `codPrato` (`codPrato`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblitempedido_ibfk_1` FOREIGN KEY (`codPedido`) REFERENCES `tblpedido` (`codPedido`),
  CONSTRAINT `tblitempedido_ibfk_2` FOREIGN KEY (`codPrato`) REFERENCES `tblprato` (`codPrato`),
  CONSTRAINT `tblitempedido_ibfk_3` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitempedido`
--

LOCK TABLES `tblitempedido` WRITE;
/*!40000 ALTER TABLE `tblitempedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmateriaprima`
--

DROP TABLE IF EXISTS `tblmateriaprima`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmateriaprima` (
  `codMateria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeMateria` varchar(60) DEFAULT NULL,
  `precoMateria` decimal(9,2) DEFAULT NULL,
  `descricaoMateria` text,
  PRIMARY KEY (`codMateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmateriaprima`
--

LOCK TABLES `tblmateriaprima` WRITE;
/*!40000 ALTER TABLE `tblmateriaprima` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmateriaprima` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblobjetivo`
--

DROP TABLE IF EXISTS `tblobjetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblobjetivo` (
  `codObjetivo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeObjetivo` varchar(660) DEFAULT NULL,
  `descricaoObjetivo` text,
  PRIMARY KEY (`codObjetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblobjetivo`
--

LOCK TABLES `tblobjetivo` WRITE;
/*!40000 ALTER TABLE `tblobjetivo` DISABLE KEYS */;
INSERT INTO `tblobjetivo` VALUES (1,'Emagrecimento','Perder Peso'),(2,'Força','Ter Força'),(3,'Resistência','Está cansado?'),(4,'Ganho de Massa','Ajuda a adquirir massa muscular');
/*!40000 ALTER TABLE `tblobjetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblobjetivocliente`
--

DROP TABLE IF EXISTS `tblobjetivocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblobjetivocliente` (
  `codObjetivoCliente` int(11) NOT NULL AUTO_INCREMENT,
  `codObjetivo` int(11) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`codObjetivoCliente`),
  KEY `codCliente` (`codCliente`),
  KEY `codObjetivo` (`codObjetivo`),
  CONSTRAINT `tblobjetivocliente_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `tblcliente` (`codCliente`),
  CONSTRAINT `tblobjetivocliente_ibfk_2` FOREIGN KEY (`codObjetivo`) REFERENCES `tblobjetivo` (`codObjetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblobjetivocliente`
--

LOCK TABLES `tblobjetivocliente` WRITE;
/*!40000 ALTER TABLE `tblobjetivocliente` DISABLE KEYS */;
INSERT INTO `tblobjetivocliente` VALUES (1,1,1);
/*!40000 ALTER TABLE `tblobjetivocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblparceiro`
--

DROP TABLE IF EXISTS `tblparceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblparceiro` (
  `codParceiro` int(11) NOT NULL AUTO_INCREMENT,
  `cnpjParceiro` varchar(14) DEFAULT NULL,
  `nomeParceiro` varchar(60) DEFAULT NULL,
  `imgParceiro` varchar(100) DEFAULT NULL,
  `siteParceiro` varchar(100) DEFAULT NULL,
  `telefoneParceiro` varchar(20) DEFAULT NULL,
  `codEndereco` int(11) DEFAULT NULL,
  `emailParceiro` varchar(100) DEFAULT NULL,
  `imagemParceiro` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codParceiro`),
  KEY `codEndereco` (`codEndereco`),
  CONSTRAINT `tblparceiro_ibfk_1` FOREIGN KEY (`codEndereco`) REFERENCES `tblendereco` (`codEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblparceiro`
--

LOCK TABLES `tblparceiro` WRITE;
/*!40000 ALTER TABLE `tblparceiro` DISABLE KEYS */;
INSERT INTO `tblparceiro` VALUES (1,'123456789','Smart Fit',NULL,'http://www.smartfit.com.br/','11 3333-3333',7,'smartfit@gmail.com','conteudo/imagem/smartFit.jpg'),(2,'2222222222','Loja do Suplemento',NULL,'http://www.lojadosuplemento.com.br/','22 2222-2222',8,'lojadosuplemento@gmail.com','conteudo/imagem/suplemento.png'),(3,'34558781212','Clinica Melhor Saude',NULL,'http://www.clinicamelhorsaude.com.br/','12 3465-6799',9,'melhorsaude@gmail.com','conteudo/imagem/clinica.jpg');
/*!40000 ALTER TABLE `tblparceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpedido`
--

DROP TABLE IF EXISTS `tblpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpedido` (
  `codPedido` int(11) NOT NULL AUTO_INCREMENT,
  `tipoPedido` varchar(60) DEFAULT NULL,
  `dtEntrega` date DEFAULT NULL,
  `dtCompra` date DEFAULT NULL,
  `total` decimal(9,2) DEFAULT NULL,
  `codCliente` int(11) DEFAULT NULL,
  `codStatus` int(11) DEFAULT NULL,
  `codVeiculoTransp` int(11) DEFAULT NULL,
  PRIMARY KEY (`codPedido`),
  KEY `codCliente` (`codCliente`),
  KEY `codStatus` (`codStatus`),
  KEY `codVeiculoTransp` (`codVeiculoTransp`),
  CONSTRAINT `tblpedido_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `tblcliente` (`codCliente`),
  CONSTRAINT `tblpedido_ibfk_2` FOREIGN KEY (`codStatus`) REFERENCES `tblstatus` (`codStatus`),
  CONSTRAINT `tblpedido_ibfk_3` FOREIGN KEY (`codVeiculoTransp`) REFERENCES `tblveiculotransp` (`codVeiculoTransp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpedido`
--

LOCK TABLES `tblpedido` WRITE;
/*!40000 ALTER TABLE `tblpedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprato`
--

DROP TABLE IF EXISTS `tblprato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprato` (
  `codPrato` int(11) NOT NULL AUTO_INCREMENT,
  `nomePrato` varchar(100) DEFAULT NULL,
  `precoPrato` decimal(9,2) DEFAULT NULL,
  `descricaoPrato` text,
  `caloria` decimal(9,2) DEFAULT NULL,
  `valorEnergetico` decimal(9,2) DEFAULT NULL,
  `carboidrato` decimal(9,2) DEFAULT NULL,
  `proteina` decimal(9,2) DEFAULT NULL,
  `sodio` decimal(9,2) DEFAULT NULL,
  `gorduras` decimal(9,2) DEFAULT NULL,
  `imagemPrato` varchar(100) DEFAULT NULL,
  `visitas` int(11) DEFAULT NULL,
  PRIMARY KEY (`codPrato`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprato`
--

LOCK TABLES `tblprato` WRITE;
/*!40000 ALTER TABLE `tblprato` DISABLE KEYS */;
INSERT INTO `tblprato` VALUES (1,'Macarrão',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/macarrao.png',NULL),(2,'Frango com Batata Doce',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/frango.jpg',NULL),(3,'Lasanha',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/frango.jpg',NULL),(4,'Salmão Assada',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/frango.jpg',NULL),(5,'Camarão',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/frango.jpg',NULL),(6,'Frango Assada',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/frango.png',NULL),(7,'Carne de Panela',30.00,'O melhor da Culinária Italiana',10.00,10.00,10.00,10.00,10.00,10.00,'conteudo/imagem/carne_batata.jpg',NULL);
/*!40000 ALTER TABLE `tblprato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpratopromocao`
--

DROP TABLE IF EXISTS `tblpratopromocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpratopromocao` (
  `codPratoPromocao` int(11) NOT NULL AUTO_INCREMENT,
  `codPromocao` int(11) DEFAULT NULL,
  `codPrato` int(11) DEFAULT NULL,
  PRIMARY KEY (`codPratoPromocao`),
  KEY `codPromocao` (`codPromocao`),
  KEY `codPrato` (`codPrato`),
  CONSTRAINT `tblpratopromocao_ibfk_1` FOREIGN KEY (`codPromocao`) REFERENCES `tblpromocao` (`codPromocao`),
  CONSTRAINT `tblpratopromocao_ibfk_2` FOREIGN KEY (`codPrato`) REFERENCES `tblprato` (`codPrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpratopromocao`
--

LOCK TABLES `tblpratopromocao` WRITE;
/*!40000 ALTER TABLE `tblpratopromocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpratopromocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduto`
--

DROP TABLE IF EXISTS `tblproduto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproduto` (
  `codProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(60) DEFAULT NULL,
  `imagemProduto` varchar(100) DEFAULT NULL,
  `precoProduto` decimal(9,2) DEFAULT NULL,
  `descricaoProduto` text,
  `caloriaProduto` decimal(9,2) DEFAULT NULL,
  `valorEnergeticoProduto` decimal(9,2) DEFAULT NULL,
  `carboidratoProduto` decimal(9,2) DEFAULT NULL,
  `proteinaProduto` decimal(9,2) DEFAULT NULL,
  `sodioProduto` decimal(9,2) DEFAULT NULL,
  `gordurasProduto` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`codProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduto`
--

LOCK TABLES `tblproduto` WRITE;
/*!40000 ALTER TABLE `tblproduto` DISABLE KEYS */;
INSERT INTO `tblproduto` VALUES (1,'Frango Grelhado','conteudo/imagem/frango_grelhado.jpg',10.00,'Frango grelhado com o melhor tempero caseiro.',20.00,20.00,20.00,20.00,20.00,20.00),(2,'Doce Natural','conteudo/imagem/batata.jpg',10.00,'Batata Doce',20.00,20.00,20.00,20.00,20.00,20.00),(3,'Arroz Integral','conteudo/imagem/arroz.jpg',10.00,'Arroz Integral',20.00,20.00,20.00,20.00,20.00,20.00),(4,'Carne Assada','conteudo/imagem/carne.jpg',10.00,'Carne Assada',20.00,20.00,20.00,20.00,20.00,20.00),(5,'Lasanha ','conteudo/imagem/lasanha.jpg',10.00,'Lasanha',20.00,20.00,20.00,20.00,20.00,20.00),(6,'Feijão','conteudo/imagem/feijão.jpg',10.00,'Feijão',20.00,20.00,20.00,20.00,20.00,20.00),(7,'Salada','conteudo/imagem/salada.jpg',10.00,'Salada',20.00,20.00,20.00,20.00,20.00,20.00),(8,'Salmão Assada','conteudo/imagem/salmao.jpg',10.00,'Salmão Assada',20.00,20.00,20.00,20.00,20.00,20.00),(9,'Macarrão','conteudo/imagem/macarrao.jpg',10.00,'Macarrão',20.00,20.00,20.00,20.00,20.00,20.00),(10,'Suco Natural','conteudo/imagem/farofa.jpg',10.00,'Farofa',20.00,20.00,20.00,20.00,20.00,20.00);
/*!40000 ALTER TABLE `tblproduto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprodutomateria`
--

DROP TABLE IF EXISTS `tblprodutomateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprodutomateria` (
  `codProdutoMateria` int(11) NOT NULL AUTO_INCREMENT,
  `codProduto` int(11) DEFAULT NULL,
  `codMateria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codProdutoMateria`),
  KEY `codMateria` (`codMateria`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblprodutomateria_ibfk_1` FOREIGN KEY (`codMateria`) REFERENCES `tblmateriaprima` (`codMateria`),
  CONSTRAINT `tblprodutomateria_ibfk_2` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprodutomateria`
--

LOCK TABLES `tblprodutomateria` WRITE;
/*!40000 ALTER TABLE `tblprodutomateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprodutomateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprodutoprato`
--

DROP TABLE IF EXISTS `tblprodutoprato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprodutoprato` (
  `codProdutoPrato` int(11) NOT NULL AUTO_INCREMENT,
  `codPrato` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codProdutoPrato`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblprodutoprato_ibfk_1` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprodutoprato`
--

LOCK TABLES `tblprodutoprato` WRITE;
/*!40000 ALTER TABLE `tblprodutoprato` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprodutoprato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprodutopromocao`
--

DROP TABLE IF EXISTS `tblprodutopromocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprodutopromocao` (
  `codProdutoPromocao` int(11) NOT NULL AUTO_INCREMENT,
  `codPromocao` int(11) DEFAULT NULL,
  `codProduto` int(11) DEFAULT NULL,
  PRIMARY KEY (`codProdutoPromocao`),
  KEY `codPromocao` (`codPromocao`),
  KEY `codProduto` (`codProduto`),
  CONSTRAINT `tblprodutopromocao_ibfk_1` FOREIGN KEY (`codPromocao`) REFERENCES `tblpromocao` (`codPromocao`),
  CONSTRAINT `tblprodutopromocao_ibfk_2` FOREIGN KEY (`codProduto`) REFERENCES `tblproduto` (`codProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprodutopromocao`
--

LOCK TABLES `tblprodutopromocao` WRITE;
/*!40000 ALTER TABLE `tblprodutopromocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprodutopromocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpromocao`
--

DROP TABLE IF EXISTS `tblpromocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpromocao` (
  `codPromocao` int(11) NOT NULL AUTO_INCREMENT,
  `nomePromocao` varchar(60) DEFAULT NULL,
  `dtInicial` date DEFAULT NULL,
  `dtFinal` date DEFAULT NULL,
  `valorDesconto` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`codPromocao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpromocao`
--

LOCK TABLES `tblpromocao` WRITE;
/*!40000 ALTER TABLE `tblpromocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpromocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblslider`
--

DROP TABLE IF EXISTS `tblslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblslider` (
  `codSlider` int(11) NOT NULL AUTO_INCREMENT,
  `tituloSlider` varchar(60) DEFAULT NULL,
  `linkImagemSlider` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`codSlider`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblslider`
--

LOCK TABLES `tblslider` WRITE;
/*!40000 ALTER TABLE `tblslider` DISABLE KEYS */;
INSERT INTO `tblslider` VALUES (1,'Slide Prato','conteudo/imagem/slide1.png'),(2,'Slide Promoção','conteudo/imagem/slide2.png'),(3,'Slide Empresa','conteudo/imagem/slide3.png');
/*!40000 ALTER TABLE `tblslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsobreloja`
--

DROP TABLE IF EXISTS `tblsobreloja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsobreloja` (
  `codSobreLoja` int(11) NOT NULL AUTO_INCREMENT,
  `imgSobreLoja` varchar(100) DEFAULT NULL,
  `imgSobreLoja1` varchar(100) DEFAULT NULL,
  `imgSobreLoja2` varchar(100) DEFAULT NULL,
  `imgSobreLoja3` varchar(100) DEFAULT NULL,
  `tituloSobreLoja` varchar(100) DEFAULT NULL,
  `historiaSobreLoja` text,
  `codEmpresa` int(11) DEFAULT NULL,
  PRIMARY KEY (`codSobreLoja`),
  KEY `codEmpresa` (`codEmpresa`),
  CONSTRAINT `tblsobreloja_ibfk_1` FOREIGN KEY (`codEmpresa`) REFERENCES `tblempresa` (`codEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsobreloja`
--

LOCK TABLES `tblsobreloja` WRITE;
/*!40000 ALTER TABLE `tblsobreloja` DISABLE KEYS */;
INSERT INTO `tblsobreloja` VALUES (1,'','','','','Frozen Fitness Gourmet','Frozen Fitness Gourmet é uma empresa do ramo alimentício fitness, que comercializa diversos alimentos congelados, de acordo com a necessidade do cliente.\r\n',NULL);
/*!40000 ALTER TABLE `tblsobreloja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstatus`
--

DROP TABLE IF EXISTS `tblstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstatus` (
  `codStatus` int(11) NOT NULL AUTO_INCREMENT,
  `statusPedido` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstatus`
--

LOCK TABLES `tblstatus` WRITE;
/*!40000 ALTER TABLE `tblstatus` DISABLE KEYS */;
INSERT INTO `tblstatus` VALUES (1,'Aguardando Pagamento'),(2,'Aguardando Separação de Estoque'),(3,'Prato em Produção'),(4,'Enviado para a Transportadora'),(5,'Produto em Transporte'),(6,'Produto Entregue');
/*!40000 ALTER TABLE `tblstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipousuario`
--

DROP TABLE IF EXISTS `tbltipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltipousuario` (
  `codTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeTipoUsuario` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipousuario`
--

LOCK TABLES `tbltipousuario` WRITE;
/*!40000 ALTER TABLE `tbltipousuario` DISABLE KEYS */;
INSERT INTO `tbltipousuario` VALUES (1,'Administrador'),(2,'Cataloguista'),(3,'Marketing'),(4,'Operacional');
/*!40000 ALTER TABLE `tbltipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipoveiculo`
--

DROP TABLE IF EXISTS `tbltipoveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltipoveiculo` (
  `codTipoVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `nomeTipoVeiculo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`codTipoVeiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltipoveiculo`
--

LOCK TABLES `tbltipoveiculo` WRITE;
/*!40000 ALTER TABLE `tbltipoveiculo` DISABLE KEYS */;
INSERT INTO `tbltipoveiculo` VALUES (1,'Moto 1'),(2,'Van 1'),(3,'Caminhão 1'),(4,'Mini van 1'),(5,'Moto 2'),(6,'Van 2'),(7,'Caminhão 2'),(8,'Mini van 2'),(9,'Moto 3'),(10,'Van 3'),(11,'Caminhão 3'),(12,'Mini van 3'),(13,'Moto 4'),(14,'Van 4'),(15,'Caminhão 4'),(16,'Mini van 4');
/*!40000 ALTER TABLE `tbltipoveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltransportadora`
--

DROP TABLE IF EXISTS `tbltransportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltransportadora` (
  `codTransportadora` int(11) NOT NULL AUTO_INCREMENT,
  `razaoSocial` varchar(100) DEFAULT NULL,
  `nomeFantasia` varchar(100) DEFAULT NULL,
  `cnpjTransportadora` varchar(20) DEFAULT NULL,
  `telefonePrincipal` varchar(20) DEFAULT NULL,
  `telefoneContato` varchar(20) DEFAULT NULL,
  `emailPrincipal` varchar(100) DEFAULT NULL,
  `emailContato` varchar(100) DEFAULT NULL,
  `responsavelTransportadora` varchar(60) DEFAULT NULL,
  `codEndereco` int(11) DEFAULT NULL,
  PRIMARY KEY (`codTransportadora`),
  KEY `codEndereco` (`codEndereco`),
  CONSTRAINT `tbltransportadora_ibfk_1` FOREIGN KEY (`codEndereco`) REFERENCES `tblendereco` (`codEndereco`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltransportadora`
--

LOCK TABLES `tbltransportadora` WRITE;
/*!40000 ALTER TABLE `tbltransportadora` DISABLE KEYS */;
INSERT INTO `tbltransportadora` VALUES (1,'Transp 1','Transp um','11.111.111/1111-11','(11)1111-1111','(22)2222-2222','transp1@transp.com','transp_um@transp.com','Mohammed Med',1),(2,'Transp 2','Transp 2','22.222.222/2222-22','(33)3333-3333','(44)4444-4444','transp2@transp.com','transp_dois@transp.com','Evie Amelia',2),(3,'Transp 3','Transp 3','33.333.333/3333-33','(55)5555-5555','(66)6666-6666','transp3transp.com','transp_tres@transp.com','Thomas Joshua',3),(4,'Transp 4','Transp 4','44.444.444/4444-44','(77)7777-7777','(88)8888-8888','transp4transp.com','transp_quatro@transp.com','Ruby Sophie',4),(5,'Transp teste','Transp teste','00.000.000/0000-00','(00)0000-0000','(00)0000-0000','transp_teste@transp.com','transp_teste@transp.com','Teste Teste',5);
/*!40000 ALTER TABLE `tbltransportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuario` (
  `codUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `imagemUsuario` varchar(200) DEFAULT NULL,
  `codTipoUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codUsuario`),
  KEY `codTipoUsuario` (`codTipoUsuario`),
  CONSTRAINT `tblusuario_ibfk_1` FOREIGN KEY (`codTipoUsuario`) REFERENCES `tbltipousuario` (`codTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuario`
--

LOCK TABLES `tblusuario` WRITE;
/*!40000 ALTER TABLE `tblusuario` DISABLE KEYS */;
INSERT INTO `tblusuario` VALUES (1,'Julia','123',NULL,NULL),(2,'Amanda','123',NULL,1);
/*!40000 ALTER TABLE `tblusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuariocliente`
--

DROP TABLE IF EXISTS `tblusuariocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuariocliente` (
  `codUsuarioCliente` int(11) NOT NULL AUTO_INCREMENT,
  `codCliente` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codUsuarioCliente`),
  KEY `codCliente` (`codCliente`),
  KEY `codUsuario` (`codUsuario`),
  CONSTRAINT `tblusuariocliente_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `tblcliente` (`codCliente`),
  CONSTRAINT `tblusuariocliente_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `tblusuario` (`codUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuariocliente`
--

LOCK TABLES `tblusuariocliente` WRITE;
/*!40000 ALTER TABLE `tblusuariocliente` DISABLE KEYS */;
INSERT INTO `tblusuariocliente` VALUES (1,1,1);
/*!40000 ALTER TABLE `tblusuariocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuariofuncionarioloja`
--

DROP TABLE IF EXISTS `tblusuariofuncionarioloja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuariofuncionarioloja` (
  `codUsuarioFuncionarioLoja` int(11) NOT NULL AUTO_INCREMENT,
  `codFuncionarioLoja` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codUsuarioFuncionarioLoja`),
  KEY `codFuncionarioLoja` (`codFuncionarioLoja`),
  KEY `codUsuario` (`codUsuario`),
  CONSTRAINT `tblusuariofuncionarioloja_ibfk_1` FOREIGN KEY (`codFuncionarioLoja`) REFERENCES `tblfuncionarioloja` (`codFuncionarioLoja`),
  CONSTRAINT `tblusuariofuncionarioloja_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `tblusuario` (`codUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuariofuncionarioloja`
--

LOCK TABLES `tblusuariofuncionarioloja` WRITE;
/*!40000 ALTER TABLE `tblusuariofuncionarioloja` DISABLE KEYS */;
INSERT INTO `tblusuariofuncionarioloja` VALUES (1,1,2);
/*!40000 ALTER TABLE `tblusuariofuncionarioloja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusuarioveiculotransp`
--

DROP TABLE IF EXISTS `tblusuarioveiculotransp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblusuarioveiculotransp` (
  `codUsuarioVeiculoTransp` int(11) NOT NULL AUTO_INCREMENT,
  `codVeiculoTransp` int(11) DEFAULT NULL,
  `codUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`codUsuarioVeiculoTransp`),
  KEY `codVeiculoTransp` (`codVeiculoTransp`),
  KEY `codUsuario` (`codUsuario`),
  CONSTRAINT `tblusuarioveiculotransp_ibfk_1` FOREIGN KEY (`codVeiculoTransp`) REFERENCES `tblveiculotransp` (`codVeiculoTransp`),
  CONSTRAINT `tblusuarioveiculotransp_ibfk_2` FOREIGN KEY (`codUsuario`) REFERENCES `tblusuario` (`codUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusuarioveiculotransp`
--

LOCK TABLES `tblusuarioveiculotransp` WRITE;
/*!40000 ALTER TABLE `tblusuarioveiculotransp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblusuarioveiculotransp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblveiculotransp`
--

DROP TABLE IF EXISTS `tblveiculotransp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblveiculotransp` (
  `codVeiculoTransp` int(11) NOT NULL AUTO_INCREMENT,
  `placaVeiculo` varchar(8) DEFAULT NULL,
  `codTipoVeiculo` int(11) DEFAULT NULL,
  `codTransportadora` int(11) DEFAULT NULL,
  PRIMARY KEY (`codVeiculoTransp`),
  KEY `codTipoVeiculo` (`codTipoVeiculo`),
  KEY `codTransportadora` (`codTransportadora`),
  CONSTRAINT `tblveiculotransp_ibfk_1` FOREIGN KEY (`codTipoVeiculo`) REFERENCES `tbltipoveiculo` (`codTipoVeiculo`),
  CONSTRAINT `tblveiculotransp_ibfk_2` FOREIGN KEY (`codTransportadora`) REFERENCES `tbltransportadora` (`codTransportadora`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblveiculotransp`
--

LOCK TABLES `tblveiculotransp` WRITE;
/*!40000 ALTER TABLE `tblveiculotransp` DISABLE KEYS */;
INSERT INTO `tblveiculotransp` VALUES (1,'AAA-1111',1,1),(2,'BBB-2222',2,1),(3,'CCC-3333',3,1),(4,'DDD-4444',4,1),(5,'EEE-5555',5,2),(6,'FFF-6666',6,2),(7,'GGG-7777',7,2),(8,'HHH-8888',8,2),(9,'III-9999',9,3),(10,'JJJ-1010',10,3),(11,'KKK-1110',11,3),(12,'LLL-1112',12,3),(13,'MMM-1113',13,4),(14,'NNN-1114',14,4),(15,'OOO-1115',15,4),(16,'PPP-1116',16,4);
/*!40000 ALTER TABLE `tblveiculotransp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-04 10:44:42
