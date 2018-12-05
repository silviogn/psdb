CREATE SCHEMA Vendas2;

USE Vendas2;


CREATE TABLE Pessoas (
  Id int(11) NOT NULL,
  Nome varchar(100) NOT NULL,
  DtNasc date DEFAULT NULL,
  Telefone varchar(45) DEFAULT NULL,
  Celular varchar(45) DEFAULT NULL,
  Email varchar(200) DEFAULT NULL,
  Endereco varchar(100) DEFAULT NULL,
  PRIMARY KEY (Id),
  KEY IDX_Pessoa_Nome (Nome)
);

CREATE TABLE Produtos (
  Id int(11) NOT NULL,
  Nome varchar(100) NOT NULL,
  Descricao varchar(1000) DEFAULT NULL,
  QtEstoque int(11) NOT NULL,
  Preco decimal(18,2) NOT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE Vendas (
  Id int(11) NOT NULL,
  Data date NOT NULL,
  Descricao varchar(100) DEFAULT NULL,
  Pessoas_Id int(11) NOT NULL,
  PRIMARY KEY (Id),
  KEY fk_Vendas_Pessoas_idx (Pessoas_Id),
  CONSTRAINT fk_Vendas_Pessoas FOREIGN KEY (Pessoas_Id) REFERENCES Pessoas (Id) ON DELETE NO ACTION ON UPDATE NO ACTION
);


CREATE TABLE Itens (
  Vendas_Id int(11) NOT NULL,
  Seq int(11) NOT NULL,
  Produtos_Id int(11) NOT NULL,
  Quantidade int(11) NOT NULL,
  Desconto decimal(18,2) NOT NULL,
  Preco decimal(18,2) NOT NULL,
  Valor decimal(18,2) NOT NULL,
  PRIMARY KEY (Vendas_Id,Seq),
  KEY fk_Itens_Produtos1_idx (Produtos_Id),
  CONSTRAINT fk_Itens_Produtos1 FOREIGN KEY (Produtos_Id) REFERENCES Produtos (Id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_Itens_Vendas1 FOREIGN KEY (Vendas_Id) REFERENCES Vendas (Id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `Pessoas` WRITE;
/*!40000 ALTER TABLE `Pessoas` DISABLE KEYS */;
INSERT INTO `Pessoas` VALUES (1,'João da Silva','0000-00-00','(5555) 3244-1556','(5551) 91876653','joao@loja.com','Duque de Caxias 3635'),(2,'Maria Figueroa','0000-00-00','(5555) 3241-1650',NULL,NULL,'Ladeira de Pedra 3455'),(3,'Roberto Cabral','0000-00-00','(5555) 3244-7573','(5551) 98786543','roberto@cabral.com',NULL),(4,'Miriam Cabrita Leitão ',NULL,'(5551) 3244-9087',NULL,NULL,'Vasco da Gama 25 AP 32');
/*!40000 ALTER TABLE `Pessoas` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `Produtos` WRITE;
/*!40000 ALTER TABLE `Produtos` DISABLE KEYS */;
INSERT INTO `Produtos` VALUES (1,'Coca Cola 2LT','Coca Cola  2 Litros',1000,3.50),(2,'Desodorante Spray Cashmere Bouquet ','Desodorante Spray Cashmere Bouquet ',500,10.00),(3,'Bolacha Rosca',NULL,40,2.50),(4,'Arroz Tio Zezé 1KG','Arroz Tio Zezé ',600,2.50);
/*!40000 ALTER TABLE `Produtos` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `Vendas` WRITE;
/*!40000 ALTER TABLE `Vendas` DISABLE KEYS */;
INSERT INTO `Vendas` VALUES (1,'2013-10-10',NULL,1),(2,'2013-10-10','Cliente reclamou do atendimento',1),(3,'2013-10-10',NULL,2),(4,'2014-10-10',NULL,2),(5,'2014-10-10',NULL,3),(6,'2014-10-10','Cliente reclamou ',4);
/*!40000 ALTER TABLE `Vendas` ENABLE KEYS */;
UNLOCK TABLES;


LOCK TABLES `Itens` WRITE;
/*!40000 ALTER TABLE `Itens` DISABLE KEYS */;
INSERT INTO `Itens` VALUES (1,1,1,20,0.00,3.50,70.00),(2,1,3,160,0.00,2.50,400.00),(2,2,2,50,0.00,10.00,500.00),(2,3,4,10,0.00,2.50,25.00),(3,1,1,10,0.00,3.50,35.00),(3,2,2,10,0.00,10.00,100.00),(4,1,4,100,0.00,2.50,250.00),(4,2,1,20,0.00,3.50,70.00),(5,1,3,100,0.00,2.50,250.00),(5,2,2,35,0.00,10.00,350.00),(6,1,4,20,0.00,2.50,50.00),(6,2,3,50,0.00,2.50,125.00);
/*!40000 ALTER TABLE `Itens` ENABLE KEYS */;
UNLOCK TABLES;
