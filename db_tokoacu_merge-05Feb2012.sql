/*
SQLyog Ultimate v8.32 
MySQL - 5.1.41 : Database - db_dai
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_dai` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_dai`;

/*Table structure for table `bahanmentahhistory` */

DROP TABLE IF EXISTS `bahanmentahhistory`;

CREATE TABLE `bahanmentahhistory` (
  `KdHistory` INT(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` VARCHAR(20) NOT NULL,
  `UserID` VARCHAR(20) DEFAULT NULL,
  `TanggalHistory` DATETIME NOT NULL,
  `StockAwal` DOUBLE NOT NULL DEFAULT '0',
  `QtyProd_Min` DOUBLE NOT NULL DEFAULT '0',
  `QtyPurchase_Plus` DOUBLE NOT NULL DEFAULT '0',
  `QtyUpdate_Min` DOUBLE NOT NULL DEFAULT '0',
  `QtyUpdate_Plus` DOUBLE NOT NULL DEFAULT '0',
  `QtyAdj_Min` DOUBLE NOT NULL DEFAULT '0',
  `QtyRetur_Plus` DOUBLE DEFAULT '0',
  `QtyRetur_Min` DOUBLE DEFAULT '0',
  `QtyAdj_Plus` DOUBLE NOT NULL DEFAULT '0',
  `QtyFaktur_Min` DOUBLE DEFAULT '0',
  `StatusBahanMentahList` CHAR(1) NOT NULL DEFAULT '0',
  `StockAkhir` DOUBLE NOT NULL DEFAULT '0',
  `HargaAwal` DECIMAL(20,2) NOT NULL DEFAULT '0.00',
  `HargaAkhir` DECIMAL(20,2) NOT NULL DEFAULT '0.00',
  `Module` VARCHAR(200) DEFAULT NULL,
  `RefNumber` VARCHAR(20) DEFAULT NULL,
  `Keterangan` TEXT,
  `isActive` CHAR(1) NOT NULL DEFAULT '1',
  `Jenis` ENUM('Paku','Klem') DEFAULT NULL,
  PRIMARY KEY (`KdHistory`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `bahanmentahhistory` */

/*Table structure for table `baranghistory` */

DROP TABLE IF EXISTS `baranghistory`;

CREATE TABLE `baranghistory` (
  `KdBarangHistory` INT(11) NOT NULL AUTO_INCREMENT,
  `KdBarang` VARCHAR(20) NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `TanggalHistory` DATETIME NOT NULL,
  `StockAwal` DOUBLE DEFAULT '0',
  `QtyUpdate_Min` DOUBLE DEFAULT '0',
  `QtyUpdate_Plus` DOUBLE DEFAULT '0',
  `QtyFaktur_Min` DOUBLE DEFAULT '0',
  `QtyRetur_Plus` DOUBLE DEFAULT '0',
  `QtyRetur_Min` DOUBLE DEFAULT '0',
  `QtyPurchase_Plus` DOUBLE DEFAULT '0',
  `QtyProd_Plus` DOUBLE DEFAULT '0',
  `QtyAdj_Min` DOUBLE DEFAULT '0',
  `QtyAdj_Plus` DOUBLE DEFAULT '0',
  `StatusBarangList` CHAR(1) DEFAULT '0',
  `StockAkhir` DOUBLE DEFAULT '0',
  `HargaAwal` DECIMAL(20,2) DEFAULT '0.00',
  `HargaAkhir` DECIMAL(20,2) DEFAULT '0.00',
  `Module` VARCHAR(200) DEFAULT NULL,
  `RefNumber` VARCHAR(20) DEFAULT NULL,
  `Keterangan` TEXT,
  `isActive` CHAR(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`KdBarangHistory`),
  KEY `KdBarang` (`KdBarang`),
  KEY `UserID` (`UserID`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `baranghistory` */

INSERT  INTO `baranghistory`(`KdBarangHistory`,`KdBarang`,`UserID`,`TanggalHistory`,`StockAwal`,`QtyUpdate_Min`,`QtyUpdate_Plus`,`QtyFaktur_Min`,`QtyRetur_Plus`,`QtyRetur_Min`,`QtyPurchase_Plus`,`QtyProd_Plus`,`QtyAdj_Min`,`QtyAdj_Plus`,`StatusBarangList`,`StockAkhir`,`HargaAwal`,`HargaAkhir`,`Module`,`RefNumber`,`Keterangan`,`isActive`) VALUES (1,'BG12010001','','2012-01-29 15:28:19',0,0,10,0,0,0,0,0,0,0,'0',10,'3000.00','0.00','Form Barang','',NULL,'1'),(2,'BG12010001','','2012-01-29 15:30:18',10,0,0,5,0,0,0,0,0,0,'0',5,'3000.00','3000.00','Form Faktur','FK0001.29.01.12',NULL,'1'),(3,'BG12010001','','2012-01-29 15:31:53',5,0,0,5,0,0,0,0,0,0,'0',0,'3000.00','3000.00','Form Faktur','FK0002.29.01.12',NULL,'1'),(4,'BG12020001','','2012-02-10 16:45:38',0,0,500,0,0,0,0,0,0,0,'0',500,'3000.00','0.00','Form Barang','',NULL,'1');

/*Table structure for table `msbahanmentah` */

DROP TABLE IF EXISTS `msbahanmentah`;

CREATE TABLE `msbahanmentah` (
  `KdBahanMentah` VARCHAR(20) NOT NULL,
  `KdSupplier` VARCHAR(20) DEFAULT NULL,
  `NamaBahanMentah` VARCHAR(200) DEFAULT NULL,
  `Ukuran` VARCHAR(20) DEFAULT NULL,
  `Jenis` ENUM('Klem','Paku') DEFAULT NULL,
  `Satuan` ENUM('Karung','Kg') DEFAULT NULL,
  `IsAktif` CHAR(1) DEFAULT '1',
  `HargaJualKg` DECIMAL(20,2) NOT NULL,
  `HargaJualKarung` DECIMAL(20,2) NOT NULL,
  `KarungToKg` DOUBLE(20,2) NOT NULL,
  PRIMARY KEY (`KdBahanMentah`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msbahanmentah` */

/*Table structure for table `msbahanmentahlist` */

DROP TABLE IF EXISTS `msbahanmentahlist`;

CREATE TABLE `msbahanmentahlist` (
  `KdBahanMentahList` INT(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` VARCHAR(20) DEFAULT NULL,
  `Harga` DECIMAL(20,2) DEFAULT NULL,
  `Qty` DOUBLE DEFAULT NULL,
  `Jenis` ENUM('Paku','Klem') DEFAULT NULL,
  `StatusBahanMentahList` CHAR(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdBahanMentahList`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msbahanmentahlist` */

/*Table structure for table `msbarang` */

DROP TABLE IF EXISTS `msbarang`;

CREATE TABLE `msbarang` (
  `KdBarang` VARCHAR(20) NOT NULL,
  `KdMerk` VARCHAR(20) NOT NULL,
  `NamaBarang` VARCHAR(200) NOT NULL,
  `Ukuran` INT(11) DEFAULT NULL,
  `Satuan` VARCHAR(20) DEFAULT 'pack',
  `IsAktif` CHAR(1) DEFAULT NULL,
  `Note` TEXT,
  `HargaList` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`KdBarang`),
  KEY `KdMerk` (`KdMerk`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msbarang` */

INSERT  INTO `msbarang`(`KdBarang`,`KdMerk`,`NamaBarang`,`Ukuran`,`Satuan`,`IsAktif`,`Note`,`HargaList`) VALUES ('BG12010001','MR001','Yan60 -ukuran5',5,'Pack','1',NULL,'3000.00'),('BG12020001','MR001','Yan60 -ukuran9',9,'Pack','1',NULL,'3000.00');

/*Table structure for table `msbaranglist` */

DROP TABLE IF EXISTS `msbaranglist`;

CREATE TABLE `msbaranglist` (
  `KdList` INT(11) NOT NULL AUTO_INCREMENT,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `StatusBarangList` CHAR(1) NOT NULL DEFAULT '0',
  `StatusBarang` CHAR(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdList`),
  KEY `KdBarang` (`KdBarang`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `msbaranglist` */

INSERT  INTO `msbaranglist`(`KdList`,`KdBarang`,`Harga`,`Qty`,`StatusBarangList`,`StatusBarang`) VALUES (1,'BG12020001','3000.00',500,'0','0');

/*Table structure for table `msformula` */

DROP TABLE IF EXISTS `msformula`;

CREATE TABLE `msformula` (
  `QtyKlemMentah` INT(11) NOT NULL,
  `QtyPaku` INT(11) NOT NULL,
  `QtyKlemJadi` INT(11) NOT NULL,
  `UkuranKlemMentah` INT(2) NOT NULL,
  `UkuranPaku` VARCHAR(50) NOT NULL,
  `Tipe` ENUM('hitung','pantek') NOT NULL DEFAULT 'pantek',
  PRIMARY KEY (`UkuranKlemMentah`,`UkuranPaku`,`Tipe`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;

/*Data for the table `msformula` */

/*Table structure for table `msformulapantek` */

DROP TABLE IF EXISTS `msformulapantek`;

CREATE TABLE `msformulapantek` (
  `QtyKlemMentah` INT(11) NOT NULL,
  `QtyPaku` INT(11) NOT NULL,
  `QtyKlemJadi` INT(11) NOT NULL,
  `UkuranKlemMentah` INT(2) NOT NULL,
  PRIMARY KEY (`UkuranKlemMentah`)
) ENGINE=MYISAM DEFAULT CHARSET=latin1;

/*Data for the table `msformulapantek` */

INSERT  INTO `msformulapantek`(`QtyKlemMentah`,`QtyPaku`,`QtyKlemJadi`,`UkuranKlemMentah`) VALUES (1,1,1,4),(1,2,2,5),(5,5,5,10);

/*Table structure for table `mskaryawan` */

DROP TABLE IF EXISTS `mskaryawan`;

CREATE TABLE `mskaryawan` (
  `KdKaryawan` VARCHAR(20) NOT NULL,
  `NamaKaryawan` VARCHAR(200) DEFAULT NULL,
  `Alamat` TEXT,
  `NoTelp` VARCHAR(20) DEFAULT NULL,
  `NoHP` VARCHAR(20) DEFAULT NULL,
  `JenisKaryawan` VARCHAR(70) DEFAULT NULL,
  PRIMARY KEY (`KdKaryawan`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mskaryawan` */

INSERT  INTO `mskaryawan`(`KdKaryawan`,`NamaKaryawan`,`Alamat`,`NoTelp`,`NoHP`,`JenisKaryawan`) VALUES ('KY11090001','Eti','Jl. Cengkareng','-','22','Memantek Klem'),('KY11090002','Endang','Jl. Cengkareng','-','2323','Memantek Klem'),('KY11090003','Rasman','Jl. Cengkareng','-','23','Memantek Klem');

/*Table structure for table `msklempantek` */

DROP TABLE IF EXISTS `msklempantek`;

CREATE TABLE `msklempantek` (
  `KdKlemPantek` INT(11) NOT NULL AUTO_INCREMENT,
  `KdBahanMentah` VARCHAR(20) DEFAULT NULL,
  `Harga` DECIMAL(20,2) DEFAULT NULL,
  `Qty` DOUBLE DEFAULT NULL,
  PRIMARY KEY (`KdKlemPantek`),
  KEY `KdBahanMentah` (`KdBahanMentah`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msklempantek` */

/*Table structure for table `msmerk` */

DROP TABLE IF EXISTS `msmerk`;

CREATE TABLE `msmerk` (
  `kdmerk` VARCHAR(20) NOT NULL,
  `merk` VARCHAR(50) DEFAULT NULL,
  `isi` INT(11) DEFAULT '0',
  `prioritas` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`kdmerk`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msmerk` */

INSERT  INTO `msmerk`(`kdmerk`,`merk`,`isi`,`prioritas`) VALUES ('MR001','Yan60',60,'1'),('MR002','onaga 50',50,'0');

/*Table structure for table `mssales` */

DROP TABLE IF EXISTS `mssales`;

CREATE TABLE `mssales` (
  `KdSales` VARCHAR(20) NOT NULL,
  `NamaSales` VARCHAR(200) DEFAULT NULL,
  `Alamat` TEXT,
  `NoTelp` VARCHAR(20) DEFAULT NULL,
  `NoHP` VARCHAR(20) DEFAULT NULL,
  `Komisi` DOUBLE DEFAULT '0',
  PRIMARY KEY (`KdSales`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mssales` */

INSERT  INTO `mssales`(`KdSales`,`NamaSales`,`Alamat`,`NoTelp`,`NoHP`,`Komisi`) VALUES ('SL12020001','kiki','sumatra','-','',11),('SL12020002','Kiangiok','Jawa','-','',16),('SL12020003','Kianiong','Bandung','-','',16),('SL12020004','Changming','Jakarta','-','',0),('SL12020005','Main','Jakarta','-','',0),('SL12020006','Dalam Kota','Jakarta','-','',0);

/*Table structure for table `mssupplier` */

DROP TABLE IF EXISTS `mssupplier`;

CREATE TABLE `mssupplier` (
  `KdSupplier` VARCHAR(20) NOT NULL,
  `Nama` VARCHAR(200) DEFAULT NULL,
  `Alamat` TEXT,
  `Daerah` VARCHAR(100) DEFAULT NULL,
  `NoTelp` VARCHAR(20) DEFAULT NULL,
  `NoHP` VARCHAR(20) DEFAULT NULL,
  `noFax` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`KdSupplier`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mssupplier` */

/*Table structure for table `mstoko` */

DROP TABLE IF EXISTS `mstoko`;

CREATE TABLE `mstoko` (
  `KdToko` VARCHAR(20) NOT NULL,
  `NamaToko` VARCHAR(200) DEFAULT NULL,
  `NamaOwner` VARCHAR(200) DEFAULT NULL,
  `AlamatToko` TEXT,
  `Daerah` VARCHAR(200) DEFAULT NULL,
  `NoTelp` VARCHAR(20) DEFAULT NULL,
  `NoHP` VARCHAR(20) DEFAULT NULL,
  `NoFax` VARCHAR(20) DEFAULT NULL,
  `JatuhTempo` INT(11) DEFAULT NULL,
  PRIMARY KEY (`KdToko`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `mstoko` */

INSERT  INTO `mstoko`(`KdToko`,`NamaToko`,`NamaOwner`,`AlamatToko`,`Daerah`,`NoTelp`,`NoHP`,`NoFax`,`JatuhTempo`) VALUES ('TK1202040001','Sinar Abadi','Bp Ridwan Suwardi','JL Cibadak No 226','Bandung','-','','',60),('TK1202040002','Sejahtera','-','JL Banceuy No 55 - 57','Bandung','-','','',60),('TK1202040003','Bintang Terang','-','JL Sukajadi No 34','Bandung','-','','',30),('TK1202040004','Aneka Sinar','-','JL Banceuy No 76','Bandung','-','','',60),('TK1202040005','Mekar','-','JL Mangun Sarkoro No 138','Cianjur','-','','',60),('TK1202040006','Sinar Jaya','-','Muara Karang','Jakarta','-','','',60),('TK1202040007','Musi Indah','-','Kepu','Jakarta','-','','',30),('TK1202040008','Sinar Bintang','-','TPI 2','Jakarta','-','','',1),('TK1202040009','Seruling','-','Tangerang','Tangerang','-','','',60),('TK1202040010','Panca Cahaya','-','JL Cibadak No 41','Bandung','-','','',60),('TK1202040011','Iwan E','-','JL Taman Cibaduyut Indah Blok B No KP 1','Bandung','022-5409361','','',60),('TK1202040012','Wahyu','Sejahtera ( bdg )','JL Ahmad Yani KM 3 \r\nDelta Suzuki','Banjarmasin','-','','',60),('TK1202040013','Lautan Karang Jaya','-','Cikarang','Cikarang','-','','',60),('TK1202040014','Kilat','-','JL Banceuy No 88','Bandung','-','','',60),('TK1202100001','Neon','-','JL Pegadaian No 62','Solo','-','','',14),('TK1202100002','Gajah Mada','-','JL Progo No 10','Pekalongn','-','','',60),('TK1202100003','Kencana','-','JL Sultan Agung No 136','Pekalongan','-','','',60),('TK1202100004','Sinar Jaya','-','JL Yos Sudarso 101-103','Solo','-','','',60),('TK1202100005','Sinar Mulia','-','JL Brigjen selamat Riyadi No 39','Solo','0271-644583','','',60),('TK1202100006','Surya Abadi','Sentral ( magelang )','JL Kapten tendean ( Nusukan )','Solo','-','','',60),('TK1202100007','Panca Mulia','-','JL Keratonan No 113','Solo','-','','',60),('TK1202100008','Sinar Abadi','-','JL jendral Sudirman 964 \r\n( Komplek Pertokoan Isola No 7 )','Purwokerto','-','','',60),('TK1202100009','Oriental','-','JL Jendral Sudirman A / 9','Pontianak','-','','',60),('TK1202100010','Tujuh Enam','-','JL Tujuh Enam','Wonogiri','-','','',60),('TK1202100011','Cahaya Mulia','-','JL Pagongan No 10 A','Cirebon','-','','',60),('TK1202100012','Sentral','-','JL Sunan Bonang No 9A \r\nDekat Akmil','Magelang','-','','',60),('TK1202100013','Sinar','-','JL Pemuda No 95','Magelang','-','','',60);

/*Table structure for table `msuser` */

DROP TABLE IF EXISTS `msuser`;

CREATE TABLE `msuser` (
  `userid` VARCHAR(20) NOT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `Password` VARCHAR(20) DEFAULT NULL,
  `NamaLengkap` VARCHAR(50) DEFAULT NULL,
  `Level` CHAR(1) DEFAULT '1',
  PRIMARY KEY (`userid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `msuser` */

INSERT  INTO `msuser`(`userid`,`username`,`Password`,`NamaLengkap`,`Level`) VALUES ('','a','a','User1','1');

/*Table structure for table `tradjusment` */

DROP TABLE IF EXISTS `tradjusment`;

CREATE TABLE `tradjusment` (
  `KdAdj` VARCHAR(20) NOT NULL,
  `TanggalAdj` DATETIME DEFAULT NULL,
  `KdBarang` VARCHAR(20) DEFAULT NULL,
  `Type` CHAR(1) DEFAULT NULL,
  `Harga` DECIMAL(20,2) DEFAULT NULL,
  `Qty` DOUBLE DEFAULT NULL,
  `Note` TEXT,
  `LevelID` CHAR(1) NOT NULL DEFAULT '0',
  `HargaList` DECIMAL(20,2) DEFAULT '0.00',
  `jenis_adj` ENUM('paku','klem_mentah','klem_jadi') DEFAULT 'klem_jadi',
  PRIMARY KEY (`KdAdj`),
  KEY `KdBarang` (`KdBarang`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `tradjusment` */

/*Table structure for table `trdetailpb` */

DROP TABLE IF EXISTS `trdetailpb`;

CREATE TABLE `trdetailpb` (
  `No_PB` VARCHAR(20) NOT NULL,
  `kdbahanmentah` VARCHAR(20) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Qty_real` DOUBLE DEFAULT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Disc` FLOAT DEFAULT '0',
  `QtyPenerimaan` DOUBLE DEFAULT '0',
  PRIMARY KEY (`No_PB`,`kdbahanmentah`),
  KEY `KdBarang` (`kdbahanmentah`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trdetailpb` */

/*Table structure for table `trdetailpo` */

DROP TABLE IF EXISTS `trdetailpo`;

CREATE TABLE `trdetailpo` (
  `no_po` VARCHAR(20) NOT NULL,
  `kdbahanmentah` VARCHAR(20) NOT NULL,
  `jumlah` FLOAT NOT NULL,
  `jumlah_real` FLOAT DEFAULT NULL,
  `harga` DECIMAL(20,2) NOT NULL DEFAULT '0.00'
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trdetailpo` */

/*Table structure for table `trdetailreturbeli` */

DROP TABLE IF EXISTS `trdetailreturbeli`;

CREATE TABLE `trdetailreturbeli` (
  `KdReturDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdRetur` VARCHAR(20) NOT NULL,
  `KdBahanMentah` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Disc` FLOAT(3,2) DEFAULT '0.00',
  `Qty_real` DOUBLE DEFAULT NULL,
  PRIMARY KEY (`KdReturDetail`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trdetailreturbeli` */

/*Table structure for table `trfaktur` */

DROP TABLE IF EXISTS `trfaktur`;

CREATE TABLE `trfaktur` (
  `no_increment` BIGINT(200) NOT NULL AUTO_INCREMENT,
  `KdFaktur` VARCHAR(20) NOT NULL,
  `KdSO` VARCHAR(20) NOT NULL,
  `TanggalFaktur` DATETIME NOT NULL,
  `KdSales` VARCHAR(20) NOT NULL,
  `KdToko` VARCHAR(20) NOT NULL,
  `GrandTotal` DECIMAL(20,2) NOT NULL,
  `StatusFaktur` CHAR(1) NOT NULL DEFAULT '0',
  `StatusPayment` CHAR(1) DEFAULT '0',
  `UserID` VARCHAR(20) NOT NULL,
  `KdSJ` VARCHAR(20) DEFAULT NULL,
  `TanggalSJ` DATETIME DEFAULT NULL,
  `TotalKomisiSales` DECIMAL(20,2) DEFAULT '0.00',
  `KomisiPersen` DOUBLE(20,2) NOT NULL,
  `TanggalJT` DATE DEFAULT NULL,
  `jenis_faktur` ENUM('paku','klem') DEFAULT 'klem',
  `Disc` DOUBLE DEFAULT '0',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdFaktur`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `trfaktur` */

INSERT  INTO `trfaktur`(`no_increment`,`KdFaktur`,`KdSO`,`TanggalFaktur`,`KdSales`,`KdToko`,`GrandTotal`,`StatusFaktur`,`StatusPayment`,`UserID`,`KdSJ`,`TanggalSJ`,`TotalKomisiSales`,`KomisiPersen`,`TanggalJT`,`jenis_faktur`,`Disc`,`Jumlah`) VALUES (1,'FK0001.29.01.12','SO0004.29.01.12','2012-01-29 15:30:35','SL12010001','TK1111040003','14250.00','1','0','',NULL,NULL,'0.00',0.00,'2012-02-08','klem',5,'15000.00'),(2,'FK0002.29.01.12','SO0005.29.01.12','2012-01-29 15:32:15','SL12010001','TK1112020001','15000.00','1','1','',NULL,NULL,'0.00',0.00,'2012-02-08','klem',0,'15000.00');

/*Table structure for table `trfakturdetail` */

DROP TABLE IF EXISTS `trfakturdetail`;

CREATE TABLE `trfakturdetail` (
  `KdFakturDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdFaktur` VARCHAR(20) NOT NULL,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `QtyFaktur` DOUBLE NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Disc` DOUBLE NOT NULL,
  `StatusBarang` CHAR(1) NOT NULL DEFAULT '0',
  `KomisiSales` DECIMAL(20,2) DEFAULT '0.00',
  `HargaDisc` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`KdFakturDetail`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `trfakturdetail` */

INSERT  INTO `trfakturdetail`(`KdFakturDetail`,`KdFaktur`,`KdBarang`,`Harga`,`QtyFaktur`,`Qty`,`Disc`,`StatusBarang`,`KomisiSales`,`HargaDisc`) VALUES (1,'FK0001.29.01.12','BG12010001','3000.00',0,5,0,'0','0.00','3000.00'),(2,'FK0002.29.01.12','BG12010001','3000.00',0,5,0,'0','0.00','3000.00');

/*Table structure for table `trheaderpb` */

DROP TABLE IF EXISTS `trheaderpb`;

CREATE TABLE `trheaderpb` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `No_PB` VARCHAR(20) NOT NULL,
  `No_PO` VARCHAR(20) NOT NULL,
  `userid` VARCHAR(20) NOT NULL,
  `KdSupplier` VARCHAR(20) DEFAULT NULL,
  `Tanggal_TerimaBarang` DATETIME NOT NULL,
  `StatusTerimaBarang` CHAR(1) NOT NULL DEFAULT '0',
  `GrandTotal` DOUBLE(20,2) NOT NULL DEFAULT '0.00',
  `StatusPaid` CHAR(1) NOT NULL DEFAULT '0',
  `jenis_pb` ENUM('paku','klem','klem_jadi') DEFAULT 'paku',
  `Disc` DOUBLE DEFAULT '0',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00',
  `StatusPayment` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`No_PB`),
  KEY `userid` (`userid`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trheaderpb` */

/*Table structure for table `trheaderpb_t` */

DROP TABLE IF EXISTS `trheaderpb_t`;

CREATE TABLE `trheaderpb_t` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `No_PB` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`no_increment`,`No_PB`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trheaderpb_t` */

/*Table structure for table `trheaderpo` */

DROP TABLE IF EXISTS `trheaderpo`;

CREATE TABLE `trheaderpo` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `No_PO` VARCHAR(20) NOT NULL,
  `userid` VARCHAR(20) NOT NULL,
  `Tanggal_PO` DATETIME NOT NULL,
  `KdSupplier` VARCHAR(12) NOT NULL,
  `StatusPO` CHAR(1) NOT NULL DEFAULT '0',
  `GrandTotal` DECIMAL(20,2) NOT NULL DEFAULT '0.00',
  `jenis_po` ENUM('paku','klem','klem_jadi') DEFAULT 'paku',
  `disc` FLOAT NOT NULL DEFAULT '0',
  PRIMARY KEY (`no_increment`,`No_PO`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trheaderpo` */

/*Table structure for table `trheaderpo_t` */

DROP TABLE IF EXISTS `trheaderpo_t`;

CREATE TABLE `trheaderpo_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `no_po` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`no_increment`,`no_po`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `trheaderpo_t` */

INSERT  INTO `trheaderpo_t`(`no_increment`,`no_po`) VALUES (1,'');

/*Table structure for table `trheaderreturbeli` */

DROP TABLE IF EXISTS `trheaderreturbeli`;

CREATE TABLE `trheaderreturbeli` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdRetur` VARCHAR(20) NOT NULL,
  `KdPB` VARCHAR(20) NOT NULL,
  `TanggalRetur` DATETIME NOT NULL,
  `KdSupplier` VARCHAR(20) NOT NULL,
  `GrandTotal` DECIMAL(20,2) NOT NULL,
  `StatusRetur` CHAR(1) NOT NULL DEFAULT '0',
  `Note` TEXT NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `No_PO` VARCHAR(20) DEFAULT NULL,
  `AfterPaid` CHAR(1) DEFAULT '0',
  `jenis_retur` ENUM('paku','klem','klem_jadi') DEFAULT 'klem',
  `Disc` DOUBLE DEFAULT '0',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00',
  PRIMARY KEY (`no_increment`,`KdRetur`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trheaderreturbeli` */

/*Table structure for table `trhitung` */

DROP TABLE IF EXISTS `trhitung`;

CREATE TABLE `trhitung` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` VARCHAR(25) NOT NULL,
  `TanggalHitung` DATETIME DEFAULT NULL,
  `KdKaryawan` VARCHAR(25) DEFAULT NULL,
  `KdUser` VARCHAR(25) DEFAULT NULL,
  `StatusHitung` CHAR(1) DEFAULT '0',
  `StatusPayment` CHAR(1) DEFAULT '0',
  `TelahDihitung` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdHitung`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trhitung` */

/*Table structure for table `trhitung_diterima` */

DROP TABLE IF EXISTS `trhitung_diterima`;

CREATE TABLE `trhitung_diterima` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` VARCHAR(25) NOT NULL,
  `KdHitung` VARCHAR(25) DEFAULT NULL,
  `TanggalHitungDiterima` DATETIME DEFAULT NULL,
  `KdKaryawan` VARCHAR(25) DEFAULT NULL,
  `KdUser` VARCHAR(25) DEFAULT NULL,
  `StatusHitungDiterima` CHAR(1) DEFAULT '0',
  `StatusPaymentDiterima` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdHitungDiterima`)
) ENGINE=INNODB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `trhitung_diterima` */

INSERT  INTO `trhitung_diterima`(`no_increment`,`KdHitungDiterima`,`KdHitung`,`TanggalHitungDiterima`,`KdKaryawan`,`KdUser`,`StatusHitungDiterima`,`StatusPaymentDiterima`) VALUES (6,'HD12010001','PH12010001','2012-01-17 00:00:00','KY11090002','KY11090002','1','0'),(7,'HD12010002','PH12010002','2012-01-17 00:00:00','KY11090002','KY11090002','1','0'),(8,'HD12010003','PH12010003','2012-01-27 00:00:00','KY11090002','KY11090002','1','1'),(9,'HD12010004','PH12010004','2012-01-29 15:20:46','KY11090002','KY11090002','0','0');

/*Table structure for table `trhitung_diterima_t` */

DROP TABLE IF EXISTS `trhitung_diterima_t`;

CREATE TABLE `trhitung_diterima_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdHitungDiterima`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trhitung_diterima_t` */

/*Table structure for table `trhitung_t` */

DROP TABLE IF EXISTS `trhitung_t`;

CREATE TABLE `trhitung_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdHitung`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trhitung_t` */

/*Table structure for table `trhitungdetail` */

DROP TABLE IF EXISTS `trhitungdetail`;

CREATE TABLE `trhitungdetail` (
  `KdHitungDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` VARCHAR(25) NOT NULL,
  `KdKlemHitung` VARCHAR(20) NOT NULL,
  `QtyKlemHitung` DOUBLE NOT NULL,
  `StatusKlemMentah` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`KdHitungDetail`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trhitungdetail` */

/*Table structure for table `trhitungdetail_diterima` */

DROP TABLE IF EXISTS `trhitungdetail_diterima`;

CREATE TABLE `trhitungdetail_diterima` (
  `KdHitungDiterimaDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitungDiterima` VARCHAR(25) NOT NULL,
  `KdKlemJadi` VARCHAR(20) NOT NULL,
  `HargaModalKlemJadi` DECIMAL(20,0) NOT NULL DEFAULT '0',
  `QtyKlemJadi` INT(11) NOT NULL,
  `QtyKlemPrioritas` INT(11) DEFAULT NULL,
  PRIMARY KEY (`KdHitungDiterimaDetail`)
) ENGINE=INNODB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `trhitungdetail_diterima` */

INSERT  INTO `trhitungdetail_diterima`(`KdHitungDiterimaDetail`,`KdHitungDiterima`,`KdKlemJadi`,`HargaModalKlemJadi`,`QtyKlemJadi`,`QtyKlemPrioritas`) VALUES (7,'HD12010001','BG11110005','30000',20,NULL),(8,'HD12010001','BG11110006','40000',200,NULL),(9,'HD12010001','BG11120001','50000',20,NULL),(11,'HD12010002','BG11110005','50000',200,NULL),(14,'HD12010003','BG11110006','30000',100,83),(15,'HD12010003','BG11120001','3000',50,50),(16,'HD12010004','BG11110006','2000',10,8),(17,'HD12010004','BG12010002','2000',100,100),(18,'HD12010004','BG11120002','2000',20,20);

/*Table structure for table `trhitungdetail_hasil` */

DROP TABLE IF EXISTS `trhitungdetail_hasil`;

CREATE TABLE `trhitungdetail_hasil` (
  `KdHitungDetailHasil` INT(11) NOT NULL AUTO_INCREMENT,
  `KdHitung` VARCHAR(25) NOT NULL,
  `KdKlemJadi` VARCHAR(20) NOT NULL,
  `QtyKlemJadi` DOUBLE NOT NULL,
  `StatusKlemMentah` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`KdHitungDetailHasil`)
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `trhitungdetail_hasil` */

INSERT  INTO `trhitungdetail_hasil`(`KdHitungDetailHasil`,`KdHitung`,`KdKlemJadi`,`QtyKlemJadi`,`StatusKlemMentah`) VALUES (5,'PH12010001','BG11110005',20,'0'),(6,'PH12010001','BG11110006',0,'0'),(7,'PH12010001','BG11120001',20,'0'),(8,'PH12010002','BG11110005',200,'0'),(16,'PH12010003','BG11110006',15,'0'),(17,'PH12010003','BG11120001',10,'0'),(18,'PH12010004','BG11110006',10,'0'),(19,'PH12010004','BG11120002',10,'0'),(20,'PH12010004','BG12010002',0,'0');

/*Table structure for table `trpantek` */

DROP TABLE IF EXISTS `trpantek`;

CREATE TABLE `trpantek` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` VARCHAR(25) NOT NULL,
  `TanggalPantek` DATETIME DEFAULT NULL,
  `KdKaryawan` VARCHAR(25) DEFAULT NULL,
  `KdUser` VARCHAR(25) DEFAULT NULL,
  `StatusPantek` CHAR(1) DEFAULT '0',
  `StatusPayment` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPantek`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `trpantek` */

INSERT  INTO `trpantek`(`no_increment`,`KdPantek`,`TanggalPantek`,`KdKaryawan`,`KdUser`,`StatusPantek`,`StatusPayment`) VALUES (1,'PK12010001','2012-01-29 15:08:13','KY11090002','','1','0'),(2,'PK12010002','2012-01-29 15:11:10','KY11090003','','2','0');

/*Table structure for table `trpantek_diterima` */

DROP TABLE IF EXISTS `trpantek_diterima`;

CREATE TABLE `trpantek_diterima` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` VARCHAR(25) NOT NULL,
  `KdPantek` VARCHAR(25) NOT NULL,
  `TanggalPantekDiterima` DATETIME DEFAULT NULL,
  `KdKaryawan` VARCHAR(25) DEFAULT NULL,
  `KdUser` VARCHAR(25) DEFAULT NULL,
  `StatusPantekDiterima` CHAR(1) DEFAULT '0',
  `StatusPaymentDiterima` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPantekDiterima`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `trpantek_diterima` */

INSERT  INTO `trpantek_diterima`(`no_increment`,`KdPantekDiterima`,`KdPantek`,`TanggalPantekDiterima`,`KdKaryawan`,`KdUser`,`StatusPantekDiterima`,`StatusPaymentDiterima`) VALUES (2,'PK12010002','PK12010001','2012-01-04 00:00:00','KY11090001','','1','0'),(3,'PK12010003','PK12010003','2012-01-27 13:35:28','KY11090002','','1','1'),(4,'PK12010004','PK12010002','2012-01-29 15:11:27','KY11090003','','1','0');

/*Table structure for table `trpantek_diterima_detail` */

DROP TABLE IF EXISTS `trpantek_diterima_detail`;

CREATE TABLE `trpantek_diterima_detail` (
  `KdPantekDiterimaDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` VARCHAR(25) NOT NULL,
  `KdKlemMentah` VARCHAR(20) NOT NULL,
  `QtyKlemMentah` DOUBLE NOT NULL,
  `KdPaku` VARCHAR(20) NOT NULL,
  `QtyPaku` DOUBLE NOT NULL,
  `QtyKlemMentahDiterima` DOUBLE NOT NULL,
  PRIMARY KEY (`KdPantekDiterimaDetail`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `trpantek_diterima_detail` */

INSERT  INTO `trpantek_diterima_detail`(`KdPantekDiterimaDetail`,`KdPantekDiterima`,`KdKlemMentah`,`QtyKlemMentah`,`KdPaku`,`QtyPaku`,`QtyKlemMentahDiterima`) VALUES (1,'PK12010001','KL11100001',1,'PK11100001',2,1),(3,'PK12010002','KL11100001',2,'PK11100001',2,2),(4,'PK12010003','KL11100001',2,'PK11100001',2,2),(5,'PK12010003','KL11100002',3,'PK11120001',3,3),(6,'PK12010004','KL11100001',3,'PK11120001',3,3);

/*Table structure for table `trpantek_diterima_t` */

DROP TABLE IF EXISTS `trpantek_diterima_t`;

CREATE TABLE `trpantek_diterima_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantekDiterima` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPantekDiterima`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trpantek_diterima_t` */

/*Table structure for table `trpantek_t` */

DROP TABLE IF EXISTS `trpantek_t`;

CREATE TABLE `trpantek_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPantek`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trpantek_t` */

/*Table structure for table `trpantekdetail` */

DROP TABLE IF EXISTS `trpantekdetail`;

CREATE TABLE `trpantekdetail` (
  `KdPantekDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPantek` VARCHAR(25) NOT NULL,
  `KdKlemMentah` VARCHAR(20) NOT NULL,
  `QtyKlemMentah` DOUBLE NOT NULL,
  `KdPaku` VARCHAR(20) NOT NULL,
  `QtyPaku` DOUBLE NOT NULL,
  `StatusKlemMentah` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`KdPantekDetail`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `trpantekdetail` */

INSERT  INTO `trpantekdetail`(`KdPantekDetail`,`KdPantek`,`KdKlemMentah`,`QtyKlemMentah`,`KdPaku`,`QtyPaku`,`StatusKlemMentah`) VALUES (1,'PK12010001','KL11100001',2,'PK11120001',2,'0'),(2,'PK12010001','KL12010002',3,'PK11120001',3,'0'),(3,'PK12010002','KL11100001',3,'PK11120001',3,'0');

/*Table structure for table `trpenggajian` */

DROP TABLE IF EXISTS `trpenggajian`;

CREATE TABLE `trpenggajian` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` VARCHAR(20) NOT NULL,
  `TanggalPenggajian` DATETIME DEFAULT NULL,
  `TanggalAwal` DATE DEFAULT NULL,
  `TanggalAkhir` DATE DEFAULT NULL,
  `KdUser` VARCHAR(25) DEFAULT NULL,
  `StatusPenggajian` CHAR(1) DEFAULT '0',
  `StatusPayment` CHAR(1) DEFAULT '0',
  PRIMARY KEY (`no_increment`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `trpenggajian` */

INSERT  INTO `trpenggajian`(`no_increment`,`KdPenggajian`,`TanggalPenggajian`,`TanggalAwal`,`TanggalAkhir`,`KdUser`,`StatusPenggajian`,`StatusPayment`) VALUES (5,'PG12010001','2012-01-28 00:00:00','2012-01-27','2012-01-28','','1','0');

/*Table structure for table `trpenggajian_t` */

DROP TABLE IF EXISTS `trpenggajian_t`;

CREATE TABLE `trpenggajian_t` (
  `no_increment` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`no_increment`,`KdPenggajian`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trpenggajian_t` */

/*Table structure for table `trpenggajiandetail` */

DROP TABLE IF EXISTS `trpenggajiandetail`;

CREATE TABLE `trpenggajiandetail` (
  `KdPenggajianDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdPenggajian` VARCHAR(20) NOT NULL,
  `KdReferensi` VARCHAR(200) NOT NULL,
  `KdKaryawan` VARCHAR(20) NOT NULL,
  `TanggalPengerjaan` TEXT NOT NULL,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Qty` INT(20) NOT NULL DEFAULT '0',
  `GajiPerQty` DECIMAL(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KdPenggajianDetail`)
) ENGINE=INNODB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `trpenggajiandetail` */

INSERT  INTO `trpenggajiandetail`(`KdPenggajianDetail`,`KdPenggajian`,`KdReferensi`,`KdKaryawan`,`TanggalPengerjaan`,`KdBarang`,`Qty`,`GajiPerQty`) VALUES (24,'PG12010001','PK12010003','KY11090002','27','KL11100001',2,'200'),(25,'PG12010001','PK12010003','KY11090002','27','KL11100002',3,'100'),(26,'PG12010001','HD12010003','KY11090002','27','BG11110006',100,'200'),(27,'PG12010001','HD12010003','KY11090002','27','BG11120001',50,'100');

/*Table structure for table `trpurchasepayment` */

DROP TABLE IF EXISTS `trpurchasepayment`;

CREATE TABLE `trpurchasepayment` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdPurchasePayment` VARCHAR(20) NOT NULL,
  `No_PB` VARCHAR(20) NOT NULL,
  `TanggalPurchasePayment` DATETIME NOT NULL,
  `KdSupplier` VARCHAR(20) NOT NULL,
  `TotalPurchasePayment` DECIMAL(20,2) NOT NULL,
  `StatusPurchasePayment` CHAR(1) NOT NULL DEFAULT '0',
  `Note` TEXT NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `PaidBy` VARCHAR(20) DEFAULT 'Cash',
  `No_PO` VARCHAR(20) DEFAULT NULL,
  `jenis_payment` ENUM('paku','klem','klem_jadi') DEFAULT 'klem',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00',
  `Disc` DOUBLE DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdPurchasePayment`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `trpurchasepayment` */

INSERT  INTO `trpurchasepayment`(`no_increment`,`KdPurchasePayment`,`No_PB`,`TanggalPurchasePayment`,`KdSupplier`,`TotalPurchasePayment`,`StatusPurchasePayment`,`Note`,`UserID`,`PaidBy`,`No_PO`,`jenis_payment`,`Jumlah`,`Disc`) VALUES (2,'FP1201220002','PB12010001','2012-01-22 00:00:00','SP11120001','12420000.00','1','','','Cheque',NULL,'klem','13800000.00',10),(3,'FP1201220003','PB12010006','2012-01-22 15:22:07','SP11120001','1350000.00','0','','','Transfer',NULL,'paku','1500000.00',10),(4,'FP1201290001','PB12010004','2012-01-29 12:43:47','SP11120001','5400000.00','0','','','Transfer',NULL,'klem','5400000.00',0),(5,'FP1201290002','PB12010002','2012-01-29 13:17:14','SP11120001','4500000.00','1','','','Transfer',NULL,'klem','4500000.00',0);

/*Table structure for table `trpurchasepaymentdetail` */

DROP TABLE IF EXISTS `trpurchasepaymentdetail`;

CREATE TABLE `trpurchasepaymentdetail` (
  `KdPurchasePaymentDetail` DOUBLE NOT NULL AUTO_INCREMENT,
  `KdPurchasePayment` VARCHAR(20) DEFAULT NULL,
  `KdBahanMentah` VARCHAR(20) DEFAULT NULL,
  `Harga` DECIMAL(20,2) DEFAULT NULL,
  `Qty` DOUBLE DEFAULT NULL,
  `Disc` DOUBLE DEFAULT NULL,
  `StatusBarang` VARCHAR(200) DEFAULT NULL,
  `Qty_real` DOUBLE DEFAULT NULL,
  PRIMARY KEY (`KdPurchasePaymentDetail`)
) ENGINE=INNODB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `trpurchasepaymentdetail` */

INSERT  INTO `trpurchasepaymentdetail`(`KdPurchasePaymentDetail`,`KdPurchasePayment`,`KdBahanMentah`,`Harga`,`Qty`,`Disc`,`StatusBarang`,`Qty_real`) VALUES (1,'FP1201220001','KL11100001','30000.00',150,0,'Normal',5),(4,'FP1201220002','KL11100001','30000.00',420,0,'Normal',14),(5,'FP1201220002','KL11100002','20000.00',60,0,'Normal',2),(6,'FP1201220003','PK11110001','30000.00',50,0,'Normal',2),(7,'FP1201290001','KL11100001','90000.00',60,0,'Retur',2),(8,'FP1201290002','KL11100001','30000.00',150,0,'Normal',5);

/*Table structure for table `trretur` */

DROP TABLE IF EXISTS `trretur`;

CREATE TABLE `trretur` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdRetur` VARCHAR(20) NOT NULL,
  `KdFaktur` VARCHAR(20) NOT NULL,
  `TanggalRetur` DATETIME NOT NULL,
  `KdSales` VARCHAR(20) NOT NULL,
  `KdToko` VARCHAR(20) NOT NULL,
  `GrandTotal` DECIMAL(20,2) NOT NULL,
  `StatusRetur` CHAR(1) NOT NULL DEFAULT '0',
  `Note` TEXT NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `AfterPaid` CHAR(1) DEFAULT '0',
  `KdSO` VARCHAR(20) DEFAULT NULL,
  `jenis_retur` ENUM('paku','klem') DEFAULT 'klem',
  `Disc` DOUBLE DEFAULT '0',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdRetur`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `trretur` */

INSERT  INTO `trretur`(`no_increment`,`KdRetur`,`KdFaktur`,`TanggalRetur`,`KdSales`,`KdToko`,`GrandTotal`,`StatusRetur`,`Note`,`UserID`,`AfterPaid`,`KdSO`,`jenis_retur`,`Disc`,`Jumlah`) VALUES (1,'RF0001.27.01.12','FK0001.22.01.12','2012-01-27 09:04:19','SL11120002','TK1111040003','13304250.00','0','','','0',NULL,'klem',0,'13304250.00'),(2,'RF0002.27.01.12','FK0001.27.01.12','2012-01-27 09:11:07','SL11120002','TK1111040003','11706525.00','0','','','0',NULL,'klem',10,'13007250.00'),(3,'RF0003.27.01.12','FK0002.27.01.12','2012-01-27 09:42:13','SL11120002','TK1111040003','3446125.00','0','','','0',NULL,'paku',0,'3446125.00');

/*Table structure for table `trreturdetail` */

DROP TABLE IF EXISTS `trreturdetail`;

CREATE TABLE `trreturdetail` (
  `KdReturDetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdRetur` VARCHAR(20) NOT NULL,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Disc` DOUBLE NOT NULL,
  `HargaDisc` DECIMAL(20,2) NOT NULL,
  `StatusBarang` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`KdReturDetail`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `trreturdetail` */

INSERT  INTO `trreturdetail`(`KdReturDetail`,`KdRetur`,`KdBarang`,`Harga`,`Qty`,`Disc`,`HargaDisc`,`StatusBarang`) VALUES (1,'RF0001.27.01.12','BG11110005','5500000.00',1,0,'5400000.00','Salah Pesan'),(2,'RF0001.27.01.12','BG11120001','7904250.00',1,0,'7904250.00','Salah Pesan'),(3,'RF0002.27.01.12','BG11110006','5103000.00',1,0,'5103000.00','Salah Pesan'),(4,'RF0002.27.01.12','BG11120001','7904250.00',1,0,'7904250.00','Salah Pesan'),(5,'RF0003.27.01.12','PK11110001','250000.00',1,0,'250000.00','Salah Pesan'),(6,'RF0003.27.01.12','PK11120001','3196125.00',1,0,'3196125.00','Kelebihan Qty');

/*Table structure for table `trsalesorder` */

DROP TABLE IF EXISTS `trsalesorder`;

CREATE TABLE `trsalesorder` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdSO` VARCHAR(20) NOT NULL,
  `TanggalSO` DATETIME NOT NULL,
  `KdSales` VARCHAR(20) NOT NULL,
  `KdToko` VARCHAR(20) NOT NULL,
  `GrandTotal` DECIMAL(20,2) NOT NULL,
  `StatusSO` CHAR(1) NOT NULL DEFAULT '0',
  `UserID` VARCHAR(20) NOT NULL,
  `KomisiSales` DOUBLE(20,2) DEFAULT '0.00',
  `jenis_so` ENUM('paku','klem') DEFAULT 'klem' COMMENT '0:klem, 1:paku',
  `disc` DOUBLE DEFAULT '0',
  `Jumlah` DECIMAL(20,2) DEFAULT '0.00' COMMENT 'granndtotal sebelum discount',
  PRIMARY KEY (`no_increment`,`KdSO`)
) ENGINE=INNODB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `trsalesorder` */

INSERT  INTO `trsalesorder`(`no_increment`,`KdSO`,`TanggalSO`,`KdSales`,`KdToko`,`GrandTotal`,`StatusSO`,`UserID`,`KomisiSales`,`jenis_so`,`disc`,`Jumlah`) VALUES (2,'SO0002.22.01.12','2012-01-22 17:48:57','SL11120002','TK1111040003','37191150.00','2','',0.00,'klem',10,'41323500.00'),(4,'SO0004.22.01.12','2012-01-22 18:24:05','SL11120002','TK1111040003','66521250.00','2','',0.00,'klem',0,'66521250.00'),(6,'SO0006.22.01.12','2012-01-22 18:27:38','SL11120002','TK1111040003','6892250.00','2','',0.00,'paku',0,'6892250.00'),(7,'SO0007.22.01.12','2012-01-22 00:00:00','SL11120002','TK1111040003','1080000.00','2','',0.00,'paku',10,'1200000.00'),(10,'SO0001.29.01.12','2012-01-29 13:46:10','SL12010002','TK1112020007','0.00','2','',0.00,'klem',0,'0.00'),(11,'SO0002.29.01.12','2012-01-29 00:00:00','SL12010002','TK1112020001','80000.00','3','',0.00,'klem',0,'80000.00'),(13,'SO0003.29.01.12','2012-01-29 14:13:30','SL11120002','TK1112020007','0.00','0','',0.00,'klem',0,'0.00'),(14,'SO0004.29.01.12','2012-01-29 15:30:15','SL12010001','TK1111040003','14250.00','2','',0.00,'klem',5,'15000.00'),(15,'SO0005.29.01.12','2012-01-29 15:32:02','SL12010001','TK1112020001','15000.00','2','',0.00,'klem',0,'15000.00');

/*Table structure for table `trsalesorderdetail` */

DROP TABLE IF EXISTS `trsalesorderdetail`;

CREATE TABLE `trsalesorderdetail` (
  `KdSODetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdSO` VARCHAR(20) NOT NULL,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Disc` DOUBLE(10,2) NOT NULL,
  `StatusBarang` CHAR(1) NOT NULL DEFAULT '0',
  `HargaDisc` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`KdSODetail`)
) ENGINE=INNODB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `trsalesorderdetail` */

INSERT  INTO `trsalesorderdetail`(`KdSODetail`,`KdSO`,`KdBarang`,`Harga`,`Qty`,`Disc`,`StatusBarang`,`HargaDisc`) VALUES (1,'SO0001.22.01.12','BG11110005','5400000.00',5,0.00,'0','5400000.00'),(2,'SO0001.22.01.12','BG11120001','7904250.00',5,0.00,'0','7904250.00'),(3,'SO0002.22.01.12','BG11110006','5103000.00',5,0.00,'2','5103000.00'),(4,'SO0002.22.01.12','BG11120001','7904250.00',2,0.00,'2','7904250.00'),(7,'SO0003.22.01.12','BG11110005','5500000.00',5,0.00,'0','5500000.00'),(8,'SO0003.22.01.12','BG11110006','5103000.00',5,0.00,'0','5103000.00'),(9,'SO0004.22.01.12','BG11120001','7904250.00',5,0.00,'2','7904250.00'),(10,'SO0004.22.01.12','BG11110005','5400000.00',5,0.00,'2','5400000.00'),(11,'SO0005.22.01.12','PK11100002','300000.00',3,0.00,'0','300000.00'),(12,'SO0005.22.01.12','PK11100001','300000.00',2,0.00,'0','300000.00'),(13,'SO0006.22.01.12','PK11110001','250000.00',2,0.00,'2','250000.00'),(14,'SO0006.22.01.12','PK11120001','3196125.00',2,0.00,'2','3196125.00'),(17,'SO0007.22.01.12','PK11100001','300000.00',2,0.00,'2','300000.00'),(18,'SO0007.22.01.12','PK11100002','200000.00',3,0.00,'2','200000.00'),(24,'SO0001.29.01.12','BG12010003','4000.00',100,0.00,'2','4000.00'),(26,'SO0002.29.01.12','BG12010003','4000.00',20,0.00,'0','4000.00'),(28,'SO0003.29.01.12','BG12010003','4000.00',20,0.00,'0','4000.00'),(29,'SO0004.29.01.12','BG12010001','3000.00',5,0.00,'2','3000.00'),(30,'SO0005.29.01.12','BG12010001','3000.00',5,0.00,'2','3000.00');

/*Table structure for table `trsalesorderdetailpending` */

DROP TABLE IF EXISTS `trsalesorderdetailpending`;

CREATE TABLE `trsalesorderdetailpending` (
  `KdSODetail` INT(11) NOT NULL AUTO_INCREMENT,
  `KdSO` VARCHAR(20) NOT NULL,
  `KdBarang` VARCHAR(20) NOT NULL,
  `Harga` DECIMAL(20,2) NOT NULL,
  `Qty` DOUBLE NOT NULL,
  `Disc` DOUBLE(10,2) NOT NULL,
  `StatusBarang` CHAR(1) NOT NULL DEFAULT '0',
  `HargaDisc` DECIMAL(20,2) NOT NULL,
  PRIMARY KEY (`KdSODetail`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `trsalesorderdetailpending` */

/*Table structure for table `trsalespayment` */

DROP TABLE IF EXISTS `trsalespayment`;

CREATE TABLE `trsalespayment` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` VARCHAR(20) NOT NULL,
  `KdFaktur` VARCHAR(20) DEFAULT NULL,
  `TanggalSalesPayment` DATETIME NOT NULL,
  `KdSales` VARCHAR(20) NOT NULL,
  `KdToko` VARCHAR(20) NOT NULL,
  `TotalSalesPayment` DECIMAL(20,2) NOT NULL,
  `StatusSalesPayment` CHAR(1) NOT NULL DEFAULT '0',
  `Note` TEXT NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `PaidBy` CHAR(1) DEFAULT '1' COMMENT '1:LewatSales, 2:Langusng',
  `KdSO` VARCHAR(20) DEFAULT NULL,
  `flag_payment` CHAR(1) DEFAULT '0' COMMENT '0:perToko, 1:PerTanggal',
  `jenis_payment` ENUM('paku','klem') DEFAULT 'paku',
  `disc_payment` FLOAT DEFAULT '0',
  `komisi_sales` DECIMAL(20,2) DEFAULT '0.00',
  PRIMARY KEY (`no_increment`,`KdSalesPayment`)
) ENGINE=INNODB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `trsalespayment` */

INSERT  INTO `trsalespayment`(`no_increment`,`KdSalesPayment`,`KdFaktur`,`TanggalSalesPayment`,`KdSales`,`KdToko`,`TotalSalesPayment`,`StatusSalesPayment`,`Note`,`UserID`,`PaidBy`,`KdSO`,`flag_payment`,`jenis_payment`,`disc_payment`,`komisi_sales`) VALUES (1,'PF0001.27.01.12/SL11','FK0001.22.01.12','2012-01-27 00:00:00','SL11120002','TK1111040003','13000000.00','0','','','2',NULL,'0','klem',0,'2080000.00'),(3,'PF0002.27.01.12/SL11','FK0001.22.01.12','2012-01-27 11:53:29','SL11120002','TK1111040003','304250.00','1','','','2',NULL,'0','klem',0,'48680.00'),(4,'PF0003.27.01.12/SL11','FK0002.27.01.12','2012-01-27 12:01:42','SL11120002','TK1111040003','446125.00','0','','','2',NULL,'0','paku',0,'0.00'),(5,'PF0004.27.01.12/SL11','FK0003.27.01.12','2012-01-27 12:03:44','SL11120002','TK1111040003','80000.00','0','','','2',NULL,'0','paku',10,'0.00'),(6,'PF0001.29.01.12/SL12','FK0002.29.01.12','2012-01-29 15:32:22','SL12010001','TK1112020001','15000.00','1','','','2',NULL,'0','klem',0,'2400.00');

/*Table structure for table `trsalespaymentbydate` */

DROP TABLE IF EXISTS `trsalespaymentbydate`;

CREATE TABLE `trsalespaymentbydate` (
  `no_increment` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` VARCHAR(20) NOT NULL,
  `TanggalPayment` DATETIME DEFAULT NULL,
  `DariTanggal` DATETIME DEFAULT NULL,
  `SampaiTanggal` DATETIME NOT NULL,
  `KdSales` VARCHAR(20) NOT NULL,
  `TotalSalesPayment` DECIMAL(20,2) NOT NULL,
  `StatusSalesPayment` CHAR(1) NOT NULL DEFAULT '0',
  `Note` TEXT NOT NULL,
  `UserID` VARCHAR(20) NOT NULL,
  `flag_payment` CHAR(1) DEFAULT '0' COMMENT '0:perToko, 1:PerTanggal',
  `komisi_sales` DOUBLE DEFAULT '0',
  `DiscPembayaran` DOUBLE DEFAULT '0',
  PRIMARY KEY (`no_increment`,`KdSalesPayment`)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `trsalespaymentbydate` */

INSERT  INTO `trsalespaymentbydate`(`no_increment`,`KdSalesPayment`,`TanggalPayment`,`DariTanggal`,`SampaiTanggal`,`KdSales`,`TotalSalesPayment`,`StatusSalesPayment`,`Note`,`UserID`,`flag_payment`,`komisi_sales`,`DiscPembayaran`) VALUES (1,'PF0005.27.01.12','2012-01-27 12:46:26','2012-01-27 12:46:26','2012-02-27 12:46:26','SL11120002','7675373.00','0','','','1',0,10);

/*Table structure for table `trsalespaymentbydatedetail` */

DROP TABLE IF EXISTS `trsalespaymentbydatedetail`;

CREATE TABLE `trsalespaymentbydatedetail` (
  `KdSalesPaymentDetail` DOUBLE NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` VARCHAR(20) DEFAULT NULL,
  `KdFaktur` VARCHAR(20) DEFAULT NULL,
  `GrandtotalFaktur` DECIMAL(20,2) DEFAULT '0.00',
  `PaidBy` CHAR(1) DEFAULT '0' COMMENT '0:Lewat Sales, 1:Langsung ke om acu',
  PRIMARY KEY (`KdSalesPaymentDetail`)
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `trsalespaymentbydatedetail` */

INSERT  INTO `trsalespaymentbydatedetail`(`KdSalesPaymentDetail`,`KdSalesPayment`,`KdFaktur`,`GrandtotalFaktur`,`PaidBy`) VALUES (1,'PF0005.27.01.12','FK0001.27.01.12','11.00','0'),(2,'PF0005.27.01.12','FK0002.27.01.12','6.00','1'),(3,'PF0005.27.01.12','FK0003.27.01.12','1.00','1');

/*Table structure for table `trsalespaymentdetail` */

DROP TABLE IF EXISTS `trsalespaymentdetail`;

CREATE TABLE `trsalespaymentdetail` (
  `KdSalesPaymentDetail` DOUBLE NOT NULL AUTO_INCREMENT,
  `KdSalesPayment` VARCHAR(20) DEFAULT NULL,
  `KdBarang` VARCHAR(20) DEFAULT NULL,
  `Harga` DECIMAL(20,2) DEFAULT NULL,
  `Qty` DOUBLE DEFAULT NULL,
  `Disc` DOUBLE DEFAULT NULL,
  `StatusBarang` VARCHAR(200) DEFAULT NULL,
  `HargaDisc` DECIMAL(20,2) DEFAULT '0.00',
  PRIMARY KEY (`KdSalesPaymentDetail`)
) ENGINE=INNODB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `trsalespaymentdetail` */

INSERT  INTO `trsalespaymentdetail`(`KdSalesPaymentDetail`,`KdSalesPayment`,`KdBarang`,`Harga`,`Qty`,`Disc`,`StatusBarang`,`HargaDisc`) VALUES (1,'PF0001.29.01.12/SL12','BG12010001','3000.00',5,0,'Normal','3000.00'),(5,'PF0002.27.01.12/SL11','BG11110005','5500000.00',1,0,'Retur','5400000.00'),(6,'PF0002.27.01.12/SL11','BG11120001','7904250.00',1,0,'Retur','7904250.00'),(9,'PF0003.27.01.12/SL11','PK11110001','250000.00',1,0,'Retur','250000.00'),(10,'PF0003.27.01.12/SL11','PK11120001','3196125.00',1,0,'Retur','3196125.00'),(11,'PF0004.27.01.12/SL11','PK11100001','300000.00',2,0,'Normal','300000.00'),(12,'PF0004.27.01.12/SL11','PK11100002','200000.00',3,0,'Normal','200000.00'),(21,'PF0001.27.01.12/SL11','BG11110005','5500000.00',1,0,'Retur','5400000.00'),(22,'PF0001.27.01.12/SL11','BG11120001','7904250.00',1,0,'Retur','7904250.00');

/*Table structure for table `viewcetaklappo` */

DROP TABLE IF EXISTS `viewcetaklappo`;

/*!50001 DROP VIEW IF EXISTS `viewcetaklappo` */;
/*!50001 DROP TABLE IF EXISTS `viewcetaklappo` */;

/*!50001 CREATE TABLE  `viewcetaklappo`(
 `No Pemesanan` varchar(20) ,
 `Tgl Pemesanan` varchar(10) ,
 `Supplier` varchar(200) ,
 `Part No.` varchar(20) ,
 `NamaBarang` varchar(200) ,
 `Qty` float ,
 `Status PO` varchar(15) 
)*/;

/*Table structure for table `viewcetaktrreturbeli` */

DROP TABLE IF EXISTS `viewcetaktrreturbeli`;

/*!50001 DROP VIEW IF EXISTS `viewcetaktrreturbeli` */;
/*!50001 DROP TABLE IF EXISTS `viewcetaktrreturbeli` */;

/*!50001 CREATE TABLE  `viewcetaktrreturbeli`(
 `KdRetur` varchar(20) ,
 `TanggalRetur` datetime ,
 `No Penerimaan` varchar(20) ,
 `Nama` varchar(200) ,
 `Grandtotal` decimal(20,2) ,
 `KDBarang` varchar(20) ,
 `NamaBarang` varchar(200) ,
 `harga` decimal(20,2) ,
 `disc` float(3,2) ,
 `qty` double 
)*/;

/*View structure for view viewcetaklappo */

/*!50001 DROP TABLE IF EXISTS `viewcetaklappo` */;
/*!50001 DROP VIEW IF EXISTS `viewcetaklappo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`crc`@`%` SQL SECURITY DEFINER VIEW `viewcetaklappo` AS (select `ho`.`No_PO` AS `No Pemesanan`,date_format(`ho`.`Tanggal_PO`,'%d-%m-%Y') AS `Tgl Pemesanan`,`c`.`Nama` AS `Supplier`,`mp`.`KdBahanMentah` AS `Part No.`,`mp`.`NamaBahanMentah` AS `NamaBarang`,`do`.`jumlah` AS `Qty`,(case when (`ho`.`StatusPO` = 0) then 'New' when (`ho`.`StatusPO` = 1) then 'Confirm' when (`ho`.`StatusPO` = 2) then 'Barang Diterima' end) AS `Status PO` from (((`db_dai`.`trheaderpo` `ho` join `db_dai`.`trdetailpo` `do` on((`ho`.`No_PO` = `do`.`no_po`))) join `db_dai`.`msbahanmentah` `mp` on((`mp`.`KdBahanMentah` = `do`.`kdbahanmentah`))) join `db_dai`.`mssupplier` `c` on((`c`.`KdSupplier` = `ho`.`KdSupplier`))) where ((date_format(`ho`.`Tanggal_PO`,'%Y-%m-%d') >= '2012-01-01') and (date_format(`ho`.`Tanggal_PO`,'%Y-%m-%d') <= '2012-01-29') and (`ho`.`StatusPO` <> 0))) */;

/*View structure for view viewcetaktrreturbeli */

/*!50001 DROP TABLE IF EXISTS `viewcetaktrreturbeli` */;
/*!50001 DROP VIEW IF EXISTS `viewcetaktrreturbeli` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`crc`@`%` SQL SECURITY DEFINER VIEW `viewcetaktrreturbeli` AS (select `retur`.`KdRetur` AS `KdRetur`,`retur`.`TanggalRetur` AS `TanggalRetur`,`retur`.`KdPB` AS `No Penerimaan`,`mt`.`Nama` AS `Nama`,`retur`.`GrandTotal` AS `Grandtotal`,`mp`.`KdBahanMentah` AS `KDBarang`,`mp`.`NamaBahanMentah` AS `NamaBarang`,`rd`.`Harga` AS `harga`,`rd`.`Disc` AS `disc`,`rd`.`Qty` AS `qty` from (((((`db_dai`.`trheaderreturbeli` `retur` join `db_dai`.`trheaderpb` `pb` on((`pb`.`No_PB` = `retur`.`KdPB`))) join `db_dai`.`trdetailreturbeli` `rd` on((`rd`.`KdRetur` = `retur`.`KdRetur`))) join `db_dai`.`msbahanmentah` `mp` on((`mp`.`KdBahanMentah` = `rd`.`KdBahanMentah`))) join `db_dai`.`mssupplier` `mt` on((`mt`.`KdSupplier` = `pb`.`KdSupplier`))) join `db_dai`.`msuser` `mu` on((`mu`.`userid` = `retur`.`UserID`))) where (`retur`.`KdRetur` = 'RB1201210001')) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
