CREATE DATABASE db_viagem;
USE db_viagem;
CREATE TABLE `viagens` (
  `idviagens` int NOT NULL auto_increment PRIMARY KEY,
  `nome_empresa` varchar(100) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `lote` int DEFAULT NULL,
  `telefone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `refeicao_incluso` varchar(10) DEFAULT NULL,
  `diaria` double DEFAULT NULL,
  `alimentacao` double DEFAULT NULL,
  `ft01` varchar(200) DEFAULT NULL,
  `ft02` varchar(200) DEFAULT NULL,
  `ft03` varchar(200) DEFAULT NULL,
  `ft04` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
