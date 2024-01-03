-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Out-2023 às 13:16
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projecto_hotel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimentos`
--

CREATE TABLE `atendimentos` (
  `id_atendimento` int(5) NOT NULL,
  `id_reserva` int(5) NOT NULL,
  `data_entrada` datetime(6) NOT NULL,
  `data_saida` datetime(6) NOT NULL,
  `pago` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `id_chat` int(5) NOT NULL,
  `id_cliente` int(5) NOT NULL,
  `id_funcionario` int(5) NOT NULL,
  `contexto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(5) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `pais` varchar(20) NOT NULL,
  `bi` varchar(14) NOT NULL,
  `telefone` int(9) DEFAULT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(5) NOT NULL,
  `primeiro_nome` varchar(30) NOT NULL,
  `ultimo_nome` varchar(30) NOT NULL,
  `email` varchar(120) NOT NULL,
  `senha` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `quartos`
--

CREATE TABLE `quartos` (
  `id_quarto` int(5) NOT NULL,
  `designacao` varchar(10) NOT NULL,
  `id_tipo` int(5) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(5) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `id_quarto` int(5) NOT NULL,
  `datareserva` datetime(6) NOT NULL,
  `id_cliente` int(5) NOT NULL,
  `obs` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_quarto`
--

CREATE TABLE `tipo_quarto` (
  `id_tipo` int(5) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `preco` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  ADD PRIMARY KEY (`id_atendimento`);

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices para tabela `quartos`
--
ALTER TABLE `quartos`
  ADD PRIMARY KEY (`id_quarto`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Índices para tabela `tipo_quarto`
--
ALTER TABLE `tipo_quarto`
  ADD PRIMARY KEY (`id_tipo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `atendimentos`
--
ALTER TABLE `atendimentos`
  MODIFY `id_atendimento` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `id_chat` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id_funcionario` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `quartos`
--
ALTER TABLE `quartos`
  MODIFY `id_quarto` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_quarto`
--
ALTER TABLE `tipo_quarto`
  MODIFY `id_tipo` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
