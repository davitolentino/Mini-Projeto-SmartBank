-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Mar-2020 às 12:36
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `documento` varchar(11) NOT NULL,
  `nome` varchar(152) NOT NULL,
  `dataNasc` date NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `sLogin` varchar(16) NOT NULL,
  `sAcesso` varchar(6) NOT NULL,
  `id` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`documento`, `nome`, `dataNasc`, `endereco`, `telefone`, `sLogin`, `sAcesso`, `id`) VALUES
('02153331013', 'David', '2002-08-02', 'Abdjdj', '19981413209', '12345678', '123456', '2'),
('04934165878', 'Sabrina Linda de Oliveira', '2002-01-10', 'rua da beldade', '19992784083', '7777777777777777', '777777', '1'),
('05654356046', 'Janderson Alves Peregrino', '1987-01-16', 'Avenida dos portugueses,n 330,Jardim América', '19987121823', '12345678', '123456', '3'),
('08402208045', 'Reenye', '1990-12-09', 'Rua Senai', '19234814821', '12345678', '123456', '3'),
('11111111111', 'GERALDO AZEVEDO', '1999-02-11', 'RUA DOS INOCENTES, 21', '123456789', 'geraldo', '123456', '1'),
('11271944022', 'Jose', '2002-01-17', 'Rua Olivia', '19998434261', '12345678', '123456', '3'),
('11847603068', 'Juliana', '2002-01-17', 'Rua Oliveira', '19998434261', '12345678', '123456', '3'),
('12269648005', 'Matheus', '2020-01-04', '123', '12121211212', '12345678', '123456', '2'),
('15751625048', 'Jeremias da Silva Cunha', '1980-03-20', 'Rua Maua - Holambra, SP', '19555555555', '4444444444444444', '444444', '1'),
('16061539002', 'Jose', '2002-01-17', 'Rua Oliveira', '19998434261', '12345678', '123456', '3'),
('22776219008', 'Jubileu da Silva Cunha', '1980-02-19', 'Rua Teste', '19111111111', '1111111111111111', '111111', '1'),
('23645323023', 'Jose', '2001-10-07', 'Rua Olivia', '19998434261', '12345678', '123456', '3'),
('25136104074', 'Aline', '1997-03-19', 'teste', '18933333333', '7777777777', '123456', '3'),
('27484025020', 'Marcelina Santos', '2002-01-17', 'Rua Tres', '19998434261', '12345678', '123456', '3'),
('28372921091', 'Matheus', '2000-11-13', 'wwec', '13123123131', '12345678', '123456', '2'),
('30495495050', 'Matheus', '2000-10-12', 'cjoijwiji', '10239120391', '12345678', '123456', '2'),
('33333333333', 'MARTA RAMOS', '1992-02-11', 'RUA DAS AZALELIAS, 547', '456789123', 'marta', '123456', '2'),
('34071883073', 'Karina', '2002-01-17', 'Rua Oliveira', '19998434261', '12345678', '123456', '3'),
('37247031042', 'Janderson Alves Peregrino', '1987-01-16', 'Rua Senai', '19234814821', '12345678', '123456', '3'),
('37925371099', 'Marina Silva', '2001-10-07', 'Rua Dion', '19998434261', '12345678', '123456', '3'),
('42485355053', 'Lilian Souza', '2001-10-07', 'Rua Dion', '19998434261', '12345678', '123456', '3'),
('42946802027', 'Karina', '2002-01-17', 'Rua Oliveira', '19998434261', '12345678', '123456', '3'),
('43592927086', 'Julia', '1996-10-11', 'seila', '11111111111', '12345678', '666666', '3'),
('44444444444', 'LUIZ GONZAGA', '1994-02-11', 'RUA DOS CACETINHOS, 24', '987654321', 'luiz', '123456', '1'),
('44501998806', 'Fabricio  gostosão', '2001-12-27', 'Rua ali', '19936584565', '12345678', '123456', '2'),
('44783160821', 'Matheus Eduardo', '2001-01-04', 'Pedro Moraes', '19971119582', '12345678', '123456', '2'),
('45523007846', 'David Tolentino Alves Frota', '2002-08-02', 'Av Santo Amaro', '19981413209', '12345678', '123456', '2'),
('46523313808', 'Vitor quirino', '2002-11-19', 'rua da maconha', '11951427029', '7777777777777777', '777777', '1'),
('49548014009', 'Karina', '2002-01-17', 'Rua Oliveira', '19998434261', '12345678', '123456', '3'),
('49938897800', 'Stevan Augusto', '1997-01-31', 'rua dos ype', '19999937433', '6666666666666666', '333333', '1'),
('50311078800', 'Junior Miksza', '2001-10-07', 'ajjxsjxjsj', '19971418471', '12345678', '123456', '2'),
('50356811816', 'Karina Gomes Euzébio', '2001-12-22', 'Rua Um', '11111111111', '22122001', '200122', '2'),
('52125984008', 'ygo', '1996-10-11', 'Rua Teste', '19912344321', '12345678', '123456', '3'),
('54098442035', 'Matheus', '2020-02-04', 'nweofnwe', '13123123123', '12345678', '123456', '2'),
('55094372866', 'Julia', '2002-01-17', 'Rua Olivia', '19998434261', '12345678', '123456', '3'),
('57262868047', 'Wilson da Silva Cunha', '1972-01-05', 'Rua Caragua - Goiania ', '19955555555', '1111111111111111', '111111', '1'),
('58944337039', 'Matheus', '2000-10-10', 'wewdwe', '13213123131', '12345678', '123456', '2'),
('61506227031', 'Cremilda Lima', '1985-03-20', 'Rua Maua', '19995555555', '1111111111111111', '111111', '1'),
('61825423067', 'Jeremias da Silva Cunha', '1980-03-20', 'Rua Maua - Holambra, SP', '19555555555', '4444444444444444', '444444', '1'),
('63820753028', '2erwwqe', '2000-10-10', 'fwewf', '12312312312', '12345678', '123456', '2'),
('64803191093', 'Fabricio Moraes', '2000-03-27', 'Rua Alfredo', '19983955644', '123456789', '123456', '2'),
('66113142027', 'MariaDB', '1998-03-11', 'Rua nsei', '19988888888', '123456789', '789456', '3'),
('67783411061', 'Karina', '2002-01-17', 'Rua um', '19998434261', '12345678', '123456', '3'),
('71065225032', 'eqeqweqeqeq', '2000-12-12', 'QFQFQQ', '23123213123', '12345678', '123456', '2'),
('72961223075', '2erwwqe', '2000-02-10', 'joiwedfwf', '12392131231', '12345678', '123456', '2'),
('76135766040', 'Bettina do Corre', '2003-03-20', 'Rua Maua Do Grau, 265', '18555555555', '1111111111111111', '111111', '1'),
('77777777777', 'JUREMA AGUIAR', '2001-02-11', 'RUA DOS DOIDOS, 666', '321654789', 'jurema', '123456', '2'),
('81090356048', 'Suelen Martin\'s Cunha', '1980-02-20', 'Prç. Almeida, São Paulo - SP', '19977777777', '1111111111111111', '111111', '1'),
('85406032097', 'Matheus', '2000-01-10', 'Pedro', '19912324342', '12345678', '123456', '2'),
('85596904090', '2erwwqe', '2000-01-11', 'wfwefwe', '13123123123', '12345678', '123456', '2'),
('86722979032', 'Matheus', '2000-01-02', 'Pedro', '19997328672', '12345678', '123456', '2'),
('89352153090', 'Luciane Oliveira', '2002-01-17', 'Rua Dois', '19998434261', '12345678', '123456', '3');

