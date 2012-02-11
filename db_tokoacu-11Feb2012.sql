-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2012 at 11:33 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_tokoacu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bahanmentahhistory`
--

CREATE TABLE IF NOT EXISTS `bahanmentahhistory` (
  `KdHistory` int(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` varchar(20) NOT NULL,
  `UserID` varchar(20) DEFAULT NULL,
  `TanggalHistory` datetime NOT NULL,
  `StockAwal` double NOT NULL DEFAULT '0',
  `QtyProd_Min` double NOT NULL DEFAULT '0',
  `QtyPurchase_Plus` double NOT NULL DEFAULT '0',
  `QtyUpdate_Min` double NOT NULL DEFAULT '0',
  `QtyUpdate_Plus` double NOT NULL DEFAULT '0',
  `QtyAdj_Min` double NOT NULL DEFAULT '0',
  `QtyRetur_Plus` double DEFAULT '0',
  `QtyRetur_Min` double DEFAULT '0',
  `QtyAdj_Plus` double NOT NULL DEFAULT '0',
  `QtyFaktur_Min` double DEFAULT '0',
  `StatusBahanMentahList` char(1) NOT NULL DEFAULT '0',
  `StockAkhir` double NOT NULL DEFAULT '0',
  `HargaAwal` decimal(20,2) NOT NULL DEFAULT '0.00',
  `HargaAkhir` decimal(20,2) NOT NULL DEFAULT '0.00',
  `Module` varchar(200) DEFAULT NULL,
  `RefNumber` varchar(20) DEFAULT NULL,
  `Keterangan` text,
  `isActive` char(1) NOT NULL DEFAULT '1',
  `Jenis` enum('Paku','Klem') DEFAULT NULL,
  PRIMARY KEY (`KdHistory`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bahanmentahhistory`
--


-- --------------------------------------------------------

--
-- Table structure for table `baranghistory`
--

CREATE TABLE IF NOT EXISTS `baranghistory` (
  `KdBarangHistory` int(11) NOT NULL AUTO_INCREMENT,
  `KdBarang` varchar(20) NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `TanggalHistory` datetime NOT NULL,
  `StockAwal` double DEFAULT '0',
  `QtyUpdate_Min` double DEFAULT '0',
  `QtyUpdate_Plus` double DEFAULT '0',
  `QtyFaktur_Min` double DEFAULT '0',
  `QtyRetur_Plus` double DEFAULT '0',
  `QtyRetur_Min` double DEFAULT '0',
  `QtyPurchase_Plus` double DEFAULT '0',
  `QtyProd_Plus` double DEFAULT '0',
  `QtyAdj_Min` double DEFAULT '0',
  `QtyAdj_Plus` double DEFAULT '0',
  `StatusBarangList` char(1) DEFAULT '0',
  `StockAkhir` double DEFAULT '0',
  `HargaAwal` decimal(20,2) DEFAULT '0.00',
  `HargaAkhir` decimal(20,2) DEFAULT '0.00',
  `Module` varchar(200) DEFAULT NULL,
  `RefNumber` varchar(20) DEFAULT NULL,
  `Keterangan` text,
  `isActive` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`KdBarangHistory`),
  KEY `KdBarang` (`KdBarang`),
  KEY `UserID` (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `baranghistory`
--

INSERT INTO `baranghistory` (`KdBarangHistory`, `KdBarang`, `UserID`, `TanggalHistory`, `StockAwal`, `QtyUpdate_Min`, `QtyUpdate_Plus`, `QtyFaktur_Min`, `QtyRetur_Plus`, `QtyRetur_Min`, `QtyPurchase_Plus`, `QtyProd_Plus`, `QtyAdj_Min`, `QtyAdj_Plus`, `StatusBarangList`, `StockAkhir`, `HargaAwal`, `HargaAkhir`, `Module`, `RefNumber`, `Keterangan`, `isActive`) VALUES
(1, 'BG12010001', '', '2012-01-29 15:28:19', 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, '0', 10, '3000.00', '0.00', 'Form Barang', '', NULL, '1'),
(2, 'BG12010001', '', '2012-01-29 15:30:18', 10, 0, 0, 5, 0, 0, 0, 0, 0, 0, '0', 5, '3000.00', '3000.00', 'Form Faktur', 'FK0001.29.01.12', NULL, '1'),
(3, 'BG12010001', '', '2012-01-29 15:31:53', 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, '0', 0, '3000.00', '3000.00', 'Form Faktur', 'FK0002.29.01.12', NULL, '1'),
(4, 'BG12020001', '', '2012-02-10 16:45:38', 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, '0', 500, '3000.00', '0.00', 'Form Barang', '', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `msbahanmentah`
--

CREATE TABLE IF NOT EXISTS `msbahanmentah` (
  `KdBahanMentah` varchar(20) NOT NULL,
  `KdSupplier` varchar(20) DEFAULT NULL,
  `NamaBahanMentah` varchar(200) DEFAULT NULL,
  `Ukuran` varchar(25) DEFAULT NULL,
  `Jenis` enum('Klem','Paku') DEFAULT NULL,
  `Satuan` enum('Karung','Kg') DEFAULT NULL,
  `IsAktif` char(1) DEFAULT '1',
  `HargaJualKg` decimal(20,2) NOT NULL,
  `HargaJualKarung` decimal(20,2) NOT NULL,
  `KarungToKg` double(20,2) NOT NULL,
  PRIMARY KEY (`KdBahanMentah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msbahanmentah`
--


-- --------------------------------------------------------

--
-- Table structure for table `msbahanmentahlist`
--

CREATE TABLE IF NOT EXISTS `msbahanmentahlist` (
  `KdBahanMentahList` int(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` varchar(20) DEFAULT NULL,
  `Harga` decimal(20,2) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Jenis` enum('Paku','Klem') DEFAULT NULL,
  `StatusBahanMentahList` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdBahanMentahList`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `msbahanmentahlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `msbarang`
--

CREATE TABLE IF NOT EXISTS `msbarang` (
  `KdBarang` varchar(20) NOT NULL,
  `KdMerk` varchar(20) NOT NULL,
  `NamaBarang` varchar(200) NOT NULL,
  `Ukuran` int(11) DEFAULT NULL,
  `Satuan` varchar(20) DEFAULT 'pack',
  `IsAktif` char(1) DEFAULT NULL,
  `Note` text,
  `HargaList` decimal(20,2) NOT NULL,
  PRIMARY KEY (`KdBarang`),
  KEY `KdMerk` (`KdMerk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msbarang`
--

INSERT INTO `msbarang` (`KdBarang`, `KdMerk`, `NamaBarang`, `Ukuran`, `Satuan`, `IsAktif`, `Note`, `HargaList`) VALUES
('BG12010001', 'MR001', 'Yan60 -ukuran5', 5, 'Pack', '1', NULL, '3000.00'),
('BG12020001', 'MR001', 'Yan60 -ukuran9', 9, 'Pack', '1', NULL, '3000.00');

-- --------------------------------------------------------

--
-- Table structure for table `msbaranglist`
--

CREATE TABLE IF NOT EXISTS `msbaranglist` (
  `KdList` int(11) NOT NULL AUTO_INCREMENT,
  `KdBarang` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Qty` double NOT NULL,
  `StatusBarangList` char(1) NOT NULL DEFAULT '0',
  `StatusBarang` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdList`),
  KEY `KdBarang` (`KdBarang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `msbaranglist`
--

INSERT INTO `msbaranglist` (`KdList`, `KdBarang`, `Harga`, `Qty`, `StatusBarangList`, `StatusBarang`) VALUES
(1, 'BG12020001', '3000.00', 500, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `msformulapantek`
--

CREATE TABLE IF NOT EXISTS `msformulapantek` (
  `QtyKlemMentah` int(11) NOT NULL,
  `QtyPaku` int(11) NOT NULL,
  `QtyKlemJadi` int(11) NOT NULL,
  `UkuranKlemMentah` int(2) NOT NULL,
  PRIMARY KEY (`UkuranKlemMentah`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msformulapantek`
--

INSERT INTO `msformulapantek` (`QtyKlemMentah`, `QtyPaku`, `QtyKlemJadi`, `UkuranKlemMentah`) VALUES
(1, 1, 1, 4),
(1, 2, 2, 5),
(5, 5, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mskaryawan`
--

CREATE TABLE IF NOT EXISTS `mskaryawan` (
  `KdKaryawan` varchar(20) NOT NULL,
  `NamaKaryawan` varchar(200) DEFAULT NULL,
  `Alamat` text,
  `NoTelp` varchar(20) DEFAULT NULL,
  `NoHP` varchar(20) DEFAULT NULL,
  `JenisKaryawan` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`KdKaryawan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mskaryawan`
--

INSERT INTO `mskaryawan` (`KdKaryawan`, `NamaKaryawan`, `Alamat`, `NoTelp`, `NoHP`, `JenisKaryawan`) VALUES
('KY11090001', 'Eti', 'Jl. Cengkareng', '-', '22', 'Memantek Klem'),
('KY11090002', 'Endang', 'Jl. Cengkareng', '-', '2323', 'Memantek Klem'),
('KY11090003', 'Rasman', 'Jl. Cengkareng', '-', '23', 'Memantek Klem');

-- --------------------------------------------------------

--
-- Table structure for table `msklempantek`
--

CREATE TABLE IF NOT EXISTS `msklempantek` (
  `KdKlemPantek` int(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` varchar(20) DEFAULT NULL,
  `Harga` decimal(20,2) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  PRIMARY KEY (`KdKlemPantek`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `msklempantek`
--


-- --------------------------------------------------------

--
-- Table structure for table `msmerk`
--

CREATE TABLE IF NOT EXISTS `msmerk` (
  `kdmerk` varchar(20) NOT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `isi` int(11) DEFAULT '0',
  `prioritas` char(1) DEFAULT '0',
  PRIMARY KEY (`kdmerk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msmerk`
--

INSERT INTO `msmerk` (`kdmerk`, `merk`, `isi`, `prioritas`) VALUES
('MR001', 'Yan60', 60, '1'),
('MR002', 'onaga 50', 50, '0');

-- --------------------------------------------------------

--
-- Table structure for table `mssales`
--

CREATE TABLE IF NOT EXISTS `mssales` (
  `KdSales` varchar(20) NOT NULL,
  `NamaSales` varchar(200) DEFAULT NULL,
  `Alamat` text,
  `NoTelp` varchar(20) DEFAULT NULL,
  `NoHP` varchar(20) DEFAULT NULL,
  `Komisi` double DEFAULT '0',
  PRIMARY KEY (`KdSales`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mssales`
--

INSERT INTO `mssales` (`KdSales`, `NamaSales`, `Alamat`, `NoTelp`, `NoHP`, `Komisi`) VALUES
('SL12020001', 'kiki', 'sumatra', '-', '', 11),
('SL12020002', 'Kiangiok', 'Jawa', '-', '', 16),
('SL12020003', 'Kianiong', 'Bandung', '-', '', 16),
('SL12020004', 'Changming', 'Jakarta', '-', '', 0),
('SL12020005', 'Main', 'Jakarta', '-', '', 0),
('SL12020006', 'Dalam Kota', 'Jakarta', '-', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mssupplier`
--

CREATE TABLE IF NOT EXISTS `mssupplier` (
  `KdSupplier` varchar(20) NOT NULL,
  `Nama` varchar(200) DEFAULT NULL,
  `Alamat` text,
  `Daerah` varchar(100) DEFAULT NULL,
  `NoTelp` varchar(20) DEFAULT NULL,
  `NoHP` varchar(20) DEFAULT NULL,
  `noFax` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`KdSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mssupplier`
--


-- --------------------------------------------------------

--
-- Table structure for table `mstoko`
--

CREATE TABLE IF NOT EXISTS `mstoko` (
  `KdToko` varchar(20) NOT NULL,
  `NamaToko` varchar(200) DEFAULT NULL,
  `NamaOwner` varchar(200) DEFAULT NULL,
  `AlamatToko` text,
  `Daerah` varchar(200) DEFAULT NULL,
  `NoTelp` varchar(20) DEFAULT NULL,
  `NoHP` varchar(20) DEFAULT NULL,
  `NoFax` varchar(20) DEFAULT NULL,
  `JatuhTempo` int(11) DEFAULT NULL,
  PRIMARY KEY (`KdToko`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstoko`
--

INSERT INTO `mstoko` (`KdToko`, `NamaToko`, `NamaOwner`, `AlamatToko`, `Daerah`, `NoTelp`, `NoHP`, `NoFax`, `JatuhTempo`) VALUES
('TK1202040001', 'Sinar Abadi', 'Bp Ridwan Suwardi', 'JL Cibadak No 226', 'Bandung', '-', '', '', 60),
('TK1202040002', 'Sejahtera', '-', 'JL Banceuy No 55 - 57', 'Bandung', '-', '', '', 60),
('TK1202040003', 'Bintang Terang', '-', 'JL Sukajadi No 34', 'Bandung', '-', '', '', 30),
('TK1202040004', 'Aneka Sinar', '-', 'JL Banceuy No 76', 'Bandung', '-', '', '', 60),
('TK1202040005', 'Mekar', '-', 'JL Mangun Sarkoro No 138', 'Cianjur', '-', '', '', 60),
('TK1202040006', 'Sinar Jaya', '-', 'Muara Karang', 'Jakarta', '-', '', '', 60),
('TK1202040007', 'Musi Indah', '-', 'Kepu', 'Jakarta', '-', '', '', 30),
('TK1202040008', 'Sinar Bintang', '-', 'TPI 2', 'Jakarta', '-', '', '', 1),
('TK1202040009', 'Seruling', '-', 'Tangerang', 'Tangerang', '-', '', '', 60),
('TK1202040010', 'Panca Cahaya', '-', 'JL Cibadak No 41', 'Bandung', '-', '', '', 60),
('TK1202040011', 'Iwan E', '-', 'JL Taman Cibaduyut Indah Blok B No KP 1', 'Bandung', '022-5409361', '', '', 60),
('TK1202040012', 'Wahyu', 'Sejahtera ( bdg )', 'JL Ahmad Yani KM 3 \r\nDelta Suzuki', 'Banjarmasin', '-', '', '', 60),
('TK1202040013', 'Lautan Karang Jaya', '-', 'Cikarang', 'Cikarang', '-', '', '', 60),
('TK1202040014', 'Kilat', '-', 'JL Banceuy No 88', 'Bandung', '-', '', '', 60),
('TK1202100001', 'Neon', '-', 'JL Pegadaian No 62', 'Solo', '-', '', '', 14),
('TK1202100002', 'Gajah Mada', '-', 'JL Progo No 10', 'Pekalongn', '-', '', '', 60),
('TK1202100003', 'Kencana', '-', 'JL Sultan Agung No 136', 'Pekalongan', '-', '', '', 60),
('TK1202100004', 'Sinar Jaya', '-', 'JL Yos Sudarso 101-103', 'Solo', '-', '', '', 60),
('TK1202100005', 'Sinar Mulia', '-', 'JL Brigjen selamat Riyadi No 39', 'Solo', '0271-644583', '', '', 60),
('TK1202100006', 'Surya Abadi', 'Sentral ( magelang )', 'JL Kapten tendean ( Nusukan )', 'Solo', '-', '', '', 60),
('TK1202100007', 'Panca Mulia', '-', 'JL Keratonan No 113', 'Solo', '-', '', '', 60),
('TK1202100008', 'Sinar Abadi', '-', 'JL jendral Sudirman 964 \r\n( Komplek Pertokoan Isola No 7 )', 'Purwokerto', '-', '', '', 60),
('TK1202100009', 'Oriental', '-', 'JL Jendral Sudirman A / 9', 'Pontianak', '-', '', '', 60),
('TK1202100010', 'Tujuh Enam', '-', 'JL Tujuh Enam', 'Wonogiri', '-', '', '', 60),
('TK1202100011', 'Cahaya Mulia', '-', 'JL Pagongan No 10 A', 'Cirebon', '-', '', '', 60),
('TK1202100012', 'Sentral', '-', 'JL Sunan Bonang No 9A \r\nDekat Akmil', 'Magelang', '-', '', '', 60),
('TK1202100013', 'Sinar', '-', 'JL Pemuda No 95', 'Magelang', '-', '', '', 60);

-- --------------------------------------------------------

--
-- Table structure for table `msuser`
--

CREATE TABLE IF NOT EXISTS `msuser` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `NamaLengkap` varchar(50) DEFAULT NULL,
  `Level` char(1) DEFAULT '1',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msuser`
--

INSERT INTO `msuser` (`userid`, `username`, `Password`, `NamaLengkap`, `Level`) VALUES
('', 'a', 'a', 'User1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tradjusment`
--

CREATE TABLE IF NOT EXISTS `tradjusment` (
  `KdAdj` varchar(20) NOT NULL,
  `TanggalAdj` datetime DEFAULT NULL,
  `KdBarang` varchar(20) DEFAULT NULL,
  `Type` char(1) DEFAULT NULL,
  `Harga` decimal(20,2) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Note` text,
  `LevelID` char(1) NOT NULL DEFAULT '0',
  `HargaList` decimal(20,2) DEFAULT '0.00',
  `jenis_adj` enum('paku','klem_mentah','klem_jadi') DEFAULT 'klem_jadi',
  PRIMARY KEY (`KdAdj`),
  KEY `KdBarang` (`KdBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tradjusment`
--


-- --------------------------------------------------------

--
-- Table structure for table `trdetailpb`
--

CREATE TABLE IF NOT EXISTS `trdetailpb` (
  `No_PB` varchar(20) NOT NULL,
  `kdbahanmentah` varchar(20) NOT NULL,
  `Qty` double NOT NULL,
  `Qty_real` double DEFAULT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Disc` float DEFAULT '0',
  `QtyPenerimaan` double DEFAULT '0',
  PRIMARY KEY (`No_PB`,`kdbahanmentah`),
  KEY `KdBarang` (`kdbahanmentah`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trdetailpb`
--


-- --------------------------------------------------------

--
-- Table structure for table `trdetailpo`
--

CREATE TABLE IF NOT EXISTS `trdetailpo` (
  `no_po` varchar(20) NOT NULL,
  `kdbahanmentah` varchar(20) NOT NULL,
  `jumlah` float NOT NULL,
  `jumlah_real` float DEFAULT NULL,
  `harga` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trdetailpo`
--


-- --------------------------------------------------------

--
-- Table structure for table `trdetailreturbeli`
--

CREATE TABLE IF NOT EXISTS `trdetailreturbeli` (
  `KdReturDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdRetur` varchar(20) NOT NULL,
  `KdBahanMentah` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Qty` double NOT NULL,
  `Disc` float(3,2) DEFAULT '0.00',
  `Qty_real` double DEFAULT NULL,
  PRIMARY KEY (`KdReturDetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trdetailreturbeli`
--


-- --------------------------------------------------------

--
-- Table structure for table `trfaktur`
--

CREATE TABLE IF NOT EXISTS `trfaktur` (
  `no_increment` bigint(200) NOT NULL AUTO_INCREMENT,
  `KdFaktur` varchar(20) NOT NULL,
  `KdSO` varchar(20) NOT NULL,
  `TanggalFaktur` datetime NOT NULL,
  `KdSales` varchar(20) NOT NULL,
  `KdToko` varchar(20) NOT NULL,
  `GrandTotal` decimal(20,2) NOT NULL,
  `StatusFaktur` char(1) NOT NULL DEFAULT '0',
  `StatusPayment` char(1) DEFAULT '0',
  `UserID` varchar(20) NOT NULL,
  `KdSJ` varchar(20) DEFAULT NULL,
  `TanggalSJ` datetime DEFAULT NULL,
  `TotalKomisiSales` decimal(20,2) DEFAULT '0.00',
  `KomisiPersen` double(20,2) NOT NULL,
  `TanggalJT` date DEFAULT NULL,
  `jenis_faktur` enum('paku','klem') DEFAULT 'klem',
  `Disc` double DEFAULT '0',
  `Jumlah` decimal(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdFaktur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trfaktur`
--

INSERT INTO `trfaktur` (`no_increment`, `KdFaktur`, `KdSO`, `TanggalFaktur`, `KdSales`, `KdToko`, `GrandTotal`, `StatusFaktur`, `StatusPayment`, `UserID`, `KdSJ`, `TanggalSJ`, `TotalKomisiSales`, `KomisiPersen`, `TanggalJT`, `jenis_faktur`, `Disc`, `Jumlah`) VALUES
(1, 'FK0001.29.01.12', 'SO0004.29.01.12', '2012-01-29 15:30:35', 'SL12010001', 'TK1111040003', '14250.00', '1', '0', '', NULL, NULL, '0.00', 0.00, '2012-02-08', 'klem', 5, '15000.00'),
(2, 'FK0002.29.01.12', 'SO0005.29.01.12', '2012-01-29 15:32:15', 'SL12010001', 'TK1112020001', '15000.00', '1', '1', '', NULL, NULL, '0.00', 0.00, '2012-02-08', 'klem', 0, '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trfakturdetail`
--

CREATE TABLE IF NOT EXISTS `trfakturdetail` (
  `KdFakturDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdFaktur` varchar(20) NOT NULL,
  `KdBarang` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `QtyFaktur` double NOT NULL,
  `Qty` double NOT NULL,
  `Disc` double NOT NULL,
  `StatusBarang` char(1) NOT NULL DEFAULT '0',
  `KomisiSales` decimal(20,2) DEFAULT '0.00',
  `HargaDisc` decimal(20,2) NOT NULL,
  PRIMARY KEY (`KdFakturDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trfakturdetail`
--

INSERT INTO `trfakturdetail` (`KdFakturDetail`, `KdFaktur`, `KdBarang`, `Harga`, `QtyFaktur`, `Qty`, `Disc`, `StatusBarang`, `KomisiSales`, `HargaDisc`) VALUES
(1, 'FK0001.29.01.12', 'BG12010001', '3000.00', 0, 5, 0, '0', '0.00', '3000.00'),
(2, 'FK0002.29.01.12', 'BG12010001', '3000.00', 0, 5, 0, '0', '0.00', '3000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trheaderpb`
--

CREATE TABLE IF NOT EXISTS `trheaderpb` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `No_PB` varchar(20) NOT NULL,
  `No_PO` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `KdSupplier` varchar(20) DEFAULT NULL,
  `Tanggal_TerimaBarang` datetime NOT NULL,
  `StatusTerimaBarang` char(1) NOT NULL DEFAULT '0',
  `GrandTotal` double(20,2) NOT NULL DEFAULT '0.00',
  `StatusPaid` char(1) NOT NULL DEFAULT '0',
  `jenis_pb` enum('paku','klem') DEFAULT 'paku',
  `Disc` double DEFAULT '0',
  `Jumlah` decimal(20,2) DEFAULT '0.00',
  `StatusPayment` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`No_PB`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trheaderpb`
--


-- --------------------------------------------------------

--
-- Table structure for table `trheaderpb_t`
--

CREATE TABLE IF NOT EXISTS `trheaderpb_t` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `No_PB` varchar(20) NOT NULL,
  PRIMARY KEY (`no_increment`,`No_PB`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trheaderpb_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trheaderpo`
--

CREATE TABLE IF NOT EXISTS `trheaderpo` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `No_PO` varchar(20) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `Tanggal_PO` datetime NOT NULL,
  `KdSupplier` varchar(12) NOT NULL,
  `StatusPO` char(1) NOT NULL DEFAULT '0',
  `GrandTotal` decimal(20,2) NOT NULL DEFAULT '0.00',
  `jenis_po` enum('paku','klem') DEFAULT 'paku',
  PRIMARY KEY (`no_increment`,`No_PO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trheaderpo`
--


-- --------------------------------------------------------

--
-- Table structure for table `trheaderpo_t`
--

CREATE TABLE IF NOT EXISTS `trheaderpo_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `no_po` varchar(20) NOT NULL,
  PRIMARY KEY (`no_increment`,`no_po`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `trheaderpo_t`
--

INSERT INTO `trheaderpo_t` (`no_increment`, `no_po`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Table structure for table `trheaderreturbeli`
--

CREATE TABLE IF NOT EXISTS `trheaderreturbeli` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdRetur` varchar(20) NOT NULL,
  `KdPB` varchar(20) NOT NULL,
  `TanggalRetur` datetime NOT NULL,
  `KdSupplier` varchar(20) NOT NULL,
  `GrandTotal` decimal(20,2) NOT NULL,
  `StatusRetur` char(1) NOT NULL DEFAULT '0',
  `Note` text NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `No_PO` varchar(20) DEFAULT NULL,
  `AfterPaid` char(1) DEFAULT '0',
  `jenis_retur` enum('paku','klem') DEFAULT 'klem',
  `Disc` double DEFAULT '0',
  `Jumlah` decimal(20,2) DEFAULT '0.00',
  PRIMARY KEY (`no_increment`,`KdRetur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trheaderreturbeli`
--


-- --------------------------------------------------------

--
-- Table structure for table `trhitung`
--

CREATE TABLE IF NOT EXISTS `trhitung` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` varchar(25) NOT NULL,
  `TanggalHitung` datetime DEFAULT NULL,
  `KdKaryawan` varchar(25) DEFAULT NULL,
  `KdUser` varchar(25) DEFAULT NULL,
  `StatusHitung` char(1) DEFAULT '0',
  `StatusPayment` char(1) DEFAULT '0',
  `TelahDihitung` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdHitung`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trhitung`
--


-- --------------------------------------------------------

--
-- Table structure for table `trhitungdetail`
--

CREATE TABLE IF NOT EXISTS `trhitungdetail` (
  `KdHitungDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` varchar(25) NOT NULL,
  `KdKlemHitung` varchar(20) NOT NULL,
  `QtyKlemHitung` double NOT NULL,
  `StatusKlemMentah` char(1) DEFAULT '0',
  PRIMARY KEY (`KdHitungDetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trhitungdetail`
--


-- --------------------------------------------------------

--
-- Table structure for table `trhitungdetail_diterima`
--

CREATE TABLE IF NOT EXISTS `trhitungdetail_diterima` (
  `KdHitungDiterimaDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` varchar(25) NOT NULL,
  `KdKlemJadi` varchar(20) NOT NULL,
  `HargaModalKlemJadi` decimal(20,0) NOT NULL DEFAULT '0',
  `QtyKlemJadi` int(11) NOT NULL,
  `QtyKlemPrioritas` int(11) DEFAULT NULL,
  PRIMARY KEY (`KdHitungDiterimaDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `trhitungdetail_diterima`
--

INSERT INTO `trhitungdetail_diterima` (`KdHitungDiterimaDetail`, `KdHitungDiterima`, `KdKlemJadi`, `HargaModalKlemJadi`, `QtyKlemJadi`, `QtyKlemPrioritas`) VALUES
(7, 'HD12010001', 'BG11110005', '30000', 20, NULL),
(8, 'HD12010001', 'BG11110006', '40000', 200, NULL),
(9, 'HD12010001', 'BG11120001', '50000', 20, NULL),
(11, 'HD12010002', 'BG11110005', '50000', 200, NULL),
(14, 'HD12010003', 'BG11110006', '30000', 100, 83),
(15, 'HD12010003', 'BG11120001', '3000', 50, 50),
(16, 'HD12010004', 'BG11110006', '2000', 10, 8),
(17, 'HD12010004', 'BG12010002', '2000', 100, 100),
(18, 'HD12010004', 'BG11120002', '2000', 20, 20);

-- --------------------------------------------------------

--
-- Table structure for table `trhitungdetail_hasil`
--

CREATE TABLE IF NOT EXISTS `trhitungdetail_hasil` (
  `KdHitungDetailHasil` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` varchar(25) NOT NULL,
  `KdKlemJadi` varchar(20) NOT NULL,
  `QtyKlemJadi` double NOT NULL,
  `StatusKlemMentah` char(1) DEFAULT '0',
  PRIMARY KEY (`KdHitungDetailHasil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `trhitungdetail_hasil`
--

INSERT INTO `trhitungdetail_hasil` (`KdHitungDetailHasil`, `KdHitung`, `KdKlemJadi`, `QtyKlemJadi`, `StatusKlemMentah`) VALUES
(5, 'PH12010001', 'BG11110005', 20, '0'),
(6, 'PH12010001', 'BG11110006', 0, '0'),
(7, 'PH12010001', 'BG11120001', 20, '0'),
(8, 'PH12010002', 'BG11110005', 200, '0'),
(16, 'PH12010003', 'BG11110006', 15, '0'),
(17, 'PH12010003', 'BG11120001', 10, '0'),
(18, 'PH12010004', 'BG11110006', 10, '0'),
(19, 'PH12010004', 'BG11120002', 10, '0'),
(20, 'PH12010004', 'BG12010002', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `trhitung_diterima`
--

CREATE TABLE IF NOT EXISTS `trhitung_diterima` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` varchar(25) NOT NULL,
  `KdHitung` varchar(25) DEFAULT NULL,
  `TanggalHitungDiterima` datetime DEFAULT NULL,
  `KdKaryawan` varchar(25) DEFAULT NULL,
  `KdUser` varchar(25) DEFAULT NULL,
  `StatusHitungDiterima` char(1) DEFAULT '0',
  `StatusPaymentDiterima` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdHitungDiterima`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `trhitung_diterima`
--

INSERT INTO `trhitung_diterima` (`no_increment`, `KdHitungDiterima`, `KdHitung`, `TanggalHitungDiterima`, `KdKaryawan`, `KdUser`, `StatusHitungDiterima`, `StatusPaymentDiterima`) VALUES
(6, 'HD12010001', 'PH12010001', '2012-01-17 00:00:00', 'KY11090002', 'KY11090002', '1', '0'),
(7, 'HD12010002', 'PH12010002', '2012-01-17 00:00:00', 'KY11090002', 'KY11090002', '1', '0'),
(8, 'HD12010003', 'PH12010003', '2012-01-27 00:00:00', 'KY11090002', 'KY11090002', '1', '1'),
(9, 'HD12010004', 'PH12010004', '2012-01-29 15:20:46', 'KY11090002', 'KY11090002', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trhitung_diterima_t`
--

CREATE TABLE IF NOT EXISTS `trhitung_diterima_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` varchar(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdHitungDiterima`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trhitung_diterima_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trhitung_t`
--

CREATE TABLE IF NOT EXISTS `trhitung_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` varchar(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdHitung`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trhitung_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trpantek`
--

CREATE TABLE IF NOT EXISTS `trpantek` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` varchar(25) NOT NULL,
  `TanggalPantek` datetime DEFAULT NULL,
  `KdKaryawan` varchar(25) DEFAULT NULL,
  `KdUser` varchar(25) DEFAULT NULL,
  `StatusPantek` char(1) DEFAULT '0',
  `StatusPayment` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPantek`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trpantek`
--

INSERT INTO `trpantek` (`no_increment`, `KdPantek`, `TanggalPantek`, `KdKaryawan`, `KdUser`, `StatusPantek`, `StatusPayment`) VALUES
(1, 'PK12010001', '2012-01-29 15:08:13', 'KY11090002', '', '1', '0'),
(2, 'PK12010002', '2012-01-29 15:11:10', 'KY11090003', '', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trpantekdetail`
--

CREATE TABLE IF NOT EXISTS `trpantekdetail` (
  `KdPantekDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` varchar(25) NOT NULL,
  `KdKlemMentah` varchar(20) NOT NULL,
  `QtyKlemMentah` double NOT NULL,
  `KdPaku` varchar(20) NOT NULL,
  `QtyPaku` double NOT NULL,
  `StatusKlemMentah` char(1) DEFAULT '0',
  PRIMARY KEY (`KdPantekDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trpantekdetail`
--

INSERT INTO `trpantekdetail` (`KdPantekDetail`, `KdPantek`, `KdKlemMentah`, `QtyKlemMentah`, `KdPaku`, `QtyPaku`, `StatusKlemMentah`) VALUES
(1, 'PK12010001', 'KL11100001', 2, 'PK11120001', 2, '0'),
(2, 'PK12010001', 'KL12010002', 3, 'PK11120001', 3, '0'),
(3, 'PK12010002', 'KL11100001', 3, 'PK11120001', 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `trpantek_diterima`
--

CREATE TABLE IF NOT EXISTS `trpantek_diterima` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` varchar(25) NOT NULL,
  `KdPantek` varchar(25) NOT NULL,
  `TanggalPantekDiterima` datetime DEFAULT NULL,
  `KdKaryawan` varchar(25) DEFAULT NULL,
  `KdUser` varchar(25) DEFAULT NULL,
  `StatusPantekDiterima` char(1) DEFAULT '0',
  `StatusPaymentDiterima` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPantekDiterima`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `trpantek_diterima`
--

INSERT INTO `trpantek_diterima` (`no_increment`, `KdPantekDiterima`, `KdPantek`, `TanggalPantekDiterima`, `KdKaryawan`, `KdUser`, `StatusPantekDiterima`, `StatusPaymentDiterima`) VALUES
(2, 'PK12010002', 'PK12010001', '2012-01-04 00:00:00', 'KY11090001', '', '1', '0'),
(3, 'PK12010003', 'PK12010003', '2012-01-27 13:35:28', 'KY11090002', '', '1', '1'),
(4, 'PK12010004', 'PK12010002', '2012-01-29 15:11:27', 'KY11090003', '', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trpantek_diterima_detail`
--

CREATE TABLE IF NOT EXISTS `trpantek_diterima_detail` (
  `KdPantekDiterimaDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` varchar(25) NOT NULL,
  `KdKlemMentah` varchar(20) NOT NULL,
  `QtyKlemMentah` double NOT NULL,
  `KdPaku` varchar(20) NOT NULL,
  `QtyPaku` double NOT NULL,
  `QtyKlemMentahDiterima` double NOT NULL,
  PRIMARY KEY (`KdPantekDiterimaDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `trpantek_diterima_detail`
--

INSERT INTO `trpantek_diterima_detail` (`KdPantekDiterimaDetail`, `KdPantekDiterima`, `KdKlemMentah`, `QtyKlemMentah`, `KdPaku`, `QtyPaku`, `QtyKlemMentahDiterima`) VALUES
(1, 'PK12010001', 'KL11100001', 1, 'PK11100001', 2, 1),
(3, 'PK12010002', 'KL11100001', 2, 'PK11100001', 2, 2),
(4, 'PK12010003', 'KL11100001', 2, 'PK11100001', 2, 2),
(5, 'PK12010003', 'KL11100002', 3, 'PK11120001', 3, 3),
(6, 'PK12010004', 'KL11100001', 3, 'PK11120001', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `trpantek_diterima_t`
--

CREATE TABLE IF NOT EXISTS `trpantek_diterima_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` varchar(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPantekDiterima`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trpantek_diterima_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trpantek_t`
--

CREATE TABLE IF NOT EXISTS `trpantek_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` varchar(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPantek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trpantek_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trpenggajian`
--

CREATE TABLE IF NOT EXISTS `trpenggajian` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` varchar(20) NOT NULL,
  `TanggalPenggajian` datetime DEFAULT NULL,
  `TanggalAwal` date DEFAULT NULL,
  `TanggalAkhir` date DEFAULT NULL,
  `KdUser` varchar(25) DEFAULT NULL,
  `StatusPenggajian` char(1) DEFAULT '0',
  `StatusPayment` char(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `trpenggajian`
--

INSERT INTO `trpenggajian` (`no_increment`, `KdPenggajian`, `TanggalPenggajian`, `TanggalAwal`, `TanggalAkhir`, `KdUser`, `StatusPenggajian`, `StatusPayment`) VALUES
(5, 'PG12010001', '2012-01-28 00:00:00', '2012-01-27', '2012-01-28', '', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trpenggajiandetail`
--

CREATE TABLE IF NOT EXISTS `trpenggajiandetail` (
  `KdPenggajianDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` varchar(20) NOT NULL,
  `KdReferensi` varchar(200) NOT NULL,
  `KdKaryawan` varchar(20) NOT NULL,
  `TanggalPengerjaan` text NOT NULL,
  `KdBarang` varchar(20) NOT NULL,
  `Qty` int(20) NOT NULL DEFAULT '0',
  `GajiPerQty` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdPenggajianDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `trpenggajiandetail`
--

INSERT INTO `trpenggajiandetail` (`KdPenggajianDetail`, `KdPenggajian`, `KdReferensi`, `KdKaryawan`, `TanggalPengerjaan`, `KdBarang`, `Qty`, `GajiPerQty`) VALUES
(24, 'PG12010001', 'PK12010003', 'KY11090002', '27', 'KL11100001', 2, '200'),
(25, 'PG12010001', 'PK12010003', 'KY11090002', '27', 'KL11100002', 3, '100'),
(26, 'PG12010001', 'HD12010003', 'KY11090002', '27', 'BG11110006', 100, '200'),
(27, 'PG12010001', 'HD12010003', 'KY11090002', '27', 'BG11120001', 50, '100');

-- --------------------------------------------------------

--
-- Table structure for table `trpenggajian_t`
--

CREATE TABLE IF NOT EXISTS `trpenggajian_t` (
  `no_increment` int(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` varchar(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPenggajian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trpenggajian_t`
--


-- --------------------------------------------------------

--
-- Table structure for table `trpurchasepayment`
--

CREATE TABLE IF NOT EXISTS `trpurchasepayment` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdPurchasePayment` varchar(20) NOT NULL,
  `No_PB` varchar(20) NOT NULL,
  `TanggalPurchasePayment` datetime NOT NULL,
  `KdSupplier` varchar(20) NOT NULL,
  `TotalPurchasePayment` decimal(20,2) NOT NULL,
  `StatusPurchasePayment` char(1) NOT NULL DEFAULT '0',
  `Note` text NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `PaidBy` varchar(20) DEFAULT 'Cash',
  `No_PO` varchar(20) DEFAULT NULL,
  `jenis_payment` enum('paku','klem') DEFAULT 'klem',
  `Jumlah` decimal(20,2) DEFAULT '0.00',
  `Disc` double DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPurchasePayment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `trpurchasepayment`
--

INSERT INTO `trpurchasepayment` (`no_increment`, `KdPurchasePayment`, `No_PB`, `TanggalPurchasePayment`, `KdSupplier`, `TotalPurchasePayment`, `StatusPurchasePayment`, `Note`, `UserID`, `PaidBy`, `No_PO`, `jenis_payment`, `Jumlah`, `Disc`) VALUES
(2, 'FP1201220002', 'PB12010001', '2012-01-22 00:00:00', 'SP11120001', '12420000.00', '1', '', '', 'Cheque', NULL, 'klem', '13800000.00', 10),
(3, 'FP1201220003', 'PB12010006', '2012-01-22 15:22:07', 'SP11120001', '1350000.00', '0', '', '', 'Transfer', NULL, 'paku', '1500000.00', 10),
(4, 'FP1201290001', 'PB12010004', '2012-01-29 12:43:47', 'SP11120001', '5400000.00', '0', '', '', 'Transfer', NULL, 'klem', '5400000.00', 0),
(5, 'FP1201290002', 'PB12010002', '2012-01-29 13:17:14', 'SP11120001', '4500000.00', '1', '', '', 'Transfer', NULL, 'klem', '4500000.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trpurchasepaymentdetail`
--

CREATE TABLE IF NOT EXISTS `trpurchasepaymentdetail` (
  `KdPurchasePaymentDetail` double NOT NULL AUTO_INCREMENT,
  `KdPurchasePayment` varchar(20) DEFAULT NULL,
  `KdBahanMentah` varchar(20) DEFAULT NULL,
  `Harga` decimal(20,2) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Disc` double DEFAULT NULL,
  `StatusBarang` varchar(200) DEFAULT NULL,
  `Qty_real` double DEFAULT NULL,
  PRIMARY KEY (`KdPurchasePaymentDetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trpurchasepaymentdetail`
--

INSERT INTO `trpurchasepaymentdetail` (`KdPurchasePaymentDetail`, `KdPurchasePayment`, `KdBahanMentah`, `Harga`, `Qty`, `Disc`, `StatusBarang`, `Qty_real`) VALUES
(1, 'FP1201220001', 'KL11100001', '30000.00', 150, 0, 'Normal', 5),
(4, 'FP1201220002', 'KL11100001', '30000.00', 420, 0, 'Normal', 14),
(5, 'FP1201220002', 'KL11100002', '20000.00', 60, 0, 'Normal', 2),
(6, 'FP1201220003', 'PK11110001', '30000.00', 50, 0, 'Normal', 2),
(7, 'FP1201290001', 'KL11100001', '90000.00', 60, 0, 'Retur', 2),
(8, 'FP1201290002', 'KL11100001', '30000.00', 150, 0, 'Normal', 5);

-- --------------------------------------------------------

--
-- Table structure for table `trretur`
--

CREATE TABLE IF NOT EXISTS `trretur` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdRetur` varchar(20) NOT NULL,
  `KdFaktur` varchar(20) NOT NULL,
  `TanggalRetur` datetime NOT NULL,
  `KdSales` varchar(20) NOT NULL,
  `KdToko` varchar(20) NOT NULL,
  `GrandTotal` decimal(20,2) NOT NULL,
  `StatusRetur` char(1) NOT NULL DEFAULT '0',
  `Note` text NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `AfterPaid` char(1) DEFAULT '0',
  `KdSO` varchar(20) DEFAULT NULL,
  `jenis_retur` enum('paku','klem') DEFAULT 'klem',
  `Disc` double DEFAULT '0',
  `Jumlah` decimal(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdRetur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `trretur`
--

INSERT INTO `trretur` (`no_increment`, `KdRetur`, `KdFaktur`, `TanggalRetur`, `KdSales`, `KdToko`, `GrandTotal`, `StatusRetur`, `Note`, `UserID`, `AfterPaid`, `KdSO`, `jenis_retur`, `Disc`, `Jumlah`) VALUES
(1, 'RF0001.27.01.12', 'FK0001.22.01.12', '2012-01-27 09:04:19', 'SL11120002', 'TK1111040003', '13304250.00', '0', '', '', '0', NULL, 'klem', 0, '13304250.00'),
(2, 'RF0002.27.01.12', 'FK0001.27.01.12', '2012-01-27 09:11:07', 'SL11120002', 'TK1111040003', '11706525.00', '0', '', '', '0', NULL, 'klem', 10, '13007250.00'),
(3, 'RF0003.27.01.12', 'FK0002.27.01.12', '2012-01-27 09:42:13', 'SL11120002', 'TK1111040003', '3446125.00', '0', '', '', '0', NULL, 'paku', 0, '3446125.00');

-- --------------------------------------------------------

--
-- Table structure for table `trreturdetail`
--

CREATE TABLE IF NOT EXISTS `trreturdetail` (
  `KdReturDetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdRetur` varchar(20) NOT NULL,
  `KdBarang` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Qty` double NOT NULL,
  `Disc` double NOT NULL,
  `HargaDisc` decimal(20,2) NOT NULL,
  `StatusBarang` varchar(20) NOT NULL,
  PRIMARY KEY (`KdReturDetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `trreturdetail`
--

INSERT INTO `trreturdetail` (`KdReturDetail`, `KdRetur`, `KdBarang`, `Harga`, `Qty`, `Disc`, `HargaDisc`, `StatusBarang`) VALUES
(1, 'RF0001.27.01.12', 'BG11110005', '5500000.00', 1, 0, '5400000.00', 'Salah Pesan'),
(2, 'RF0001.27.01.12', 'BG11120001', '7904250.00', 1, 0, '7904250.00', 'Salah Pesan'),
(3, 'RF0002.27.01.12', 'BG11110006', '5103000.00', 1, 0, '5103000.00', 'Salah Pesan'),
(4, 'RF0002.27.01.12', 'BG11120001', '7904250.00', 1, 0, '7904250.00', 'Salah Pesan'),
(5, 'RF0003.27.01.12', 'PK11110001', '250000.00', 1, 0, '250000.00', 'Salah Pesan'),
(6, 'RF0003.27.01.12', 'PK11120001', '3196125.00', 1, 0, '3196125.00', 'Kelebihan Qty');

-- --------------------------------------------------------

--
-- Table structure for table `trsalesorder`
--

CREATE TABLE IF NOT EXISTS `trsalesorder` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdSO` varchar(20) NOT NULL,
  `TanggalSO` datetime NOT NULL,
  `KdSales` varchar(20) NOT NULL,
  `KdToko` varchar(20) NOT NULL,
  `GrandTotal` decimal(20,2) NOT NULL,
  `StatusSO` char(1) NOT NULL DEFAULT '0',
  `UserID` varchar(20) NOT NULL,
  `KomisiSales` double(20,2) DEFAULT '0.00',
  `jenis_so` enum('paku','klem') DEFAULT 'klem' COMMENT '0:klem, 1:paku',
  `disc` double DEFAULT '0',
  `Jumlah` decimal(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdSO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `trsalesorder`
--

INSERT INTO `trsalesorder` (`no_increment`, `KdSO`, `TanggalSO`, `KdSales`, `KdToko`, `GrandTotal`, `StatusSO`, `UserID`, `KomisiSales`, `jenis_so`, `disc`, `Jumlah`) VALUES
(2, 'SO0002.22.01.12', '2012-01-22 17:48:57', 'SL11120002', 'TK1111040003', '37191150.00', '2', '', 0.00, 'klem', 10, '41323500.00'),
(4, 'SO0004.22.01.12', '2012-01-22 18:24:05', 'SL11120002', 'TK1111040003', '66521250.00', '2', '', 0.00, 'klem', 0, '66521250.00'),
(6, 'SO0006.22.01.12', '2012-01-22 18:27:38', 'SL11120002', 'TK1111040003', '6892250.00', '2', '', 0.00, 'paku', 0, '6892250.00'),
(7, 'SO0007.22.01.12', '2012-01-22 00:00:00', 'SL11120002', 'TK1111040003', '1080000.00', '2', '', 0.00, 'paku', 10, '1200000.00'),
(10, 'SO0001.29.01.12', '2012-01-29 13:46:10', 'SL12010002', 'TK1112020007', '0.00', '2', '', 0.00, 'klem', 0, '0.00'),
(11, 'SO0002.29.01.12', '2012-01-29 00:00:00', 'SL12010002', 'TK1112020001', '80000.00', '3', '', 0.00, 'klem', 0, '80000.00'),
(13, 'SO0003.29.01.12', '2012-01-29 14:13:30', 'SL11120002', 'TK1112020007', '0.00', '0', '', 0.00, 'klem', 0, '0.00'),
(14, 'SO0004.29.01.12', '2012-01-29 15:30:15', 'SL12010001', 'TK1111040003', '14250.00', '2', '', 0.00, 'klem', 5, '15000.00'),
(15, 'SO0005.29.01.12', '2012-01-29 15:32:02', 'SL12010001', 'TK1112020001', '15000.00', '2', '', 0.00, 'klem', 0, '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trsalesorderdetail`
--

CREATE TABLE IF NOT EXISTS `trsalesorderdetail` (
  `KdSODetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdSO` varchar(20) NOT NULL,
  `KdBarang` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Qty` double NOT NULL,
  `Disc` double(10,2) NOT NULL,
  `StatusBarang` char(1) NOT NULL DEFAULT '0',
  `HargaDisc` decimal(20,2) NOT NULL,
  PRIMARY KEY (`KdSODetail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `trsalesorderdetail`
--

INSERT INTO `trsalesorderdetail` (`KdSODetail`, `KdSO`, `KdBarang`, `Harga`, `Qty`, `Disc`, `StatusBarang`, `HargaDisc`) VALUES
(1, 'SO0001.22.01.12', 'BG11110005', '5400000.00', 5, 0.00, '0', '5400000.00'),
(2, 'SO0001.22.01.12', 'BG11120001', '7904250.00', 5, 0.00, '0', '7904250.00'),
(3, 'SO0002.22.01.12', 'BG11110006', '5103000.00', 5, 0.00, '2', '5103000.00'),
(4, 'SO0002.22.01.12', 'BG11120001', '7904250.00', 2, 0.00, '2', '7904250.00'),
(7, 'SO0003.22.01.12', 'BG11110005', '5500000.00', 5, 0.00, '0', '5500000.00'),
(8, 'SO0003.22.01.12', 'BG11110006', '5103000.00', 5, 0.00, '0', '5103000.00'),
(9, 'SO0004.22.01.12', 'BG11120001', '7904250.00', 5, 0.00, '2', '7904250.00'),
(10, 'SO0004.22.01.12', 'BG11110005', '5400000.00', 5, 0.00, '2', '5400000.00'),
(11, 'SO0005.22.01.12', 'PK11100002', '300000.00', 3, 0.00, '0', '300000.00'),
(12, 'SO0005.22.01.12', 'PK11100001', '300000.00', 2, 0.00, '0', '300000.00'),
(13, 'SO0006.22.01.12', 'PK11110001', '250000.00', 2, 0.00, '2', '250000.00'),
(14, 'SO0006.22.01.12', 'PK11120001', '3196125.00', 2, 0.00, '2', '3196125.00'),
(17, 'SO0007.22.01.12', 'PK11100001', '300000.00', 2, 0.00, '2', '300000.00'),
(18, 'SO0007.22.01.12', 'PK11100002', '200000.00', 3, 0.00, '2', '200000.00'),
(24, 'SO0001.29.01.12', 'BG12010003', '4000.00', 100, 0.00, '2', '4000.00'),
(26, 'SO0002.29.01.12', 'BG12010003', '4000.00', 20, 0.00, '0', '4000.00'),
(28, 'SO0003.29.01.12', 'BG12010003', '4000.00', 20, 0.00, '0', '4000.00'),
(29, 'SO0004.29.01.12', 'BG12010001', '3000.00', 5, 0.00, '2', '3000.00'),
(30, 'SO0005.29.01.12', 'BG12010001', '3000.00', 5, 0.00, '2', '3000.00');

-- --------------------------------------------------------

--
-- Table structure for table `trsalesorderdetailpending`
--

CREATE TABLE IF NOT EXISTS `trsalesorderdetailpending` (
  `KdSODetail` int(11) NOT NULL AUTO_INCREMENT,
  `KdSO` varchar(20) NOT NULL,
  `KdBarang` varchar(20) NOT NULL,
  `Harga` decimal(20,2) NOT NULL,
  `Qty` double NOT NULL,
  `Disc` double(10,2) NOT NULL,
  `StatusBarang` char(1) NOT NULL DEFAULT '0',
  `HargaDisc` decimal(20,2) NOT NULL,
  PRIMARY KEY (`KdSODetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trsalesorderdetailpending`
--


-- --------------------------------------------------------

--
-- Table structure for table `trsalespayment`
--

CREATE TABLE IF NOT EXISTS `trsalespayment` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` varchar(20) NOT NULL,
  `KdFaktur` varchar(20) DEFAULT NULL,
  `TanggalSalesPayment` datetime NOT NULL,
  `KdSales` varchar(20) NOT NULL,
  `KdToko` varchar(20) NOT NULL,
  `TotalSalesPayment` decimal(20,2) NOT NULL,
  `StatusSalesPayment` char(1) NOT NULL DEFAULT '0',
  `Note` text NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `PaidBy` char(1) DEFAULT '1' COMMENT '1:LewatSales, 2:Langusng',
  `KdSO` varchar(20) DEFAULT NULL,
  `flag_payment` char(1) DEFAULT '0' COMMENT '0:perToko, 1:PerTanggal',
  `jenis_payment` enum('paku','klem') DEFAULT 'paku',
  `disc_payment` float DEFAULT '0',
  `komisi_sales` decimal(20,2) DEFAULT '0.00',
  PRIMARY KEY (`no_increment`,`KdSalesPayment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `trsalespayment`
--

INSERT INTO `trsalespayment` (`no_increment`, `KdSalesPayment`, `KdFaktur`, `TanggalSalesPayment`, `KdSales`, `KdToko`, `TotalSalesPayment`, `StatusSalesPayment`, `Note`, `UserID`, `PaidBy`, `KdSO`, `flag_payment`, `jenis_payment`, `disc_payment`, `komisi_sales`) VALUES
(1, 'PF0001.27.01.12/SL11', 'FK0001.22.01.12', '2012-01-27 00:00:00', 'SL11120002', 'TK1111040003', '13000000.00', '0', '', '', '2', NULL, '0', 'klem', 0, '2080000.00'),
(3, 'PF0002.27.01.12/SL11', 'FK0001.22.01.12', '2012-01-27 11:53:29', 'SL11120002', 'TK1111040003', '304250.00', '1', '', '', '2', NULL, '0', 'klem', 0, '48680.00'),
(4, 'PF0003.27.01.12/SL11', 'FK0002.27.01.12', '2012-01-27 12:01:42', 'SL11120002', 'TK1111040003', '446125.00', '0', '', '', '2', NULL, '0', 'paku', 0, '0.00'),
(5, 'PF0004.27.01.12/SL11', 'FK0003.27.01.12', '2012-01-27 12:03:44', 'SL11120002', 'TK1111040003', '80000.00', '0', '', '', '2', NULL, '0', 'paku', 10, '0.00'),
(6, 'PF0001.29.01.12/SL12', 'FK0002.29.01.12', '2012-01-29 15:32:22', 'SL12010001', 'TK1112020001', '15000.00', '1', '', '', '2', NULL, '0', 'klem', 0, '2400.00');

-- --------------------------------------------------------

--
-- Table structure for table `trsalespaymentbydate`
--

CREATE TABLE IF NOT EXISTS `trsalespaymentbydate` (
  `no_increment` bigint(20) NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` varchar(20) NOT NULL,
  `TanggalPayment` datetime DEFAULT NULL,
  `DariTanggal` datetime DEFAULT NULL,
  `SampaiTanggal` datetime NOT NULL,
  `KdSales` varchar(20) NOT NULL,
  `TotalSalesPayment` decimal(20,2) NOT NULL,
  `StatusSalesPayment` char(1) NOT NULL DEFAULT '0',
  `Note` text NOT NULL,
  `UserID` varchar(20) NOT NULL,
  `flag_payment` char(1) DEFAULT '0' COMMENT '0:perToko, 1:PerTanggal',
  `komisi_sales` double DEFAULT '0',
  `DiscPembayaran` double DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdSalesPayment`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `trsalespaymentbydate`
--

INSERT INTO `trsalespaymentbydate` (`no_increment`, `KdSalesPayment`, `TanggalPayment`, `DariTanggal`, `SampaiTanggal`, `KdSales`, `TotalSalesPayment`, `StatusSalesPayment`, `Note`, `UserID`, `flag_payment`, `komisi_sales`, `DiscPembayaran`) VALUES
(1, 'PF0005.27.01.12', '2012-01-27 12:46:26', '2012-01-27 12:46:26', '2012-02-27 12:46:26', 'SL11120002', '7675373.00', '0', '', '', '1', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `trsalespaymentbydatedetail`
--

CREATE TABLE IF NOT EXISTS `trsalespaymentbydatedetail` (
  `KdSalesPaymentDetail` double NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` varchar(20) DEFAULT NULL,
  `KdFaktur` varchar(20) DEFAULT NULL,
  `GrandtotalFaktur` decimal(20,2) DEFAULT '0.00',
  `PaidBy` char(1) DEFAULT '0' COMMENT '0:Lewat Sales, 1:Langsung ke om acu',
  PRIMARY KEY (`KdSalesPaymentDetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trsalespaymentbydatedetail`
--

INSERT INTO `trsalespaymentbydatedetail` (`KdSalesPaymentDetail`, `KdSalesPayment`, `KdFaktur`, `GrandtotalFaktur`, `PaidBy`) VALUES
(1, 'PF0005.27.01.12', 'FK0001.27.01.12', '11.00', '0'),
(2, 'PF0005.27.01.12', 'FK0002.27.01.12', '6.00', '1'),
(3, 'PF0005.27.01.12', 'FK0003.27.01.12', '1.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `trsalespaymentdetail`
--

CREATE TABLE IF NOT EXISTS `trsalespaymentdetail` (
  `KdSalesPaymentDetail` double NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` varchar(20) DEFAULT NULL,
  `KdBarang` varchar(20) DEFAULT NULL,
  `Harga` decimal(20,2) DEFAULT NULL,
  `Qty` double DEFAULT NULL,
  `Disc` double DEFAULT NULL,
  `StatusBarang` varchar(200) DEFAULT NULL,
  `HargaDisc` decimal(20,2) DEFAULT '0.00',
  PRIMARY KEY (`KdSalesPaymentDetail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `trsalespaymentdetail`
--

INSERT INTO `trsalespaymentdetail` (`KdSalesPaymentDetail`, `KdSalesPayment`, `KdBarang`, `Harga`, `Qty`, `Disc`, `StatusBarang`, `HargaDisc`) VALUES
(1, 'PF0001.29.01.12/SL12', 'BG12010001', '3000.00', 5, 0, 'Normal', '3000.00'),
(5, 'PF0002.27.01.12/SL11', 'BG11110005', '5500000.00', 1, 0, 'Retur', '5400000.00'),
(6, 'PF0002.27.01.12/SL11', 'BG11120001', '7904250.00', 1, 0, 'Retur', '7904250.00'),
(9, 'PF0003.27.01.12/SL11', 'PK11110001', '250000.00', 1, 0, 'Retur', '250000.00'),
(10, 'PF0003.27.01.12/SL11', 'PK11120001', '3196125.00', 1, 0, 'Retur', '3196125.00'),
(11, 'PF0004.27.01.12/SL11', 'PK11100001', '300000.00', 2, 0, 'Normal', '300000.00'),
(12, 'PF0004.27.01.12/SL11', 'PK11100002', '200000.00', 3, 0, 'Normal', '200000.00'),
(21, 'PF0001.27.01.12/SL11', 'BG11110005', '5500000.00', 1, 0, 'Retur', '5400000.00'),
(22, 'PF0001.27.01.12/SL11', 'BG11120001', '7904250.00', 1, 0, 'Retur', '7904250.00');

-- --------------------------------------------------------

--
-- Table structure for table `viewcetaklappo`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `db_tokoacu`.`viewcetaklappo` AS (select `ho`.`No_PO` AS `No Pemesanan`,date_format(`ho`.`Tanggal_PO`,'%d-%m-%Y') AS `Tgl Pemesanan`,`c`.`Nama` AS `Supplier`,`mp`.`KdBahanMentah` AS `Part No.`,`mp`.`NamaBahanMentah` AS `NamaBarang`,`do`.`jumlah` AS `Qty`,(case when (`ho`.`StatusPO` = 0) then 'New' when (`ho`.`StatusPO` = 1) then 'Confirm' when (`ho`.`StatusPO` = 2) then 'Barang Diterima' end) AS `Status PO` from (((`db_tokoacu`.`trheaderpo` `ho` join `db_tokoacu`.`trdetailpo` `do` on((`ho`.`No_PO` = `do`.`no_po`))) join `db_tokoacu`.`msbahanmentah` `mp` on((`mp`.`KdBahanMentah` = `do`.`kdbahanmentah`))) join `db_tokoacu`.`mssupplier` `c` on((`c`.`KdSupplier` = `ho`.`KdSupplier`))) where ((date_format(`ho`.`Tanggal_PO`,'%Y-%m-%d') >= '2012-01-01') and (date_format(`ho`.`Tanggal_PO`,'%Y-%m-%d') <= '2012-01-29') and (`ho`.`StatusPO` <> 0)));

--
-- Dumping data for table `viewcetaklappo`
--


-- --------------------------------------------------------

--
-- Table structure for table `viewcetaktrreturbeli`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `db_tokoacu`.`viewcetaktrreturbeli` AS (select `retur`.`KdRetur` AS `KdRetur`,`retur`.`TanggalRetur` AS `TanggalRetur`,`retur`.`KdPB` AS `No Penerimaan`,`mt`.`Nama` AS `Nama`,`retur`.`GrandTotal` AS `Grandtotal`,`mp`.`KdBahanMentah` AS `KDBarang`,`mp`.`NamaBahanMentah` AS `NamaBarang`,`rd`.`Harga` AS `harga`,`rd`.`Disc` AS `disc`,`rd`.`Qty` AS `qty` from (((((`db_tokoacu`.`trheaderreturbeli` `retur` join `db_tokoacu`.`trheaderpb` `pb` on((`pb`.`No_PB` = `retur`.`KdPB`))) join `db_tokoacu`.`trdetailreturbeli` `rd` on((`rd`.`KdRetur` = `retur`.`KdRetur`))) join `db_tokoacu`.`msbahanmentah` `mp` on((`mp`.`KdBahanMentah` = `rd`.`KdBahanMentah`))) join `db_tokoacu`.`mssupplier` `mt` on((`mt`.`KdSupplier` = `pb`.`KdSupplier`))) join `db_tokoacu`.`msuser` `mu` on((`mu`.`userid` = `retur`.`UserID`))) where (`retur`.`KdRetur` = 'RB1201210001'));

--
-- Dumping data for table `viewcetaktrreturbeli`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
