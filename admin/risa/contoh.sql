-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 24 Des 2015 pada 03.10
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pato_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pato_employees`
--

CREATE TABLE IF NOT EXISTS `pato_employees` (
  `national_id` varchar(10) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `birth_place` varchar(30) NOT NULL,
  `birth_date` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `department` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pato_employees`
--

INSERT INTO `pato_employees` (`national_id`, `employee_name`, `birth_place`, `birth_date`, `address`, `telephone`, `department`, `status`, `username`, `password`) VALUES
('20150001', 'Hakko Bio Richard', 'Bekasi', '1990-09-27', 'Kp. Wangkal Cikarang Barat - Bekasi', '0856949848', 'Manager', 'Tetap', 'hakkobio', '7ebe6954011b681'),
('20150002', 'Dede Rizki ramadhan', 'Bekasi', '1992-05-19', 'Pilar Timur - Cikarang Utara - Bekasi', '0856737876', 'Leader', 'Kontrak', 'dederizki', '5dae07cbc788d00'),
('20150003', 'Ujang Walim', 'Bekasi', '1988-06-08', 'Sukatani - Cikarang - Bekasi', '0865437823', 'Supervisor', 'Kontrak', 'ujangaji', '6104955561ae5eb'),
('20150004', 'Anton Sugianto', 'Indramayu', '1989-02-02', 'Pilar Timur - Cikarang Utara - Bekasi', '0857345267', 'Supervisor', 'Tetap', 'antons', 'b9aa245ffdfe791'),
('20150005', 'Dimas Kaliari S', 'Brebes', '1985-07-11', 'Warung Bingung - Sukatani ', '0856765435', 'Leader', 'Tetap', 'dimask', 'c6cab3e97b69d13'),
('20150006', 'Dony Arianto', 'Bekasi', '1990-02-14', 'Cikarang Utara - Bekasi', '0856747837', 'Supervisor', 'Kontrak', 'donnya', '5a5beb64f54ffd4'),
('20150007', 'Hendra Rombe', 'Bekasi', '1980-08-13', 'Cikarang Utara - Bekasi', '0987631237', 'Supervisor', 'Tetap', 'hendra', 'a04cca766a88568'),
('20150008', 'Syahrul Rakhim', 'Padang', '1990-06-09', 'Cikarang Barat - Bekasi', '0856747646', 'Supervisor', 'Outsourcing', 'syahrul', '95ffb7a15f02c6c'),
('20150009', 'Bang Jali', 'Bekasi', '1990-07-19', 'Cikarang - Bekasi', '0856747483', 'Operator', 'Outsourcing', 'bangjali', 'eb12aa75673a699'),
('20150010', 'Bang Toyyib', 'Bekasi', '1989-02-08', 'Warung Bingung - Cikarang', '0987656789', 'Leader', 'Kontrak', 'toyyib', 'c583966c262d690');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pato_employees`
--
ALTER TABLE `pato_employees`
 ADD PRIMARY KEY (`national_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
