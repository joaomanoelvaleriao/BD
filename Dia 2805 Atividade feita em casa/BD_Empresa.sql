-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/05/2023 às 03:04
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
-- Banco de dados: `bd_empresa`
--
CREATE DATABASE IF NOT EXISTS `bd_empresa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_empresa`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cod_fornecedor`
--

CREATE TABLE `cod_fornecedor` (
  `Cod_Fornecedor` int(11) NOT NULL,
  `Razao_Social` varchar(70) NOT NULL,
  `Nome_Fantasia` varchar(70) NOT NULL,
  `CNPJ` varchar(20) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Num` varchar(7) NOT NULL,
  `Bairro` varchar(25) NOT NULL,
  `Cidade` varchar(25) NOT NULL,
  `Fone` varchar(18) NOT NULL,
  `Nome_Contato` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Site` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cod_fornecedor`
--

INSERT INTO `cod_fornecedor` (`Cod_Fornecedor`, `Razao_Social`, `Nome_Fantasia`, `CNPJ`, `Endereco`, `Num`, `Bairro`, `Cidade`, `Fone`, `Nome_Contato`, `Email`, `Site`) VALUES
(1, 'Comércio de Papéis Yuki Ltda.', 'Yuki Pápeis', '03.847.655/0001-98', 'Rua da Ameixas', '21', 'Penha', 'São Paulo', '(11)2695-6398', 'Sr. Pedro', 'yuki@provedor.com.br', ''),
(2, 'Comércio de Papéis ABC Ltda.', 'Papelaria ABC', '14.218.835/0001-27', 'Av. Iguapé', '1698', 'Tatuapé', 'São Paulo', '(11)2369-9685', 'Sra. Bete', 'p_ABC@provedor.com.br', ''),
(3, 'Distribuidora Kalunga', 'Kalunga', '23.222.835./0001-07', 'Av. Rio das Pedras', '1725', 'Itaquera', 'São Paulo', '(11)2596-9586', 'Sr. Marcos', 'kalunga@provedor.com.br', ''),
(4, 'Indústria e Comércio Nobel S.A.', 'Nobel', '07.256.898/0001-10', 'Rua das Bolhas', '900', 'Itaquera', 'São Paulo', '(11)2456-9874', 'Sr. Paulo', 'nobel@provedor.com.br', ''),
(5, 'Papelaria Americanas Ltda.', 'Americanas', '01.659.427/0001-04', 'Rua das Ovelhas', '21', 'Pari', 'São Paulo', '(11)2365-2154', 'Sr. Antônio', 'americanas@provedor.com.br', ''),
(6, 'Distribuidora Brasileiras S.A.', 'Brasileiras', '01.326.265/0001-04', 'Av. Brasil', '12', 'Brás', 'São Paulo', '(11)6598-6958', 'Sra. Paula', 'brasileiras@provedor.com.br', ''),
(7, 'Ind e Comércio de Papéis OI Ltda.', 'Papéis OI', '01.362.126/0001-14', 'Av. dos Trilhos', '1362', 'Pari', 'São Paulo', '(11)2365-2154', 'Sra. Ana', 'oi@provedor.com.br', ''),
(8, 'Armarinhos Fernando Ltda.', 'Fernando', '01.956.236/0001-04', 'Alameda Santos', '362', 'Centro', 'São Paulo', '(11)2362-3659', 'Sr. Matheus', 'fernando@provedor.com.br', ''),
(9, 'Armarinhos Alegria S.A.', 'Alegria', '14.632.326/0001-14', 'Rua das Fagulhas', '12', 'Cambuci', 'São Paulo', '(11)2362-5487', 'Sr. Alegrete', 'alegria@provedor.com.br', ''),
(10, 'Comércio de Papéis Tchau Ltda.', 'Tchau', '11.659.652/0001-04', 'Alameda dos Anhambigaras', '326', 'Morumbi', 'São Paulo', '(11)3265-6958', 'Sr. Bento', 'tchau@provedor.com.br', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `Cod_Produto` int(11) NOT NULL,
  `Descrição` varchar(50) NOT NULL,
  `Unidade` varchar(2) NOT NULL,
  `Qtde_Estoque` double NOT NULL,
  `Características` varchar(50) NOT NULL,
  `Cod_Fornecedor` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`Cod_Produto`, `Descrição`, `Unidade`, `Qtde_Estoque`, `Características`, `Cod_Fornecedor`) VALUES
(1, 'Caneta', 'un', 100, 'Cor Azul', 0),
(2, 'Caneta', 'un', 85, 'Cor Vermelha', 0),
(3, 'Caneta', 'un', 60, 'Cor Preta', 0),
(4, 'Lápis', 'un', 150, 'Sem Borracha', 0),
(5, 'Lápis', 'un', 100, 'Com Borracha', 0),
(6, 'Lápis de Cor', 'cx', 25, '12 cores', 0),
(7, 'Lápis de Cor', 'cx', 50, '24 cores', 0),
(8, 'Lápis de Cor', 'cx', 35, '36 cores', 0),
(9, 'Borracha', 'dz', 35, 'Azul/Vermelha', 0),
(10, 'Borracha', 'dz', 25, 'Branca', 0),
(11, 'Papel Sulfite', 'pc', 100, 'Colorido', 0),
(12, 'Caderno Universitário', 'pc', 25, '1 Matéria', 0),
(13, 'Caderno Universitário', 'pc', 150, '10 Matérias', 0),
(14, 'Régua', 'un', 250, 'Acrílica - 30 cm', 0),
(15, 'Lapiseira', 'pc', 86, 'Grafite 0.5', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cod_fornecedor`
--
ALTER TABLE `cod_fornecedor`
  ADD PRIMARY KEY (`Cod_Fornecedor`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`Cod_Produto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cod_fornecedor`
--
ALTER TABLE `cod_fornecedor`
  MODIFY `Cod_Fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `Cod_Produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
