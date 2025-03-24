-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/03/2025 às 14:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `csv_db 8`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id_funcionario` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `data_desligamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id_funcionario`, `nome`, `endereco`, `bairro`, `cidade`, `salario`, `data_admissao`, `data_desligamento`) VALUES
(1, 'João Silva', 'Rua das Flores, 123', 'Centro', 'São Paulo', 1800.00, '2020-03-15', NULL),
(2, 'Maria Santos', 'Av. Principal, 456', 'Jardim Europa', 'São Paulo', 1800.00, '2020-06-20', NULL),
(3, 'Pedro Oliveira', 'Rua dos Pinheiros, 789', 'Pinheiros', 'São Paulo', 2200.00, '2021-01-10', NULL),
(4, 'Ana Costa', 'Rua Bella Vista, 321', 'Bella Vista', 'São Paulo', 1900.00, '2021-04-05', NULL),
(5, 'Carlos Souza', 'Av. Paulista, 1000', 'Bela Vista', 'São Paulo', 2500.00, '2019-11-30', NULL),
(6, 'Roberto Pereira', 'Rua Augusta, 444', 'Consolação', 'São Paulo', 1800.00, '2019-05-15', '2022-12-31'),
(7, 'Lucia Ferreira', 'Rua Oscar Freire, 789', 'Jardins', 'São Paulo', 1900.00, '2020-08-01', '2023-03-15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lavarapido`
--

