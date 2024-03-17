-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/03/2024 às 05:14
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `descricao` text DEFAULT NULL,
  `carga` int(10) UNSIGNED DEFAULT NULL,
  `totalaulas` int(10) UNSIGNED DEFAULT NULL,
  `ano` year(4) DEFAULT 2023
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome`, `descricao`, `carga`, `totalaulas`, `ano`) VALUES
(1, 'HTML5', 'CURSO DE HTML', 40, 37, '2014'),
(2, 'ALGORITMOS', 'LÓGICA DE PROGRAMAÇÃO', 20, 15, '2014'),
(3, 'PHOTOSHOP', 'CURSO DE PHOTOSHOP', 10, 8, '2014'),
(4, 'PHP', 'CURSO DE PHP', 40, 20, '2010'),
(5, 'JAVA', 'CURSO DE JAVA', 10, 29, '2000'),
(6, 'MYSQL', 'CURSO DE BANCO DE DADOS', 30, 15, '2016'),
(7, 'WORD', 'CURSO DE WORD', 40, 30, '2016'),
(8, 'SAPATEADO', 'CURSO BIZARRO', 40, 30, '2018'),
(9, 'COZINHA ÁRABE', 'CURSO DE CULINÁRIA', 40, 30, '2018'),
(10, 'YOUTUBER', 'CURSO OBSCURO', 5, 2, '2018');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

CREATE TABLE `gafanhotos` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'BRAZIL',
  `cursopreferido` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`, `cursopreferido`) VALUES
(1, 'GOLDOFREDO', '1984-01-02', 'M', 78.50, 1.83, 'BRASIL', NULL),
(2, 'MARIA', '1999-12-30', 'F', 55.60, 1.65, 'PORTUGAL', NULL),
(3, 'CREUZA', '1920-12-30', 'F', 50.20, 1.65, 'BRAZIL', 4),
(4, 'LEANDRO', '1925-11-27', 'M', 67.40, 1.78, 'BRAZIL', 6),
(5, 'PEDRO', '1956-10-16', 'M', 67.90, 1.70, 'ITALIA', NULL),
(6, 'JOÃO', '1999-12-30', 'M', 90.80, 1.72, 'JAPÃO', NULL),
(7, 'MARCOS', '1998-06-25', 'M', 89.40, 1.68, 'VENEZUELA', 5),
(8, 'IVAN', '1992-04-14', 'M', 78.20, 1.70, 'PARAGUAI', 1),
(9, 'LUCAS', '1978-12-12', 'M', 89.90, 1.72, 'ITALIA', 3),
(10, 'ADALGIZA', '1930-11-02', 'F', 63.20, 1.75, 'IRLANA', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanho_assiste_curso`
--

CREATE TABLE `gafanho_assiste_curso` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `idgafanhoto` int(11) DEFAULT NULL,
  `idcurso` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf16 COLLATE=utf16_general_ci;

--
-- Despejando dados para a tabela `gafanho_assiste_curso`
--

INSERT INTO `gafanho_assiste_curso` (`id`, `data`, `idgafanhoto`, `idcurso`) VALUES
(1, '2015-12-02', 3, 4),
(2, '2016-03-05', 8, 7),
(3, '2017-04-07', 2, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cursopreferido` (`cursopreferido`);

--
-- Índices de tabela `gafanho_assiste_curso`
--
ALTER TABLE `gafanho_assiste_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idgafanhoto` (`idgafanhoto`),
  ADD KEY `idcurso` (`idcurso`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gafanhotos`
--
ALTER TABLE `gafanhotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `gafanho_assiste_curso`
--
ALTER TABLE `gafanho_assiste_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
