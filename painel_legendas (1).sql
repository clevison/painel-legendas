-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13-Out-2016 às 22:22
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `painel_legendas`
--
CREATE DATABASE IF NOT EXISTS `painel_legendas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `painel_legendas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe`
--

CREATE TABLE `equipe` (
  `id_equ` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `admim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipe_membro`
--

CREATE TABLE `equipe_membro` (
  `id_equi_mem` int(11) NOT NULL,
  `id_equ` int(11) NOT NULL,
  `id_mem` int(11) NOT NULL,
  `id_per` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto`
--

CREATE TABLE `projeto` (
  `id_pro` int(11) NOT NULL,
  `id_equi` int(11) NOT NULL,
  `release_proj` varchar(50) NOT NULL,
  `link_torrent` varchar(250) NOT NULL,
  `link_legenda` varchar(250) NOT NULL,
  `revisor1` int(11) NOT NULL,
  `revisor2` int(11) NOT NULL,
  `dt_inicio` date NOT NULL,
  `dt_termino` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projeto_slot`
--

CREATE TABLE `projeto_slot` (
  `id_pro_slo` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `nome` int(11) NOT NULL,
  `id_mem` int(11) NOT NULL,
  `arquivo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao_equipe`
--

CREATE TABLE `solicitacao_equipe` (
  `id_sol_equ` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao_membro`
--

CREATE TABLE `solicitacao_membro` (
  `id_sol_mem` int(11) NOT NULL,
  `id_equ` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `mensagem` varchar(300) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usu` int(11) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `id_permissao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id_equ`),
  ADD UNIQUE KEY `un_nome` (`nome`);

--
-- Indexes for table `equipe_membro`
--
ALTER TABLE `equipe_membro`
  ADD PRIMARY KEY (`id_equi_mem`);

--
-- Indexes for table `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`id_pro`),
  ADD UNIQUE KEY `un_release` (`release_proj`);

--
-- Indexes for table `projeto_slot`
--
ALTER TABLE `projeto_slot`
  ADD PRIMARY KEY (`id_pro_slo`);

--
-- Indexes for table `solicitacao_equipe`
--
ALTER TABLE `solicitacao_equipe`
  ADD PRIMARY KEY (`id_sol_equ`),
  ADD UNIQUE KEY `un_nome` (`nome`);

--
-- Indexes for table `solicitacao_membro`
--
ALTER TABLE `solicitacao_membro`
  ADD PRIMARY KEY (`id_sol_mem`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`),
  ADD UNIQUE KEY `un_status` (`status`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usu`),
  ADD UNIQUE KEY `un_nick` (`nick`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id_equ` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipe_membro`
--
ALTER TABLE `equipe_membro`
  MODIFY `id_equi_mem` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projeto`
--
ALTER TABLE `projeto`
  MODIFY `id_pro` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `projeto_slot`
--
ALTER TABLE `projeto_slot`
  MODIFY `id_pro_slo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solicitacao_equipe`
--
ALTER TABLE `solicitacao_equipe`
  MODIFY `id_sol_equ` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solicitacao_membro`
--
ALTER TABLE `solicitacao_membro`
  MODIFY `id_sol_mem` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
