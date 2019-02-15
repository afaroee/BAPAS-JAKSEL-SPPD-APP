-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2019 at 02:04 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bapasjaksel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(40) NOT NULL,
  `Nip` varchar(24) NOT NULL,
  `Jabatan` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`Id`, `Nama`, `Nip`, `Jabatan`) VALUES
(1, 'Syarif Usman, Bc.IP, SH., M.Si', '196201081985031001', 'Ka.BAPAS'),
(2, 'Drs.Djapen Simon S, MH', '19661215 199403 1 002', 'Pembimbing Kemasyarakatan Madya'),
(3, 'Drs.Djoko Soesilo', '19660617 199303 1 001', 'Pembimbing Kemasyarakatan Madya'),
(4, 'Yuniati MT, AKS', '19730604 199403 2 001', 'Pembimbing Kemasyarakatan Madya'),
(5, 'Nurindah Rustini, S.Sos', '19670912 199603 2 001', 'Pembimbing Kemasyarakatan Madya'),
(6, 'Fredy Luturkey, SH', '19620705 199403 1 001', 'Kepala Seksi BKA'),
(7, 'Sri Sumarni, Sm.HK', '19610206 198903 2 001', 'Penelaah Status WBP'),
(8, 'Elias,S.Sos', '19750929 200112 1 001', 'Pembimbing Kemasyarakatan Muda'),
(9, 'Ety Yuliani', '19670718 198703 2 001', 'Kasub Bag TU'),
(10, 'RA Sri Sintaningsih, S.Sos', '19650114 198703 2 001', 'Pembimbing Kemasyarakatan Muda'),
(11, 'Tiroanna, SH', '19650325 199211 2 001', 'Pembimbing Kemasyarakatan Muda'),
(12, 'Karto Sugiarto, SH', '19640325 198803 1 003', 'Pembimbing Kemasyarakatan Muda'),
(13, 'Dwi Elyana Susanti', '197907272000122001', 'Kepala Seksi BKD'),
(14, 'Yuni Widia sari', '198406062009122006', 'Pengelola Keuangan'),
(15, 'Lindawati Sirait', '19641028 198503 2 003', 'Pembimbing Kemasyarakatan Madya'),
(16, 'Julizar Jusuf Hutahaean, SH', '19800701 200604 1 00 1', 'KaSubsie Reg BKA'),
(17, 'Sungkono', '19611206 198603 1 001', 'Pengadministrasi Umum'),
(18, 'Rahayu Hamid', '19631104 198603 2 002', 'Pengelola Arsip Kepegawaian'),
(19, 'Desi Setiana, S.Psi', '19791002 200501 2 001', 'Kasubsie Bmkemas BKA'),
(20, 'Muhamad Yahya', '19650511 198603 1 001', 'Kasubsie Bimkemas BKD'),
(21, 'R.A Dwi Sulistyowati,S.Sos,MH', '19710929 199903 2 001', 'Kaur Keuangan'),
(22, 'Yetty Widiyati', '19680130 199203 2 001', 'Kaur Kepegawaian'),
(23, 'Tri Handayani', '19730116 199303 2 001', 'Pengelola Data Kepegawaian'),
(24, 'Hadi Wijoyo', '19690619 199303 1 001', 'Pengelola Bimbingan Kemandirian'),
(25, 'Hendra Jafarudin. SE,Ak', ' 19830912 200912 1 007', 'Kaur Umum'),
(26, 'Dangsia Nasution', '19640917 199103 2 001', 'Penelaah Status WBP'),
(27, 'Joko Lestyono, SH', '19771207 200212 1 005', 'Pembimbing Kemasyarakatan Pertama'),
(28, 'Lily Rafika,SH', '19801106 200212 2 001', 'Penelaah Status WBP'),
(29, 'Farhan Sanjaya, S.Pd', '19801231 200501 1 001', 'Pembimbing Kemasyarakatan Pertama'),
(30, 'Larsiyem', '19620516 199103 2 001', 'Pengadministrasi Umum'),
(31, 'Fajar Satryo Utomo, S.Pt', ' 19860731 201212 1 005', 'Pembimbing Kemasyarakatan Pertama'),
(32, 'Prita Palupi, S.P', '19880423 201212 2 003', 'Pembimbing Kemasyarakatan Pertama'),
(33, 'Yustin Retfilujeng, S.Pt', '19890309 201212 2 002', 'Pengelola BMN'),
(34, 'Marlina Nasution', '19820127 2005 01 2 001', 'Penelaah Status WBP'),
(35, 'Andi Sabhari Indriasari', '19740117 199903 2 001', 'Pembimbing Kemasyarakatan Pertama'),
(36, 'Dinnie Syafitri', '19771014 199903 2 001', 'Pengelola BMN'),
(37, 'Sulis Indrawati', '19860329 200604 2 001', 'Penelaah Status WBP'),
(38, 'Bambang Kurniawan', '19800617 200703 1 001', 'APembimbing Kemasyarakatan Terampil'),
(39, 'Wegy Harizki Prayogi', '19830915 200703 1 001', 'APembimbing Kemasyarakatan Terampil'),
(40, 'Raden Aryo Yudho P, S.H', '19870905 200703 1 003', 'Pembimbing Kemasyarakatan Pertama'),
(41, 'Zulfikar Hasan', '19771030 200901 1 004', 'APembimbing Kemasyarakatan Terampil'),
(42, 'Widyastuti Supadi', '19861129 200912 2 005', 'Pengelola Data Kepegawaian'),
(43, 'Dolly Mahardika', '19910811 200912 1 002', 'Pengelola Pembimbingan Kemandirian'),
(44, 'Dwi Mayang Sari', '19860128 201012 2 002', 'Pengelola Data Kepegawaian'),
(45, 'Fahmi Aditya', '19870225 201012 1 002', 'Bendahara Pengeluaran Satker'),
(46, 'Ikrimah Asya, S.H.', '19880926 201012 2 003', 'Penelaah Status WBP'),
(47, 'Andy Octodinata, S.E.', '19911022 201012 1 002', 'Pengelola Keuangan'),
(48, 'Aurora Lestari Rahaju', '19710318 199703 2 001', 'Penelaah Status WBP'),
(49, 'Erlangga Alif Mufti, S.H.', '19900106 200912 1 004', 'Kasubsi Bimker BKD'),
(50, 'Wawan Luvianto', '19830726 200901 1 001', 'Pengadministrasi Umum'),
(51, 'Hendro Suyoko, S.ST', '196407021989091001', 'Kasubsi. Bimker BKA'),
(52, 'Andi Mardiansah, SH', '198504242017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(53, 'Wahyu Budiman, SH', '198509292017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(54, 'Wilman Muba Lestari, SH', '198701262017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(55, 'Farhand Diansyah, S.Psi', '199004012017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(56, 'Putri Rizky Priamsari, S.Sos', '199008302017122001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(57, 'Monang Fernando MT. Sinaga, SH', '199101122017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(58, 'Ferny Melisa, SH', '199108022017122001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(59, 'Efi Asmi Suryani', '199208272017122001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(60, 'Hendrikson Siahaan, S.Sos', ' 199305302017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(61, 'Ahadian Putra Nugraha, SH', '199308082017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(62, 'Iqbal Farid Munggaran, S.Psi', '19910811 200912 1 002', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(63, 'Wendy Randy Halomoan, S.Sos', '199401282017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(64, 'Pandu Perdana, S.Psi', '199406042017121001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(65, 'Nikita Mariana, S.Psi', '199406292017122001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(66, 'Meilani Pandora, S.Psi', '199406292017122001', 'CPNS Pembimbing Kemasyarakatan Pertama'),
(67, 'Ristan Thia D F,. A.Md.IP', '19880520 200701 2 002', 'JFT Pembimbing Kemasyarakatan Pertama'),
(68, 'Riel Fahmi, SH', '196404281983031002', 'JFT Pembimbing Kemasyarakatan Muda');
