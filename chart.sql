-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2018 at 08:11 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_evote`
--
CREATE DATABASE IF NOT EXISTS `db_evote` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_evote`;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_biodata` int(10) NOT NULL,
  `tanggal_upload` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `ukuran_file` varchar(20) NOT NULL,
  `nim` int(10) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_biodata`, `tanggal_upload`, `file`, `ukuran_file`, `nim`) VALUES
(22, 0, '2018-01-01', '../../file/say.pdf', '520778', 1157050090),
(23, 0, '2018-01-01', '../../file/cc.pdf', '520778', 1157050050),
(56, 0, '2018-01-01', 'Transkrip Mahasiswa Smstr 1 & 2 A4.pdf', '120551', 123),
(55, 0, '2018-01-01', 'Transkrip Mahasiswa F5.pdf', '120560', 123),
(54, 0, '2018-01-01', 'Buku_Remaster_Ubuntu.pdf', '0', 1157050074),
(53, 0, '2018-01-01', 'BiodataMahasiswaUin.pdf', '520778', 1157050074),
(51, 0, '2018-01-01', 'klasificasion book.docx', '12956', 999),
(52, 0, '2018-01-01', 'Mentoring I(05-09-2015)(2).rar', '371076', 1212),
(50, 0, '2018-01-01', 'Data Buku Baru.docx', '17566', 999),
(49, 0, '2018-01-01', 'blanko resensi buku.docx', '20485', 2221),
(57, 67, '2018-01-05', 'hacking.pdf', '520778', 115705149);

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(3, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'aipjamjam', 'aipjamjam', '101dbb150ea9cd944f356a2ac91217e4'),
(7, 'ihsan Miftahul Huda', 'ihsan', 'ccbc2bffe69e83479314d2df030a2cdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE IF NOT EXISTS `tb_akun` (
  `id_akun` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_akun`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`id_akun`, `username`, `password`, `email`) VALUES
(12, 'ihsan', 'ccbc2bffe69e83479314d2df030a2cdf', 'ihsan@gmail.com'),
(13, 'aipjamjam', '101dbb150ea9cd944f356a2ac91217e4', 'aip@gmail.com'),
(16, 'Badar', 'e10adc3949ba59abbe56e057f20f883e', 'badar@gmail.com'),
(17, 'agus', '01c3c766ce47082b1b130daedd347ffd', 'agus@gmail.com'),
(18, 'Fr', 'e10adc3949ba59abbe56e057f20f883e', 'rizky@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon`
--

CREATE TABLE IF NOT EXISTS `tb_calon` (
  `id_calon` int(10) NOT NULL AUTO_INCREMENT,
  `id_akun` int(10) NOT NULL,
  `nama_calon` varchar(50) NOT NULL,
  `nim` int(10) NOT NULL,
  `ipk` float NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_calon`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tb_calon`
--

INSERT INTO `tb_calon` (`id_calon`, `id_akun`, `nama_calon`, `nim`, `ipk`, `visi`, `misi`, `foto`) VALUES
(59, 12, 'ihsan Miftahul Huda           ', 1157050074, 3.6, 'Reality Is a game witch your felling plays it \r\n', 'Sukses di duia dan di Akhirat\r\n', 'C360_2015-05-25-06-45-04-414.jpg'),
(64, 13, 'M Arif Zamzami Munawwir', 1157050090, 3, 'sadasd\r\n', 'sadasd\r\n', 'images.png'),
(65, 16, 'Badar Jalaluddin                   ', 1157050050, 3.68, 'jkhfdgdfgjkkjhkj', 'jgfhgfjllhjhfhfhj', 'images.jpg'),
(66, 17, 'Agus  ', 123, 3.68, 'skahdkjahsdkjhsa\r\nsajkjdsakjh\r\nsakdjaskdh\r\nsajjdhsakj', 'lskkjgask\r\nsadgsakjdkjas\r\nsdgsakds\r\naskdgasskjh', 'logo himatif.png'),
(67, 18, 'Rizky FR', 115705149, 3, 'sadsadasdfwef', 'dsfqwfqwef', 'images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_delegasi`
--

CREATE TABLE IF NOT EXISTS `tb_delegasi` (
  `id_delegasi` int(10) NOT NULL AUTO_INCREMENT,
  `nama_delegasi` varchar(50) NOT NULL,
  `nim` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Belum Memilih',
  PRIMARY KEY (`id_delegasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `tb_delegasi`
--

INSERT INTO `tb_delegasi` (`id_delegasi`, `nama_delegasi`, `nim`, `password`, `angkatan`, `status`) VALUES
(24, 'Ihsan Miftahul Huda', 1157050074, 'ihsan', 2015, 'Sudah Memilih'),
(25, 'M Arif Zamzami Munawwir', 1157050090, 'aip', 2015, 'Sudah Memilih'),
(26, 'Badar Jalaludin', 115, 'badar', 2015, 'Sudah Memilih'),
(27, 'Hermawan Gustiana', 116, 'hermawan', 2016, 'Sudah Memilih');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kadidat`
--

CREATE TABLE IF NOT EXISTS `tb_kadidat` (
  `id_kandidat` int(10) NOT NULL AUTO_INCREMENT,
  `foto` varchar(30) NOT NULL,
  `nim` int(10) NOT NULL,
  `nama_kandidat` varchar(50) NOT NULL,
  `jml_suara` int(3) NOT NULL,
  PRIMARY KEY (`id_kandidat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `tb_kadidat`
--

INSERT INTO `tb_kadidat` (`id_kandidat`, `foto`, `nim`, `nama_kandidat`, `jml_suara`) VALUES
(20, 'C360_2015-05-25-06-45-04-414.j', 1157050074, 'ihsan Miftahul Huda', 1),
(34, 'images.png', 1157050090, 'M Arif Zamzami Munawwir', 2),
(35, 'images.jpg', 1157050050, 'Badar Jalaluddin', 1),
(36, 'logo himatif.png', 123, 'Agus ', 0),
(37, 'images.jpg', 115705149, 'Rizky FR', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilihan`
--

CREATE TABLE IF NOT EXISTS `tb_pemilihan` (
  `id_pemilihan` int(10) NOT NULL AUTO_INCREMENT,
  `tipe` varchar(10) NOT NULL,
  `idpemilih` int(10) NOT NULL,
  `id_kandidat` int(10) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pemilihan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tb_pemilihan`
--

INSERT INTO `tb_pemilihan` (`id_pemilihan`, `tipe`, `idpemilih`, `id_kandidat`, `waktu`) VALUES
(8, 'Siswa', 25, 20, '2018-01-01 03:10:22'),
(9, 'Siswa', 24, 34, '2018-01-01 03:11:19'),
(10, 'Siswa', 26, 35, '2018-01-01 03:13:02'),
(11, 'Siswa', 27, 34, '2018-01-01 03:14:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
