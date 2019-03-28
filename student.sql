-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 05-Fev-2019 às 20:53
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.0
SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `students`
--
-- --------------------------------------------------------
--
-- Estrutura da tabela `student`
--
CREATE TABLE `student`
(
  `id` int
(11) NOT NULL,
  `student_name` varchar
(256) NOT NULL,
  `student_number` int
(7) NOT NULL,
  `student_age` int
(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Extraindo dados da tabela `student`
--
INSERT INTO `student` (`
id`,
`student_name
`, `student_number`, `student_age`) VALUES
(1, 'First Student', 1000001, 11),
(2, 'Second Student', 1000002, 12);
--
-- Indexes for dumped tables
--
--
-- Indexes for table `student`
--
ALTER TABLE `student`
ADD PRIMARY KEY
(`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
