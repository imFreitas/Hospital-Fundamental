CREATE DATABASE  IF NOT EXISTS `hospital`
USE `hospital`;

-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `consultas`;

CREATE TABLE `consultas` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `data_consulta` date NOT NULL,
  `hora_consulta` int NOT NULL,
  `valor_consulta` float NOT NULL,
  `consulta_paciente` int NOT NULL,
  `medico_consulta` int NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `medico_consulta` (`medico_consulta`),
  KEY `consulta_paciente` (`consulta_paciente`),
  CONSTRAINT `consultas_ibfk_1` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_10` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_11` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_12` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_13` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_14` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_15` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_16` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_2` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_3` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_4` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_5` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_6` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_7` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `consultas_ibfk_8` FOREIGN KEY (`consulta_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `consultas_ibfk_9` FOREIGN KEY (`medico_consulta`) REFERENCES `medicos` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `consultas` WRITE;
UNLOCK TABLES;

DROP TABLE IF EXISTS `convenios`;

CREATE TABLE `convenios` (
  `id_convenio` int NOT NULL AUTO_INCREMENT,
  `nome_convenio` varchar(200) NOT NULL,
  `cnpj_convenio` int NOT NULL,
  `tempo_carencia` int NOT NULL,
  `convenio_paciente` int NOT NULL,
  PRIMARY KEY (`id_convenio`,`cnpj_convenio`),
  KEY `convenio_paciente` (`convenio_paciente`),
  CONSTRAINT `convenios_ibfk_1` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_2` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_3` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_4` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_5` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_6` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_7` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `convenios_ibfk_8` FOREIGN KEY (`convenio_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `convenios` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `enfermeiro`;

CREATE TABLE `enfermeiro` (
  `cpf_enfermeiro` int NOT NULL,
  `cre_enfermeiro` int NOT NULL,
  `id_enfermeiro` int NOT NULL AUTO_INCREMENT,
  `nome_enfermeiro` varchar(100) NOT NULL,
  `enfermeiro_paciente` int NOT NULL,
  PRIMARY KEY (`id_enfermeiro`,`cre_enfermeiro`,`cpf_enfermeiro`),
  KEY `enfermeiro_paciente` (`enfermeiro_paciente`),
  CONSTRAINT `enfermeiro_ibfk_1` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_2` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_3` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_4` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_5` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_6` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_7` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `enfermeiro_ibfk_8` FOREIGN KEY (`enfermeiro_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `enfermeiro` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `internaçao`;

CREATE TABLE `internaçao` (
  `id_internacao` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(100) NOT NULL,
  `data_efetivada` date NOT NULL,
  `data_entrada` date NOT NULL,
  `data_alta` date NOT NULL,
  `procedimento` varchar(100) NOT NULL,
  `quarto_internação` int NOT NULL,
  `enfermeiro_internaçao` int NOT NULL,
  `internaçao_paciente` int NOT NULL,
  PRIMARY KEY (`id_internacao`),
  KEY `internaçao_paciente` (`internaçao_paciente`),
  CONSTRAINT `internaçao_ibfk_1` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_2` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_3` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_4` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_5` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_6` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_7` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `internaçao_ibfk_8` FOREIGN KEY (`internaçao_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `internaçao` WRITE;

UNLOCK TABLES;



DROP TABLE IF EXISTS `medicos`;

CREATE TABLE `medicos` (
  `id_medico` int NOT NULL AUTO_INCREMENT,
  `nome_medico` varchar(200) NOT NULL,
  `crm_medico` int NOT NULL,
  `tipo_medico` varchar(200) NOT NULL,
  `receita_medico` int NOT NULL,
  `especialidade_medico` varchar(200) NOT NULL,
  `consulta_medico` int NOT NULL,
  PRIMARY KEY (`id_medico`,`crm_medico`,`consulta_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


LOCK TABLES `medicos` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `pacientes`;

CREATE TABLE `pacientes` (
  `id_paciente` int NOT NULL AUTO_INCREMENT,
  `nome_paciente` varchar(200) NOT NULL,
  `endereço_paciente` varchar(200) NOT NULL,
  `datanascimento_paciente` date NOT NULL,
  `cpf_paciente` int NOT NULL,
  `email_paciente` varchar(200) NOT NULL,
  `consulta_paciente` int NOT NULL,
  `receita_paciente` int NOT NULL,
  `conevenio_paciente` int NOT NULL,
  `quarto_paciente` int NOT NULL,
  `internaçao_paciente` int NOT NULL,
  `enfermeiro_paciente` int NOT NULL,
  PRIMARY KEY (`id_paciente`,`cpf_paciente`,`consulta_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



LOCK TABLES `pacientes` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `quarto`;

CREATE TABLE `quarto` (
  `id_quarto` int NOT NULL AUTO_INCREMENT,
  `numero_quarto` int NOT NULL,
  `tipo_quarto` varchar(100) NOT NULL,
  `quarto_paciente` int NOT NULL,
  PRIMARY KEY (`id_quarto`,`numero_quarto`),
  KEY `quarto_paciente` (`quarto_paciente`),
  CONSTRAINT `quarto_ibfk_1` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_2` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_3` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_4` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_5` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_6` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_7` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `quarto_ibfk_8` FOREIGN KEY (`quarto_paciente`) REFERENCES `pacientes` (`id_paciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `quarto` WRITE;

UNLOCK TABLES;


DROP TABLE IF EXISTS `receitas`;

CREATE TABLE `receitas` (
  `id_receita` int NOT NULL AUTO_INCREMENT,
  `nome_remedio` varchar(200) NOT NULL,
  `quantidade_remedio` int NOT NULL,
  `hora_remedio` int NOT NULL,
  `tipo_remedio` varchar(200) NOT NULL,
  `medico_receitas` int NOT NULL,
  `receita_paciente` int NOT NULL,
  PRIMARY KEY (`id_receita`),
  KEY `medico_receitas` (`medico_receitas`),
  KEY `receita_paciente` (`receita_paciente`),
  CONSTRAINT `receitas_ibfk_1` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_10` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_11` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_12` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_13` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_14` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_15` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_16` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_2` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_3` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_4` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_5` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_6` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_7` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`),
  CONSTRAINT `receitas_ibfk_8` FOREIGN KEY (`receita_paciente`) REFERENCES `pacientes` (`id_paciente`),
  CONSTRAINT `receitas_ibfk_9` FOREIGN KEY (`medico_receitas`) REFERENCES `medicos` (`id_medico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `receitas` WRITE;

UNLOCK TABLES;

DROP TABLE IF EXISTS `tipoquarto`;

CREATE TABLE `tipoquarto` (
  `valor_quarto` float NOT NULL,
  `id_tipoquarto` int NOT NULL AUTO_INCREMENT,
  `descrição_quarto` varchar(100) NOT NULL,
  `tipo_quarto` int NOT NULL,
  PRIMARY KEY (`id_tipoquarto`),
  KEY `tipo_quarto` (`tipo_quarto`),
  CONSTRAINT `tipoquarto_ibfk_1` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_2` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_3` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_4` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_5` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_6` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_7` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`),
  CONSTRAINT `tipoquarto_ibfk_8` FOREIGN KEY (`tipo_quarto`) REFERENCES `quarto` (`id_quarto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump completed on 2022-12-07 16:31:43