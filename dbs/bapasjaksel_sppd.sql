-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2019 at 07:22 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bapasjaksel_sppd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `jabatan_tanggal` date NOT NULL DEFAULT '0000-00-00',
  `no_hp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL DEFAULT '0000-00-00',
  `tempat_lahir` varchar(100) NOT NULL,
  `kerja_tahun` int(4) NOT NULL,
  `kerja_bulan` int(4) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `pendidikan_lulus` varchar(100) NOT NULL,
  `pendidikan_ijazah` varchar(100) NOT NULL,
  `catatan_mutasi` text,
  `keterangan` text,
  `username` varchar(100) DEFAULT NULL,
  `username_update` varchar(100) DEFAULT NULL,
  `datetime_insert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetime_update` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status_deleted` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `nip`, `nama`, `jabatan`, `jabatan_tanggal`, `no_hp`, `alamat`, `tanggal_lahir`, `tempat_lahir`, `kerja_tahun`, `kerja_bulan`, `pendidikan`, `pendidikan_lulus`, `pendidikan_ijazah`, `catatan_mutasi`, `keterangan`, `username`, `username_update`, `datetime_insert`, `datetime_update`, `status_deleted`) VALUES
(1, '196201081985031001', 'Syarif Usman, Bc.IP, SH., M.Si', 'Ka.BAPAS', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(2, '196612151994031002', 'Drs.Djapen Simon S, MH', 'Pembimbing Kemasyarakatan Madya', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(3, '196606171993031001', 'Drs.Djoko Soesilo', 'Pembimbing Kemasyarakatan Madya', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(4, '197306041994032001', 'Yuniati MT, AKS', 'Pembimbing Kemasyarakatan Madya', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(5, '196709121996032001', 'Nurindah Rustini, S.Sos', 'Pembimbing Kemasyarakatan Madya', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(6, '196207051994031001', 'Fredy Luturkey, SH', 'Kepala Seksi BKA', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(7, '196102061989032001', 'Sri Sumarni, Sm.HK', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(8, '197509292001121001', 'Elias,S.Sos', 'Pembimbing Kemasyarakatan Muda', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(9, '196707181987032001', 'Ety Yuliani', 'Kasub Bag TU', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(10, '196501141987032001', 'RA Sri Sintaningsih, S.Sos', 'Pembimbing Kemasyarakatan Muda', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(11, '196503251992112001', 'Tiroanna, SH', 'Pembimbing Kemasyarakatan Muda', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(12, '196403251988031003', 'Karto Sugiarto, SH', 'Pembimbing Kemasyarakatan Muda', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(13, '197907272000122001', 'Dwi Elyana Susanti', 'Kepala Seksi BKD', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(14, '198406062009122006', 'Yuni Widia sari', 'Pengelola Keuangan', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(15, '196410281985032003', 'Lindawati Sirait', 'Pembimbing Kemasyarakatan Madya', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(16, '198007012006041001', 'Julizar Jusuf Hutahaean, SH', 'KaSubsie Reg BKA', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(17, '196112061986031001', 'Sungkono', 'Pengadministrasi Umum', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(18, '196311041986032002', 'Rahayu Hamid', 'Pengelola Arsip Kepegawaian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(19, '197910022005012001', 'Desi Setiana, S.Psi', 'Kasubsie Bmkemas BKA', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(20, '196505111986031001', 'Muhamad Yahya', 'Kasubsie Bimkemas BKD', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(21, '197109291999032001', 'R.A Dwi Sulistyowati,S.Sos,MH', 'Kaur Keuangan', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(22, '196801301992032001', 'Yetty Widiyati', 'Kaur Kepegawaian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(23, '197301161993032001', 'Tri Handayani', 'Pengelola Data Kepegawaian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(24, '196906191993031001', 'Hadi Wijoyo', 'Pengelola Bimbingan Kemandirian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(25, '198309122009121007', 'Hendra Jafarudin. SE,Ak', 'Kaur Umum', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(26, '196409171991032001', 'Dangsia Nasution', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(27, '197712072002121005', 'Joko Lestyono, SH', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(28, '198011062002122001', 'Lily Rafika,SH', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(29, '198012312005011001', 'Farhan Sanjaya, S.Pd', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(30, '196205161991032001', 'Larsiyem', 'Pengadministrasi Umum', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(31, '198607312012121005', 'Fajar Satryo Utomo, S.Pt', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(32, '198804232012122003', 'Prita Palupi, S.P', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(33, '198903092012122002', 'Yustin Retfilujeng, S.Pt', 'Pengelola BMN', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(34, '198201272005012001', 'Marlina Nasution', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(35, '197401171999032001', 'Andi Sabhari Indriasari', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(36, '197710141999032001', 'Dinnie Syafitri', 'Pengelola BMN', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(37, '198603292006042001', 'Sulis Indrawati', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(38, '198006172007031001', 'Bambang Kurniawan', 'APembimbing Kemasyarakatan Terampil', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(39, '198309152007031001', 'Wegy Harizki Prayogi', 'APembimbing Kemasyarakatan Terampil', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(40, '198709052007031003', 'Raden Aryo Yudho P, S.H', 'Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(41, '197710302009011004', 'Zulfikar Hasan', 'APembimbing Kemasyarakatan Terampil', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(42, '198611292009122005', 'Widyastuti Supadi', 'Pengelola Data Kepegawaian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(43, '199108112009121002', 'Dolly Mahardika', 'Pengelola Pembimbingan Kemandirian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(44, '198601282010122002', 'Dwi Mayang Sari', 'Pengelola Data Kepegawaian', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(45, '198702252010121002', 'Fahmi Aditya', 'Bendahara Pengeluaran Satker', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(46, '198809262010122003', 'Ikrimah Asya, S.H.', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(47, '199110222010121002', 'Andy Octodinata, S.E.', 'Pengelola Keuangan', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(48, '197103181997032001', 'Aurora Lestari Rahaju', 'Penelaah Status WBP', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(49, '199001062009121004', 'Erlangga Alif Mufti, S.H.', 'Kasubsi Bimker BKD', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(50, '198307262009011001', 'Wawan Luvianto', 'Pengadministrasi Umum', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(51, '196407021989091001', 'Hendro Suyoko, S.ST', 'Kasubsi. Bimker BKA', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(52, '198504242017121001', 'Andi Mardiansah, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(53, '198509292017121001', 'Wahyu Budiman, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(54, '198701262017121001', 'Wilman Muba Lestari, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(55, '199004012017121001', 'Farhand Diansyah, S.Psi', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(56, '199008302017122001', 'Putri Rizky Priamsari, S.Sos', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(57, '199101122017121001', 'Monang Fernando MT. Sinaga, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(58, '199108022017122001', 'Ferny Melisa, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(59, '199208272017122001', 'Efi Asmi Suryani', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(60, '199305302017121001', 'Hendrikson Siahaan, S.Sos', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:09:56', '0'),
(61, '199308082017121001', 'Ahadian Putra Nugraha, SH', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(62, '199108112009121002', 'Iqbal Farid Munggaran, S.Psi', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(63, '199401282017121001', 'Wendy Randy Halomoan, S.Sos', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(64, '199406042017121001', 'Pandu Perdana, S.Psi', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(65, '199406292017122001', 'Nikita Mariana, S.Psi', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(66, '199406292017122001', 'Meilani Pandora, S.Psi', 'CPNS Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(67, '198805202007012002', 'Ristan Thia D F,. A.Md.IP', 'JFT Pembimbing Kemasyarakatan Pertama', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '2019-02-12 05:20:10', '0'),
(68, '196404281983031002', 'Riel Fahmi, SH', 'JFT Pembimbing Kemasyarakatan Muda', '0000-00-00', '', '', '0000-00-00', '', 0, 0, '', '', '', NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sppd`
--

CREATE TABLE `tb_sppd` (
  `id` bigint(11) NOT NULL,
  `letter_code` varchar(100) NOT NULL,
  `letter_subject` varchar(100) NOT NULL,
  `letter_form` varchar(100) NOT NULL,
  `letter_content` text NOT NULL,
  `letter_date` date NOT NULL DEFAULT '0000-00-00',
  `code` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `nip_pejabat` varchar(100) NOT NULL,
  `nip_leader` varchar(100) NOT NULL,
  `rate_travel` varchar(100) NOT NULL,
  `nip` text NOT NULL,
  `purpose` text NOT NULL,
  `transport` varchar(255) NOT NULL,
  `place_form` varchar(100) NOT NULL,
  `place_to` varchar(100) NOT NULL,
  `lenth_journey` int(3) NOT NULL,
  `date_go` date NOT NULL DEFAULT '0000-00-00',
  `date_back` date NOT NULL DEFAULT '0000-00-00',
  `government` varchar(255) NOT NULL,
  `budget` double(16,2) NOT NULL DEFAULT '0.00',
  `budget_from` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `result_date` date NOT NULL,
  `result` text NOT NULL,
  `result_username` varchar(100) NOT NULL,
  `result_username_update` varchar(100) NOT NULL,
  `file` longtext NOT NULL,
  `file_update` longtext NOT NULL,
  `status` enum('0','1','2') NOT NULL COMMENT '0 : diinput  1 : dicetak 2 : selesai',
  `username` varchar(100) NOT NULL,
  `username_update` varchar(100) NOT NULL,
  `datetime_insert` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `datetime_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `stat` varchar(20) NOT NULL,
  `last_login` datetime NOT NULL,
  `username_target` varchar(100) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`, `fullname`, `stat`, `last_login`, `username_target`, `foto`, `email`) VALUES
('admin', '$2y$10$11te6Uypw.fRV5i2oG8bq.amtjmVWozEJcZdTxA2jyz243o4fur5m', 'Administrator', '', '0000-00-00 00:00:00', '', './img/logo_kemenkumham.svg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_userlevel`
--

CREATE TABLE `tb_userlevel` (
  `kode` char(4) NOT NULL,
  `keterangan` varchar(40) DEFAULT NULL,
  `isi` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`);

--
-- Indexes for table `tb_sppd`
--
ALTER TABLE `tb_sppd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `nip_leader` (`nip_leader`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_userlevel`
--
ALTER TABLE `tb_userlevel`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tb_sppd`
--
ALTER TABLE `tb_sppd`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
