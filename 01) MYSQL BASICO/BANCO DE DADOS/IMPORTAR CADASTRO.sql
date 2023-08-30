-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01-Ago-2023 às 17:47
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_cursos` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totalaulas` int UNSIGNED DEFAULT NULL,
  `ano` year DEFAULT '2023',
  PRIMARY KEY (`id_cursos`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome`, `descricao`, `carga`, `totalaulas`, `ano`) VALUES
(1, 'HTML5', 'CURSO DE HTML', 40, 37, 2014),
(2, 'ALGORITMOS', 'LÓGICA DE PROGRAMAÇÃO', 20, 15, 2014),
(3, 'PHOTOSHOP', 'CURSO DE PHOTOSHOP', 10, 8, 2014),
(4, 'PHP', 'CURSO DE PHP', 40, 20, 2010),
(5, 'JAVA', 'CURSO DE JAVA', 10, 29, 2000),
(6, 'MYSQL', 'CURSO DE BANCO DE DADOS', 30, 15, 2016),
(7, 'WORD', 'CURSO DE WORD', 40, 30, 2016),
(8, 'SAPATEADO', 'CURSO BIZARRO', 40, 30, 2018),
(9, 'COZINHA ÁRABE', 'CURSO DE CULINÁRIA', 40, 30, 2018),
(10, 'YOUTUBER', 'CURSO OBSCURO', 5, 2, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'BRAZIL',
  `cursopreferido` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cursopreferido` (`cursopreferido`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`, `cursopreferido`) VALUES
(1, 'GOLDOFREDO', '1984-01-02', 'M', '78.50', '1.83', 'BRASIL', NULL),
(2, 'MARIA', '1999-12-30', 'F', '55.60', '1.65', 'PORTUGAL', NULL),
(3, 'CREUZA', '1920-12-30', 'F', '50.20', '1.65', 'BRAZIL', 4),
(4, 'LEANDRO', '1925-11-27', 'M', '67.40', '1.78', 'BRAZIL', 6),
(5, 'PEDRO', '1956-10-16', 'M', '67.90', '1.70', 'ITALIA', NULL),
(6, 'JOÃO', '1999-12-30', 'M', '90.80', '1.72', 'JAPÃO', NULL),
(7, 'MARCOS', '1998-06-25', 'M', '89.40', '1.68', 'VENEZUELA', 5),
(8, 'IVAN', '1992-04-14', 'M', '78.20', '1.70', 'PARAGUAI', 1),
(9, 'LUCAS', '1978-12-12', 'M', '89.90', '1.72', 'ITALIA', 3),
(10, 'ADALGIZA', '1930-11-02', 'F', '63.20', '1.75', 'IRLANA', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `gafanho_assiste_curso`
--

DROP TABLE IF EXISTS `gafanho_assiste_curso`;
CREATE TABLE IF NOT EXISTS `gafanho_assiste_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idgafanhoto` int DEFAULT NULL,
  `idcurso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idgafanhoto` (`idgafanhoto`),
  KEY `idcurso` (`idcurso`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf16;

--
-- Extraindo dados da tabela `gafanho_assiste_curso`
--

INSERT INTO `gafanho_assiste_curso` (`id`, `data`, `idgafanhoto`, `idcurso`) VALUES
(1, '2015-12-02', 3, 4),
(2, '2016-03-05', 8, 7),
(3, '2017-04-07', 2, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