--
-- Acionadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `geraNumero` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	INSERT INTO conta 
    SET documento = NEW.documento, saldo = 0;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conta`
--

CREATE TABLE `conta` (
  `numero_conta` int(11) NOT NULL,
  `documento` varchar(11) NOT NULL,
  `saldo` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conta`
--

INSERT INTO `conta` (`numero_conta`, `documento`, `saldo`) VALUES
(1, '11111111111', '1016.00'),
(2, '44444444444', '301.00'),
(3, '33333333333', '550.00'),
(4, '77777777777', '500.00'),
(5, '61825423067', '7900.87'),
(6, '45523007846', '69975.48'),
(7, '55094372866', '137.85'),
(8, '15751625048', '360.00'),
(9, '11271944022', '100.00'),
(10, '23645323023', '1350.00'),
(11, '49938897800', '17.51'),
(12, '46523313808', '20515.00'),
(13, '44783160821', '5001.57'),
(14, '16061539002', '0.00'),
(15, '34071883073', '0.00'),
(16, '49548014009', '0.00'),
(17, '42946802027', '0.00'),
(18, '11847603068', '0.00'),
(19, '37925371099', '0.00'),
(20, '42485355053', '50.00'),
(21, '02153331013', '0.00'),
(22, '12269648005', '0.00'),
(23, '54098442035', '0.00'),
(24, '71065225032', '0.00'),
(25, '28372921091', '500.00'),
(26, '58944337039', '100.00'),
(27, '30495495050', '500.00'),
(28, '50311078800', '27.00'),
(29, '61506227031', '393.00'),
(30, '72961223075', '0.00'),
(31, '63820753028', '0.00'),
(32, '85596904090', '0.00'),
(33, '04934165878', '364000.00'),
(34, '22776219008', '0.00'),
(35, '57262868047', '50000.70'),
(36, '05654356046', '2.00'),
(37, '08402208045', '0.00'),
(38, '81090356048', '5160.00'),
(39, '52125984008', '0.00'),
(40, '37247031042', '0.00'),
(41, '43592927086', '0.00'),
(42, '85406032097', '0.00'),
(43, '86722979032', '0.00'),
(44, '64803191093', '20.00'),
(45, '66113142027', '0.00'),
(46, '67783411061', '0.00'),
(47, '50356811816', '2884.62'),
(48, '76135766040', '10000.00'),
(49, '25136104074', '0.00'),
(50, '89352153090', '0.00'),
(51, '44501998806', '20000.00'),
(52, '27484025020', '17.03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transacao`
--

CREATE TABLE `transacao` (
  `numero_conta` int(11) NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `data` date DEFAULT NULL,
  `valor` decimal(8,2) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `transacao`
--

INSERT INTO `transacao` (`numero_conta`, `tipo`, `data`, `valor`, `descricao`) VALUES
(7, 'DE', '2020-02-19', '100.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-19', '100.00', 'TRANSF. CONTA NUMERO 7'),
(7, 'CR', '2020-02-19', '100.00', 'Salario'),
(7, 'CR', '2020-02-19', '100.00', 'Salario'),
(7, 'CR', '2020-02-19', '100.00', 'Salario'),
(13, 'DE', '2020-03-28', '39.04', ''),
(7, 'DE', '2020-02-19', '150.00', 'Contas'),
(7, 'DE', '2020-02-19', '10.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-19', '10.00', 'TRANSF. CONTA NUMERO 7'),
(5, 'DE', '2020-02-21', '33.00', 'Conta de Luz'),
(13, 'CR', '2020-02-10', '10000.00', 'fwfe'),
(13, 'DE', '2020-04-03', '9.20', 'Pagamento de boleto.'),
(13, 'DE', '2020-04-03', '9.20', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-30', '53.25', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-30', '53.25', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-03', '67.15', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-03', '67.15', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-14', '33.74', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-18', '96.52', 'Pagamento de boleto.'),
(5, 'CR', '2020-02-21', '500.00', 'Salario'),
(5, 'DE', '2020-02-21', '300.00', 'TRANSF. CONTA NUMERO 10'),
(10, 'CR', '2020-02-21', '300.00', 'TRANSF. CONTA NUMERO 5'),
(13, 'DE', '2020-03-28', '39.04', 'Pagamento de boleto.'),
(13, 'DE', '2020-04-08', '12.56', 'Pagamento de boleto.'),
(5, 'DE', '2020-02-21', '10.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-21', '10.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-02-21', '20.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-21', '20.00', 'TRANSF. CONTA NUMERO 5'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 9'),
(9, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(5, 'DE', '2020-02-21', '150.00', 'Conta de Agua'),
(13, 'DE', '2020-03-25', '0.03', 'Pagamento de boleto.'),
(5, 'CR', '2020-02-21', '50.00', 'Salario'),
(5, 'CR', '2020-02-21', '50.00', 'Salario'),
(13, 'DE', '2020-03-28', '39.04', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-25', '0.03', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-25', '0.03', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(13, 'DE', '2020-03-07', '50.51', 'Pagamento de boleto.'),
(5, 'CR', '2020-02-26', '50.00', 'Salario'),
(5, 'DE', '2020-02-26', '30.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-26', '30.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 10'),
(10, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-02-26', '10.00', 'Boleto'),
(5, 'CR', '2020-02-26', '150.00', 'Salario'),
(28, 'DE', '2020-02-26', '100.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-26', '100.00', 'TRANSF. CONTA NUMERO 28'),
(28, 'CR', '2020-02-26', '100.00', 'Salario'),
(28, 'CR', '2020-02-26', '1000.00', 'Salario'),
(28, 'DE', '2020-02-26', '5.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-26', '5.00', 'TRANSF. CONTA NUMERO 28'),
(35, 'CR', '2020-02-26', '500.00', 'Salario'),
(13, 'DE', '2020-04-04', '77.75', 'Pagamento de boleto.'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'CR', '2020-02-26', '5.00', 'Deposito'),
(28, 'CR', '2020-02-26', '10.00', 'Vale'),
(28, 'CR', '2020-02-26', '55.00', 'Salario'),
(28, 'DE', '2020-02-26', '111.00', 'TRANSF. CONTA NUMERO 11'),
(11, 'CR', '2020-02-26', '111.00', 'TRANSF. CONTA NUMERO 28'),
(28, 'DE', '2020-02-26', '800.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-26', '800.00', 'TRANSF. CONTA NUMERO 28'),
(35, 'DE', '2020-02-26', '50.00', 'Boleto'),
(28, 'DE', '2020-02-26', '1.00', 'TRANSF. CONTA NUMERO 1'),
(1, 'CR', '2020-02-26', '1.00', 'TRANSF. CONTA NUMERO 28'),
(28, 'DE', '2020-02-26', '11.00', 'Contas'),
(28, 'CR', '2020-02-26', '55.00', 'Salario'),
(28, 'DE', '2020-02-26', '55.00', 'Supermercado'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-04-15', '46.37', 'Boleto'),
(35, 'DE', '2020-03-23', '61.94', 'Boleto'),
(35, 'DE', '2020-03-23', '61.94', 'Boleto'),
(35, 'CR', '2020-02-26', '10000.00', 'Extelionatario'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(35, 'CR', '2020-02-26', '77.00', 'Pechincha'),
(35, 'DE', '2020-04-13', '79.04', 'Boleto'),
(35, 'DE', '2020-04-13', '1.02', 'Boleto'),
(35, 'CR', '2020-02-26', '60.00', 'Merreca'),
(35, 'CR', '2020-02-26', '20.00', 'Miseria'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(35, 'CR', '2020-02-26', '500.00', 'Salario'),
(35, 'CR', '2020-02-26', '2.55', 'Adiantamento'),
(35, 'CR', '2020-02-26', '55.00', 'Adiantamento'),
(13, 'DE', '2020-03-27', '8.42', 'Pagamento de boleto.'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(13, 'DE', '2020-04-15', '57.84', 'Pagamento de boleto.'),
(35, 'DE', '2020-02-26', '100.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '100.00', 'TRANSF. CONTA NUMERO 35'),
(13, 'DE', '2020-03-11', '12.45', 'Pagamento de boleto.'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '5.00', 'eee'),
(35, 'CR', '2020-02-26', '25.00', 'DE'),
(35, 'CR', '2020-02-26', '25.00', 'DE'),
(35, 'CR', '2020-02-26', '25.00', 'DE'),
(13, 'DE', '2020-03-11', '0.12', 'Pagamento de boleto.'),
(35, 'CR', '2020-02-26', '4.00', 'Q'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(35, 'CR', '2020-02-26', '25.00', 'De'),
(35, 'CR', '2020-02-26', '25.00', 'Adiantamento'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(35, 'DE', '2020-04-13', '79.84', 'Boleto'),
(13, 'DE', '2020-04-06', '62.11', 'Pagamento de boleto.'),
(6, 'CR', '2020-02-26', '50000.00', 'Credito'),
(13, 'CR', '2020-02-10', '5.00', 'oi'),
(13, 'CR', '2020-02-10', '5.00', 'oi'),
(6, 'CR', '2020-02-26', '50000.00', 'Credito'),
(13, 'DE', '2020-02-10', '5.00', 'oi'),
(35, 'CR', '2020-02-26', '20.00', 'DE'),
(35, 'CR', '2020-02-26', '20.00', 'DE'),
(13, 'DE', '2020-02-10', '100.00', 'oi'),
(35, 'CR', '2020-02-26', '20.00', 'DE'),
(13, 'CR', '2020-02-10', '10.00', 'fer'),
(36, 'CR', '2020-02-26', '1.00', 'Salario'),
(35, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'CR', '2020-02-26', '50.00', 'De'),
(36, 'CR', '2020-02-26', '1.00', 'Salario'),
(35, 'CR', '2020-02-26', '50.00', 'De'),
(35, 'DE', '2020-02-26', '5555.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '5555.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'CR', '2020-02-26', '500.00', 'Salario'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '5545.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'CR', '2020-02-26', '55.00', 'DE'),
(35, 'DE', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '200.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-26', '300.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '300.00', 'TRANSF. CONTA NUMERO 35'),
(38, 'CR', '2020-02-26', '500.00', 'DE'),
(38, 'CR', '2020-02-26', '5000.00', 'DE'),
(38, 'CR', '2020-02-26', '100.00', 'DE'),
(38, 'DE', '2020-02-26', '500.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '500.00', 'TRANSF. CONTA NUMERO 38'),
(38, 'CR', '2020-02-26', '50.00', 'DE'),
(38, 'CR', '2020-02-26', '10.00', 'sasa'),
(5, 'CR', '2020-02-26', '500.00', 'DE'),
(5, 'CR', '2020-02-26', '4.00', 'DE'),
(5, 'CR', '2020-02-26', '50.00', 'DE'),
(5, 'CR', '2020-02-26', '50.00', 'DE'),
(5, 'CR', '2020-02-26', '5.00', 'DE'),
(5, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'CR', '2020-02-26', '50.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-02-26', '500.00', 'TRANSF. CONTA NUMERO 4'),
(4, 'CR', '2020-02-26', '500.00', 'TRANSF. CONTA NUMERO 5'),
(7, 'DE', '2020-02-27', '11.00', 'Contas'),
(35, 'DE', '2020-03-29', '8.28', 'Boleto'),
(35, 'DE', '2020-02-27', '200.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-27', '200.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'CR', '2020-02-27', '30.00', 'Salario'),
(35, 'DE', '2020-02-27', '50.00', 'TRANSF. CONTA NUMERO 20'),
(20, 'CR', '2020-02-27', '50.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-27', '500.00', 'TRANSF. CONTA NUMERO 10'),
(10, 'CR', '2020-02-27', '500.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-02-27', '500.00', 'TRANSF. CONTA NUMERO 10'),
(10, 'CR', '2020-02-27', '500.00', 'TRANSF. CONTA NUMERO 35'),
(7, 'CR', '2020-02-27', '55.00', 'Vale'),
(35, 'DE', '2020-03-29', '8.28', 'Boleto'),
(35, 'DE', '2020-02-27', '20.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-27', '20.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'CR', '2020-02-27', '20.00', 'Salario'),
(35, 'CR', '2020-02-27', '25.00', 'Adiantamento'),
(35, 'DE', '2020-02-27', '250.00', 'TRANSF. CONTA NUMERO 25'),
(25, 'CR', '2020-02-27', '250.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-03-12', '93.09', 'Boleto'),
(11, 'DE', '2020-02-28', '8.33', 'Boleto'),
(13, 'CR', '2020-02-27', '100.00', 'Fabricio otario GTA FIVE'),
(13, 'DE', '2020-02-27', '100.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-27', '100.00', 'TRANSF. CONTA NUMERO 13'),
(11, 'DE', '2020-02-28', '8.33', 'Boleto'),
(13, 'CR', '2020-02-10', '100.00', 'oi'),
(13, 'CR', '2020-02-10', '100.00', 'oi'),
(13, 'CR', '2020-02-27', '100.00', 'oi'),
(13, 'DE', '2020-03-11', '27.51', 'Pagamento de boleto.'),
(35, 'DE', '2020-03-15', '12.44', 'Boleto'),
(35, 'CR', '2020-02-28', '10000.00', 'Salario'),
(35, 'DE', '2020-02-28', '500.00', '300'),
(35, 'DE', '2020-02-28', '800.00', 'Aluguel'),
(35, 'DE', '2020-02-28', '500.00', 'Luz'),
(35, 'DE', '2020-03-12', '17.84', 'Boleto Jogo'),
(35, 'DE', '2020-03-23', '5.45', 'Boleto Sofa'),
(35, 'DE', '2020-02-28', '50.00', 'Conta de Luz'),
(35, 'CR', '2020-02-28', '50.00', 'Salario'),
(35, 'DE', '2020-02-28', '250.00', 'TRANSF. CONTA NUMERO 25'),
(25, 'CR', '2020-02-28', '250.00', 'TRANSF. CONTA NUMERO 35'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 2'),
(2, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 2'),
(2, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 2'),
(2, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '10.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-03-31', '95.13', 'Pagamento de boleto.'),
(44, 'CR', '2020-05-25', '50.00', 'sou lindo'),
(44, 'CR', '2020-05-25', '20.00', 'ainda continuo lindo'),
(44, 'DE', '2012-06-25', '50.00', 'lindo estou'),
(35, 'DE', '2020-03-23', '31.27', 'Boleto Magazine Luiza'),
(13, 'DE', '2020-02-10', '100.00', 'oi'),
(13, 'CR', '2020-02-10', '100.00', '09'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 3'),
(3, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-04-21', '28.08', 'Pagamento de boleto.'),
(7, 'DE', '2020-03-03', '10.00', 'Contas'),
(7, 'CR', '2020-03-03', '10.00', 'Salario'),
(13, 'DE', '2020-02-10', '1000.87', '1232'),
(13, 'DE', '2020-02-10', '1000.87', '1232'),
(47, 'CR', '2020-03-03', '3000.00', 'ta'),
(47, 'DE', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'CR', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 47'),
(47, 'DE', '2020-04-04', '77.75', 'Pagamento de boleto.'),
(7, 'DE', '2020-03-03', '10.00', 'Contas'),
(47, 'DE', '2020-04-04', '35.63', 'Pagamento de boleto.'),
(7, 'DE', '2020-03-03', '10.00', 'Contas'),
(7, 'DE', '2020-03-03', '10.00', 'Supermercado'),
(48, 'CR', '2019-08-09', '10000.00', 'Patrimonio acumulado'),
(28, 'DE', '2020-03-03', '55.00', 'Contas'),
(28, 'DE', '2020-03-03', '55.00', 'Contas'),
(28, 'DE', '2020-03-03', '4.00', 'TRANSF. CONTA NUMERO 49'),
(49, 'CR', '2020-03-03', '4.00', 'TRANSF. CONTA NUMERO 28'),
(49, 'DE', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 28'),
(28, 'CR', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 49'),
(49, 'DE', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 28'),
(28, 'CR', '2020-03-03', '2.00', 'TRANSF. CONTA NUMERO 49'),
(7, 'DE', '2020-03-04', '10.00', 'Contas'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'DE', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 6'),
(6, 'CR', '2020-02-10', '100.00', 'TRANSF. CONTA NUMERO 13'),
(11, 'DE', '2020-03-22', '76.83', 'luz'),
(13, 'DE', '2020-04-15', '57.84', 'Pagamento de boleto.'),
(7, 'CR', '2020-03-04', '100.00', 'Salario'),
(7, 'DE', '2020-04-19', '53.00', 'Contas'),
(13, 'CR', '2020-02-10', '100.00', 'oi123123'),
(7, 'DE', '2020-04-14', '58.63', 'Contas'),
(7, 'CR', '2020-03-04', '100.00', 'Salario'),
(13, 'DE', '2020-02-10', '109.00', '10032ri3'),
(51, 'CR', '2019-12-20', '10000.00', ''),
(51, 'DE', '2020-05-05', '100.00', ''),
(51, 'DE', '2020-02-12', '1.00', 'TRANSF. CONTA NUMERO 13'),
(13, 'CR', '2020-02-12', '1.00', 'TRANSF. CONTA NUMERO 51'),
(51, 'DE', '2020-04-04', '77.75', 'Pagamento de boleto.'),
(51, 'DE', '2020-04-03', '22.44', 'Pagamento de boleto.'),
(51, 'DE', '2020-04-03', '220.44', 'Pagamento de boleto.'),
(51, 'DE', '2020-04-03', '578.37', 'Pagamento de boleto.'),
(51, 'DE', '2020-04-03', '9000.00', 'Pagamento de boleto.'),
(52, 'CR', '2020-03-04', '100.00', 'Salario'),
(51, 'CR', '2020-02-10', '10000.00', 'wef'),
(35, 'DE', '2020-03-04', '20.00', 'Conta de luz'),
(52, 'DE', '2020-03-13', '81.97', 'Contas'),
(6, 'DE', '2020-03-04', '10000.00', 'Tirando'),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-04-22', '1469.00', ''),
(6, 'DE', '2020-03-04', '1469.00', ''),
(5, 'DE', '2020-04-04', '43.64', 'Boleto'),
(5, 'DE', '2020-04-04', '43.64', 'Boleto'),
(6, 'DE', '2020-04-11', '2076.00', ''),
(6, 'DE', '2020-04-11', '2076.00', ''),
(6, 'DE', '2020-04-11', '2076.00', ''),
(6, 'DE', '2020-04-11', '2076.00', ''),
(6, 'DE', '2020-04-11', '2076.00', ''),
(6, 'DE', '2020-04-11', '20.76', ''),
(52, 'DE', '2020-03-04', '1.00', 'TRANSF. CONTA NUMERO 2'),
(2, 'CR', '2020-03-04', '1.00', 'TRANSF. CONTA NUMERO 52'),
(6, 'DE', '2020-04-11', '20.76', ''),
(5, 'DE', '2020-03-22', '90.95', 'Boleto'),
(5, 'CR', '2020-03-04', '500.00', 'Salario'),
(7, 'DE', '2020-03-04', '100.00', 'TRANSF. CONTA NUMERO 7'),
(7, 'CR', '2020-03-04', '100.00', 'TRANSF. CONTA NUMERO 7'),
(5, 'DE', '2020-03-04', '500.00', 'TRANSF. CONTA NUMERO 27'),
(27, 'CR', '2020-03-04', '500.00', 'TRANSF. CONTA NUMERO 5'),
(5, 'DE', '2020-03-22', '90.95', 'Boleto'),
(5, 'DE', '2020-03-22', '90.95', 'Boleto'),
(7, 'DE', '2020-03-19', '90.94', 'Contas'),
(7, 'DE', '2020-04-21', '30.49', 'Contas'),
(7, 'CR', '2020-03-05', '150.00', 'Salario'),
(7, 'DE', '2020-04-23', '2.11', 'Contas'),
(7, 'DE', '2020-03-28', '20.98', 'Contas'),
(35, 'DE', '2020-03-05', '9999.00', 'TRANSF. CONTA NUMERO 51'),
(51, 'CR', '2020-03-05', '9999.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-03-05', '1.00', 'TRANSF. CONTA NUMERO 51'),
(51, 'CR', '2020-03-05', '1.00', 'TRANSF. CONTA NUMERO 35'),
(35, 'DE', '2020-03-05', '500.00', 'Conta'),
(35, 'DE', '2020-03-05', '50.00', 'Conta'),
(35, 'DE', '2020-03-05', '200.00', 'Conta'),
(5, 'DE', '2020-03-05', '30.00', 'Conta De Agua');

--
-- Acionadores `transacao`
--
DELIMITER $$
CREATE TRIGGER `atualizaSaldo` AFTER INSERT ON `transacao` FOR EACH ROW BEGIN
	UPDATE conta
    SET saldo = (select saldo from vw_saldos where numero_conta = NEW.numero_conta)
	WHERE numero_conta = NEW.numero_conta;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_saldos`
-- (See below for the actual view)
--
CREATE TABLE `vw_saldos` (
`numero_conta` int(11)
,`saldo` decimal(53,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_sub_transacao`
-- (See below for the actual view)
--
CREATE TABLE `vw_sub_transacao` (
`numero_conta` int(11)
,`tipo` varchar(2)
,`total` decimal(30,2)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_saldos`
--
DROP TABLE IF EXISTS `vw_saldos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_saldos`  AS  select `vw_sub_transacao`.`numero_conta` AS `numero_conta`,(sum((case when (`vw_sub_transacao`.`tipo` = 'CR') then `vw_sub_transacao`.`total` else 0 end)) - sum((case when (`vw_sub_transacao`.`tipo` = 'DE') then `vw_sub_transacao`.`total` else 0 end))) AS `saldo` from `vw_sub_transacao` group by `vw_sub_transacao`.`numero_conta` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_sub_transacao`
--
DROP TABLE IF EXISTS `vw_sub_transacao`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_sub_transacao`  AS  select `transacao`.`numero_conta` AS `numero_conta`,`transacao`.`tipo` AS `tipo`,sum(`transacao`.`valor`) AS `total` from `transacao` group by `transacao`.`numero_conta`,`transacao`.`tipo` order by `transacao`.`numero_conta`,`transacao`.`tipo` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`documento`);

--
-- Indexes for table `conta`
--
ALTER TABLE `conta`
  ADD PRIMARY KEY (`numero_conta`),
  ADD KEY `fk_conta_cliente` (`documento`);

--
-- Indexes for table `transacao`
--
ALTER TABLE `transacao`
  ADD KEY `fk_transacao_nconta` (`numero_conta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conta`
--
ALTER TABLE `conta`
  MODIFY `numero_conta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conta`
--
ALTER TABLE `conta`
  ADD CONSTRAINT `fk_conta_cliente` FOREIGN KEY (`documento`) REFERENCES `cliente` (`documento`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `transacao`
--
ALTER TABLE `transacao`
  ADD CONSTRAINT `fk_transacao_nconta` FOREIGN KEY (`numero_conta`) REFERENCES `conta` (`numero_conta`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
