-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for absensi_labprak
CREATE DATABASE IF NOT EXISTS `absensi_labprak` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `absensi_labprak`;

-- Dumping structure for table absensi_labprak.asisten
CREATE TABLE IF NOT EXISTS `asisten` (
  `id_asisten` varchar(9) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_asisten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.asisten: ~0 rows (approximately)
DELETE FROM `asisten`;
/*!40000 ALTER TABLE `asisten` DISABLE KEYS */;
/*!40000 ALTER TABLE `asisten` ENABLE KEYS */;

-- Dumping structure for table absensi_labprak.dosen
CREATE TABLE IF NOT EXISTS `dosen` (
  `id_dosen` varchar(9) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.dosen: ~0 rows (approximately)
DELETE FROM `dosen`;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;

-- Dumping structure for table absensi_labprak.jadwal_praktik
CREATE TABLE IF NOT EXISTS `jadwal_praktik` (
  `no_praktik` varchar(10) NOT NULL,
  `tahun_ajar` varchar(4) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `waktu` time NOT NULL,
  PRIMARY KEY (`no_praktik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.jadwal_praktik: ~0 rows (approximately)
DELETE FROM `jadwal_praktik`;
/*!40000 ALTER TABLE `jadwal_praktik` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwal_praktik` ENABLE KEYS */;

-- Dumping structure for table absensi_labprak.laboratorium
CREATE TABLE IF NOT EXISTS `laboratorium` (
  `id_lab` varchar(6) NOT NULL,
  `Nama_lab` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kapasitas` varchar(50) NOT NULL,
  PRIMARY KEY (`id_lab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.laboratorium: ~0 rows (approximately)
DELETE FROM `laboratorium`;
/*!40000 ALTER TABLE `laboratorium` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorium` ENABLE KEYS */;

-- Dumping structure for table absensi_labprak.mahasiswa
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `NRP` varchar(9) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  PRIMARY KEY (`NRP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.mahasiswa: ~0 rows (approximately)
DELETE FROM `mahasiswa`;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;

-- Dumping structure for table absensi_labprak.mata_kuliah
CREATE TABLE IF NOT EXISTS `mata_kuliah` (
  `kdMatkul` varchar(5) NOT NULL,
  `nama_Matkul` varchar(50) NOT NULL,
  `SKS` varchar(2) NOT NULL,
  PRIMARY KEY (`kdMatkul`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table absensi_labprak.mata_kuliah: ~0 rows (approximately)
DELETE FROM `mata_kuliah`;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
