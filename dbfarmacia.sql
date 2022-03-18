-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 18-Mar-2022 às 17:45
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbfarmacia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `idcli` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `fone` varchar(15) NOT NULL,
  PRIMARY KEY (`idcli`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idcli`, `nome`, `fone`) VALUES
(2, 'Pedro Vasquez', '99999-1111'),
(3, 'Caio Prado', '99999-3333'),
(4, 'Lucas Ramos', '99999-2222'),
(5, 'Matheus Pereira', '4551862');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `login`, `senha`) VALUES
(1, 'Matheus', 'matheus', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'Matheus Barrocal da Silva', 'matb', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Caio', 'caio', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Lucas Carvalho', 'luc', 'e10adc3949ba59abbe56e057f20f883e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

create table estoque(
idproduto bigInt auto_increment primary key,
produto varchar(50) not null,
quantidade varchar(50) not null,
valor varchar(50) not null
);

drop table estoque;

insert into estoque(produto,quantidade,valor) values('Rivotril','1','150');
insert into estoque(produto,quantidade,valor) values('Dorflex','1','15');
insert into estoque(produto,quantidade,valor) values('Neosaldina','3','25');
insert into estoque(produto,quantidade,valor) values('Dipirona','2','14');
insert into estoque(produto,quantidade,valor) values('Camisinha','4','30');
insert into estoque(produto,quantidade,valor) values('Hidratante','5','100');
insert into estoque(produto,quantidade,valor) values('Advil','2','12');
insert into estoque(produto,quantidade,valor) values('Novalgina','1','8');
insert into estoque(produto,quantidade,valor) values('Doralgina','1','9');