CREATE TABLE `lavarapido` (
  `id_servico` varchar(14) DEFAULT NULL,
  `id_cliente` varchar(15) DEFAULT NULL,
  `id_veiculo` varchar(22) DEFAULT NULL,
  `id_funcionario` varchar(14) DEFAULT NULL,
  `tipo_servico` varchar(20) DEFAULT NULL,
  `valor` varchar(7) DEFAULT NULL,
  `data` varchar(13) DEFAULT NULL,
  `status` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `lavarapido`
--

INSERT INTO `lavarapido` (`id_servico`, `id_cliente`, `id_veiculo`, `id_funcionario`, `tipo_servico`, `valor`, `data`, `status`) VALUES
('id_servico', 'id_cliente', 'id_veiculo', 'id_funcionario', 'tipo_servico', 'valor', 'data', NULL),
('1', '1', '15', '1', 'Lavagem Simples', '35.00', '2023-01-05', NULL),
('2', '2', '22', '3', 'Lavagem Completa', '70.00', '2023-01-05', NULL),
('3', '3', '8', '2', 'Polimento', '150.00', '2023-01-06', NULL),
('4', '4', '45', '4', 'Lavagem Simples', '35.00', '2023-01-06', NULL),
('5', '5', '33', '5', 'Higienização Interna', '120.00', '2023-01-07', NULL),
('6', '6', '10', '1', 'Lavagem Completa', '70.00', '2023-01-08', NULL),
('7', '7', '25', '3', 'Polimento', '150.00', '2023-01-09', NULL),
('8', '8', '42', '2', 'Lavagem Simples', '35.00', '2023-01-10', NULL),
('9', '9', '50', '4', 'Higienização Interna', '120.00', '2023-01-11', NULL),
('10', '10', '20', '5', 'Lavagem Completa', '70.00', '2023-01-12', NULL),
('11', '11', '15', '1', 'Polimento', '150.00', '2023-01-13', NULL),
('12', '12', '30', '3', 'Lavagem Simples', '35.00', '2023-01-14', NULL),
('13', '13', '40', '2', 'Higienização Interna', '120.00', '2023-01-15', NULL),
('14', '14', '55', '4', 'Lavagem Completa', '70.00', '2023-01-16', NULL),
('15', '15', '25', '5', 'Polimento', '150.00', '2023-01-17', NULL),
('16', '16', '10', '1', 'Lavagem Simples', '35.00', '2023-01-18', NULL),
('17', '17', '45', '3', 'Higienização Interna', '120.00', '2023-01-19', NULL),
('18', '18', '50', '2', 'Lavagem Completa', '70.00', '2023-01-20', NULL),
('19', '19', '20', '4', 'Polimento', '150.00', '2023-01-21', NULL),
('20', '20', '35', '5', 'Lavagem Simples', '35.00', '2023-01-22', NULL),
('21', '21', '15', '1', 'Higienização Interna', '120.00', '2023-01-23', NULL),
('22', '22', '40', '3', 'Lavagem Completa', '70.00', '2023-01-24', NULL),
('23', '23', '55', '2', 'Polimento', '150.00', '2023-01-25', NULL),
('24', '24', '25', '4', 'Lavagem Simples', '35.00', '2023-01-26', NULL),
('25', '25', '10', '5', 'Higienização Interna', '120.00', '2023-01-27', NULL),
('26', '26', '45', '1', 'Lavagem Completa', '70.00', '2023-01-28', NULL),
('27', '27', '30', '3', 'Polimento', '150.00', '2023-01-29', NULL),
('28', '28', '50', '2', 'Lavagem Simples', '35.00', '2023-01-30', NULL),
('29', '29', '20', '4', 'Higienização Interna', '120.00', '2023-01-31', NULL),
('30', '30', '35', '5', 'Lavagem Completa', '70.00', '2023-02-01', NULL),
('31', '31', '15', '1', 'Polimento', '150.00', '2023-02-02', NULL),
('32', '32', '40', '3', 'Lavagem Simples', '35.00', '2023-02-03', NULL),
('33', '33', '55', '2', 'Higienização Interna', '120.00', '2023-02-04', NULL),
('34', '34', '25', '4', 'Lavagem Completa', '70.00', '2023-02-05', NULL),
('35', '35', '10', '5', 'Polimento', '150.00', '2023-02-06', NULL),
('36', '36', '45', '1', 'Lavagem Simples', '35.00', '2023-02-07', NULL),
('37', '37', '30', '3', 'Higienização Interna', '120.00', '2023-02-08', NULL),
('38', '38', '50', '2', 'Lavagem Completa', '70.00', '2023-02-09', NULL),
('39', '39', '20', '4', 'Polimento', '150.00', '2023-02-10', NULL),
('40', '40', '35', '5', 'Lavagem Simples', '35.00', '2023-02-11', NULL),
('41', '41', '15', '1', 'Higienização Interna', '120.00', '2023-02-12', NULL),
('42', '42', '40', '3', 'Lavagem Completa', '70.00', '2023-02-13', NULL),
('43', '43', '55', '2', 'Polimento', '150.00', '2023-02-14', NULL),
('44', '44', '25', '4', 'Lavagem Simples', '35.00', '2023-02-15', NULL),
('45', '45', '10', '5', 'Higienização Interna', '120.00', '2023-02-16', NULL),
('46', '46', '45', '1', 'Lavagem Completa', '70.00', '2023-02-17', NULL),
('47', '47', '30', '3', 'Polimento', '150.00', '2023-02-18', NULL),
('48', '48', '50', '2', 'Lavagem Simples', '35.00', '2023-02-19', NULL),
('49', '49', '20', '4', 'Higienização Interna', '120.00', '2023-02-20', NULL),
('50', '50', '35', '5', 'Lavagem Completa', '70.00', '2023-02-21', NULL),
('51', '51', '15', '1', 'Polimento', '150.00', '2023-02-22', NULL),
('52', '52', '40', '3', 'Lavagem Simples', '35.00', '2023-02-23', NULL),
('53', '53', '55', '2', 'Higienização Interna', '120.00', '2023-02-24', NULL),
('54', '54', '25', '4', 'Lavagem Completa', '70.00', '2023-02-25', NULL),
('55', '55', '10', '5', 'Polimento', '150.00', '2023-02-26', NULL),
('56', '56', '45', '1', 'Lavagem Simples', '35.00', '2023-02-27', NULL),
('57', '57', '30', '3', 'Higienização Interna', '120.00', '2023-02-28', NULL),
('58', '58', '50', '2', 'Lavagem Completa', '70.00', '2023-03-01', NULL),
('59', '59', '20', '4', 'Polimento', '150.00', '2023-03-02', NULL),
('60', '60', '35', '5', 'Lavagem Simples', '35.00', '2023-03-03', NULL),
('61', '61', '15', '1', 'Higienização Interna', '120.00', '2023-03-04', NULL),
('62', '62', '40', '3', 'Lavagem Completa', '70.00', '2023-03-05', NULL),
('63', '63', '55', '2', 'Polimento', '150.00', '2023-03-06', NULL),
('64', '64', '25', '4', 'Lavagem Simples', '35.00', '2023-03-07', NULL),
('65', '65', '10', '5', 'Higienização Interna', '120.00', '2023-03-08', NULL),
('66', '66', '45', '1', 'Lavagem Completa', '70.00', '2023-03-09', NULL),
('67', '67', '30', '3', 'Polimento', '150.00', '2023-03-10', NULL),
('68', '68', '50', '2', 'Lavagem Simples', '35.00', '2023-03-11', NULL),
('69', '69', '20', '4', 'Higienização Interna', '120.00', '2023-03-12', NULL),
('70', '70', '35', '5', 'Lavagem Completa', '70.00', '2023-03-13', NULL),
('71', '71', '15', '1', 'Polimento', '150.00', '2023-03-14', NULL),
('72', '72', '40', '3', 'Lavagem Simples', '35.00', '2023-03-15', NULL),
('73', '73', '55', '2', 'Higienização Interna', '120.00', '2023-03-16', NULL),
('74', '74', '25', '4', 'Lavagem Completa', '70.00', '2023-03-17', NULL),
('75', '75', '10', '5', 'Polimento', '150.00', '2023-03-18', NULL),
('76', '76', '45', '1', 'Lavagem Simples', '35.00', '2023-03-19', NULL),
('77', '77', '30', '3', 'Higienização Interna', '120.00', '2023-03-20', NULL),
('78', '78', '50', '2', 'Lavagem Completa', '70.00', '2023-03-21', NULL),
('79', '79', '20', '4', 'Polimento', '150.00', '2023-03-22', NULL),
('80', '80', '35', '5', 'Lavagem Simples', '35.00', '2023-03-23', NULL),
('81', '81', '15', '1', 'Higienização Interna', '120.00', '2023-03-24', NULL),
('82', '82', '40', '3', 'Lavagem Completa', '70.00', '2023-03-25', NULL),
('83', '83', '55', '2', 'Polimento', '150.00', '2023-03-26', NULL),
('84', '84', '25', '4', 'Lavagem Simples', '35.00', '2023-03-27', NULL),
('85', '85', '10', '5', 'Higienização Interna', '120.00', '2023-03-28', NULL),
('86', '86', '45', '1', 'Lavagem Completa', '70.00', '2023-03-29', NULL),
('87', '87', '30', '3', 'Polimento', '150.00', '2023-03-30', NULL),
('88', '88', '50', '2', 'Lavagem Simples', '35.00', '2023-03-31', NULL),
('89', '89', '20', '4', 'Higienização Interna', '120.00', '2023-04-01', NULL),
('90', '90', '35', '5', 'Lavagem Completa', '70.00', '2023-04-02', NULL),
('91', '91', '15', '1', 'Polimento', '150.00', '2023-04-03', NULL),
('92', '92', '40', '3', 'Lavagem Simples', '35.00', '2023-04-04', NULL),
('93', '93', '55', '2', 'Higienização Interna', '120.00', '2023-04-05', NULL),
('94', '94', '25', '4', 'Lavagem Completa', '70.00', '2023-04-06', NULL),
('95', '95', '10', '5', 'Polimento', '150.00', '2023-04-07', NULL),
('96', '96', '45', '1', 'Lavagem Simples', '35.00', '2023-04-08', NULL),
('97', '97', '30', '3', 'Higienização Interna', '120.00', '2023-04-09', NULL),
('98', '98', '50', '2', 'Lavagem Completa', '70.00', '2023-04-10', NULL),
('99', '99', '20', '4', 'Polimento', '150.00', '2023-04-11', NULL),
('100', '100', '35', '5', 'Lavagem Simples', '35.00', '2023-04-12', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_veiculo` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `tipo_servico` varchar(100) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `id_cliente`, `id_veiculo`, `id_funcionario`, `tipo_servico`, `valor`, `data`, `status`) VALUES
(1, 0, 0, 0, 'tipo_servico', 0.00, '0000-00-00', 'NULL'),
(2, 1, 15, 1, 'Lavagem Simples', 35.00, '2023-01-05', 'NULL'),
(3, 2, 22, 3, 'Lavagem Completa', 70.00, '2023-01-05', 'NULL'),
(4, 3, 8, 2, 'Polimento', 150.00, '2023-01-06', 'NULL'),
(5, 4, 45, 4, 'Lavagem Simples', 35.00, '2023-01-06', 'NULL'),
(6, 5, 33, 5, 'Higienização Interna', 120.00, '2023-01-07', 'NULL'),
(7, 6, 10, 1, 'Lavagem Completa', 70.00, '2023-01-08', 'NULL'),
(8, 7, 25, 3, 'Polimento', 150.00, '2023-01-09', 'NULL'),
(9, 8, 42, 2, 'Lavagem Simples', 35.00, '2023-01-10', 'NULL'),
(10, 9, 50, 4, 'Higienização Interna', 120.00, '2023-01-11', 'NULL'),
(11, 10, 20, 5, 'Lavagem Completa', 70.00, '2023-01-12', 'NULL'),
(12, 11, 15, 1, 'Polimento', 150.00, '2023-01-13', 'NULL'),
(13, 12, 30, 3, 'Lavagem Simples', 35.00, '2023-01-14', 'NULL'),
(14, 13, 40, 2, 'Higienização Interna', 120.00, '2023-01-15', 'NULL'),
(15, 14, 55, 4, 'Lavagem Completa', 70.00, '2023-01-16', 'NULL'),
(16, 15, 25, 5, 'Polimento', 150.00, '2023-01-17', 'NULL'),
(17, 16, 10, 1, 'Lavagem Simples', 35.00, '2023-01-18', 'NULL'),
(18, 17, 45, 3, 'Higienização Interna', 120.00, '2023-01-19', 'NULL'),
(19, 18, 50, 2, 'Lavagem Completa', 70.00, '2023-01-20', 'NULL'),
(20, 19, 20, 4, 'Polimento', 150.00, '2023-01-21', 'NULL'),
(21, 20, 35, 5, 'Lavagem Simples', 35.00, '2023-01-22', 'NULL'),
(22, 21, 15, 1, 'Higienização Interna', 120.00, '2023-01-23', 'NULL'),
(23, 22, 40, 3, 'Lavagem Completa', 70.00, '2023-01-24', 'NULL'),
(24, 23, 55, 2, 'Polimento', 150.00, '2023-01-25', 'NULL'),
(25, 24, 25, 4, 'Lavagem Simples', 35.00, '2023-01-26', 'NULL'),
(26, 25, 10, 5, 'Higienização Interna', 120.00, '2023-01-27', 'NULL'),
(27, 26, 45, 1, 'Lavagem Completa', 70.00, '2023-01-28', 'NULL'),
(28, 27, 30, 3, 'Polimento', 150.00, '2023-01-29', 'NULL'),
(29, 28, 50, 2, 'Lavagem Simples', 35.00, '2023-01-30', 'NULL'),
(30, 29, 20, 4, 'Higienização Interna', 120.00, '2023-01-31', 'NULL'),
(31, 30, 35, 5, 'Lavagem Completa', 70.00, '2023-02-01', 'NULL'),
(32, 31, 15, 1, 'Polimento', 150.00, '2023-02-02', 'NULL'),
(33, 32, 40, 3, 'Lavagem Simples', 35.00, '2023-02-03', 'NULL'),
(34, 33, 55, 2, 'Higienização Interna', 120.00, '2023-02-04', 'NULL'),
(35, 34, 25, 4, 'Lavagem Completa', 70.00, '2023-02-05', 'NULL'),
(36, 35, 10, 5, 'Polimento', 150.00, '2023-02-06', 'NULL'),
(37, 36, 45, 1, 'Lavagem Simples', 35.00, '2023-02-07', 'NULL'),
(38, 37, 30, 3, 'Higienização Interna', 120.00, '2023-02-08', 'NULL'),
(39, 38, 50, 2, 'Lavagem Completa', 70.00, '2023-02-09', 'NULL'),
(40, 39, 20, 4, 'Polimento', 150.00, '2023-02-10', 'NULL'),
(41, 40, 35, 5, 'Lavagem Simples', 35.00, '2023-02-11', 'NULL'),
(42, 41, 15, 1, 'Higienização Interna', 120.00, '2023-02-12', 'NULL'),
(43, 42, 40, 3, 'Lavagem Completa', 70.00, '2023-02-13', 'NULL'),
(44, 43, 55, 2, 'Polimento', 150.00, '2023-02-14', 'NULL'),
(45, 44, 25, 4, 'Lavagem Simples', 35.00, '2023-02-15', 'NULL'),
(46, 45, 10, 5, 'Higienização Interna', 120.00, '2023-02-16', 'NULL'),
(47, 46, 45, 1, 'Lavagem Completa', 70.00, '2023-02-17', 'NULL'),
(48, 47, 30, 3, 'Polimento', 150.00, '2023-02-18', 'NULL'),
(49, 48, 50, 2, 'Lavagem Simples', 35.00, '2023-02-19', 'NULL'),
(50, 49, 20, 4, 'Higienização Interna', 120.00, '2023-02-20', 'NULL'),
(51, 50, 35, 5, 'Lavagem Completa', 70.00, '2023-02-21', 'NULL'),
(52, 51, 15, 1, 'Polimento', 150.00, '2023-02-22', 'NULL'),
(53, 52, 40, 3, 'Lavagem Simples', 35.00, '2023-02-23', 'NULL'),
(54, 53, 55, 2, 'Higienização Interna', 120.00, '2023-02-24', 'NULL'),
(55, 54, 25, 4, 'Lavagem Completa', 70.00, '2023-02-25', 'NULL'),
(56, 55, 10, 5, 'Polimento', 150.00, '2023-02-26', 'NULL'),
(57, 56, 45, 1, 'Lavagem Simples', 35.00, '2023-02-27', 'NULL'),
(58, 57, 30, 3, 'Higienização Interna', 120.00, '2023-02-28', 'NULL'),
(59, 58, 50, 2, 'Lavagem Completa', 70.00, '2023-03-01', 'NULL'),
(60, 59, 20, 4, 'Polimento', 150.00, '2023-03-02', 'NULL'),
(61, 60, 35, 5, 'Lavagem Simples', 35.00, '2023-03-03', 'NULL'),
(62, 61, 15, 1, 'Higienização Interna', 120.00, '2023-03-04', 'NULL'),
(63, 62, 40, 3, 'Lavagem Completa', 70.00, '2023-03-05', 'NULL'),
(64, 63, 55, 2, 'Polimento', 150.00, '2023-03-06', 'NULL'),
(65, 64, 25, 4, 'Lavagem Simples', 35.00, '2023-03-07', 'NULL'),
(66, 65, 10, 5, 'Higienização Interna', 120.00, '2023-03-08', 'NULL'),
(67, 66, 45, 1, 'Lavagem Completa', 70.00, '2023-03-09', 'NULL'),
(68, 67, 30, 3, 'Polimento', 150.00, '2023-03-10', 'NULL'),
(69, 68, 50, 2, 'Lavagem Simples', 35.00, '2023-03-11', 'NULL'),
(70, 69, 20, 4, 'Higienização Interna', 120.00, '2023-03-12', 'NULL'),
(71, 70, 35, 5, 'Lavagem Completa', 70.00, '2023-03-13', 'NULL'),
(72, 71, 15, 1, 'Polimento', 150.00, '2023-03-14', 'NULL'),
(73, 72, 40, 3, 'Lavagem Simples', 35.00, '2023-03-15', 'NULL'),
(74, 73, 55, 2, 'Higienização Interna', 120.00, '2023-03-16', 'NULL'),
(75, 74, 25, 4, 'Lavagem Completa', 70.00, '2023-03-17', 'NULL'),
(76, 75, 10, 5, 'Polimento', 150.00, '2023-03-18', 'NULL'),
(77, 76, 45, 1, 'Lavagem Simples', 35.00, '2023-03-19', 'NULL'),
(78, 77, 30, 3, 'Higienização Interna', 120.00, '2023-03-20', 'NULL'),
(79, 78, 50, 2, 'Lavagem Completa', 70.00, '2023-03-21', 'NULL'),
(80, 79, 20, 4, 'Polimento', 150.00, '2023-03-22', 'NULL'),
(81, 80, 35, 5, 'Lavagem Simples', 35.00, '2023-03-23', 'NULL'),
(82, 81, 15, 1, 'Higienização Interna', 120.00, '2023-03-24', 'NULL'),
(83, 82, 40, 3, 'Lavagem Completa', 70.00, '2023-03-25', 'NULL'),
(84, 83, 55, 2, 'Polimento', 150.00, '2023-03-26', 'NULL'),
(85, 84, 25, 4, 'Lavagem Simples', 35.00, '2023-03-27', 'NULL'),
(86, 85, 10, 5, 'Higienização Interna', 120.00, '2023-03-28', 'NULL'),
(87, 86, 45, 1, 'Lavagem Completa', 70.00, '2023-03-29', 'NULL'),
(88, 87, 30, 3, 'Polimento', 150.00, '2023-03-30', 'NULL'),
(89, 88, 50, 2, 'Lavagem Simples', 35.00, '2023-03-31', 'NULL'),
(90, 89, 20, 4, 'Higienização Interna', 120.00, '2023-04-01', 'NULL'),
(91, 90, 35, 5, 'Lavagem Completa', 70.00, '2023-04-02', 'NULL'),
(92, 91, 15, 1, 'Polimento', 150.00, '2023-04-03', 'NULL'),
(93, 92, 40, 3, 'Lavagem Simples', 35.00, '2023-04-04', 'NULL'),
(94, 93, 55, 2, 'Higienização Interna', 120.00, '2023-04-05', 'NULL'),
(95, 94, 25, 4, 'Lavagem Completa', 70.00, '2023-04-06', 'NULL'),
(96, 95, 10, 5, 'Polimento', 150.00, '2023-04-07', 'NULL'),
(97, 96, 45, 1, 'Lavagem Simples', 35.00, '2023-04-08', 'NULL'),
(98, 97, 30, 3, 'Higienização Interna', 120.00, '2023-04-09', 'NULL'),
(99, 98, 50, 2, 'Lavagem Completa', 70.00, '2023-04-10', 'NULL'),
(100, 99, 20, 4, 'Polimento', 150.00, '2023-04-11', 'NULL'),
(101, 100, 35, 5, 'Lavagem Simples', 35.00, '2023-04-12', 'NULL');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id_funcionario`);

--
-- Índices de tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
