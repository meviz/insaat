-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Kas 2016, 16:10:06
-- Sunucu sürümü: 5.6.21
-- PHP Sürümü: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `insaat_proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `analiz`
--

CREATE TABLE IF NOT EXISTS `analiz` (
`AnalizID` bigint(20) NOT NULL,
  `MainPozID` bigint(20) DEFAULT NULL,
  `SubPozID` bigint(20) DEFAULT NULL,
  `SubPozSiraNo` int(11) DEFAULT NULL,
  `SubPozMiktar` double DEFAULT NULL,
  `Aciklama` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=149432 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `analiz`
--

INSERT INTO `analiz` (`AnalizID`, `MainPozID`, `SubPozID`, `SubPozSiraNo`, `SubPozMiktar`, `Aciklama`) VALUES
(149430, 119453, 119453, NULL, NULL, NULL),
(149431, 119453, 119453, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bfiyatkitap`
--

CREATE TABLE IF NOT EXISTS `bfiyatkitap` (
`KitapID` bigint(20) NOT NULL,
  `KitapAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE IF NOT EXISTS `kullanici` (
`ID` smallint(6) NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mail` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `telefon` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firma` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yetki` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maliyetgrup`
--

CREATE TABLE IF NOT EXISTS `maliyetgrup` (
`ID` bigint(20) NOT NULL,
  `MaliyetAdi` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `maliyettemp`
--

CREATE TABLE IF NOT EXISTS `maliyettemp` (
  `ID` bigint(20) NOT NULL,
  `MaliyetAdi` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozID` bigint(20) DEFAULT NULL,
  `KitapAdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PozNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozTanim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParaBirim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Birim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BFiyat` double DEFAULT NULL,
  `Tarih` datetime DEFAULT NULL,
  `Miktar` double DEFAULT NULL,
  `TekAciklama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozAciklama` text COLLATE utf8_unicode_ci,
  `PozFirma` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozModel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozRef` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AnaPozID` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mkk`
--

CREATE TABLE IF NOT EXISTS `mkk` (
  `ID` bigint(20) NOT NULL,
  `MKKCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MKKParentCode` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MKKTanim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `olcubirim`
--

CREATE TABLE IF NOT EXISTS `olcubirim` (
`ID` bigint(20) NOT NULL,
  `BirimKisaAd` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BirimUzunAd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parabirim`
--

CREATE TABLE IF NOT EXISTS `parabirim` (
`ID` bigint(20) NOT NULL,
  `PBirimKisaAd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PBirimUzunAd` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PBirimFiyat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pozlar`
--

CREATE TABLE IF NOT EXISTS `pozlar` (
`PozID` bigint(20) NOT NULL,
  `BFKitapNo` bigint(20) DEFAULT NULL,
  `PozNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozSNo` bigint(20) DEFAULT NULL,
  `MkkCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozTanim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaliyetGrup` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozTipi` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParaBirim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OlcuBirim` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BirimFiyat` double DEFAULT NULL,
  `BfTarih` datetime DEFAULT NULL,
  `PozAciklama` text COLLATE utf8_unicode_ci,
  `PozFirma` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozModel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorumluluk` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119454 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `pozlar`
--

INSERT INTO `pozlar` (`PozID`, `BFKitapNo`, `PozNo`, `PozSNo`, `MkkCode`, `PozTanim`, `MaliyetGrup`, `PozTipi`, `ParaBirim`, `OlcuBirim`, `BirimFiyat`, `BfTarih`, `PozAciklama`, `PozFirma`, `PozModel`, `sorumluluk`) VALUES
(119453, 7, NULL, NULL, NULL, 'betonerme yapı', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `poztipi`
--

CREATE TABLE IF NOT EXISTS `poztipi` (
`ID` bigint(20) NOT NULL,
  `PozTipL` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PozTip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teklifdetay`
--

CREATE TABLE IF NOT EXISTS `teklifdetay` (
`TekItemID` bigint(20) NOT NULL,
  `TekNo` bigint(20) DEFAULT NULL,
  `TekItemType` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ItemParentID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TekPozNo` bigint(20) DEFAULT NULL,
  `TekPozMiktar` double DEFAULT NULL,
  `TekItemAciklama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TeklifBirimFiyat` double DEFAULT NULL,
  `PrimaProj` bigint(20) DEFAULT NULL,
  `PrimaAct` bigint(20) DEFAULT NULL,
  `TekItemComment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teklifler`
--

CREATE TABLE IF NOT EXISTS `teklifler` (
`TeklifID` bigint(20) NOT NULL,
  `TeklifAdi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParaBirim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PrimaProj` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `analiz`
--
ALTER TABLE `analiz`
 ADD PRIMARY KEY (`AnalizID`), ADD KEY `MainPozID` (`MainPozID`), ADD KEY `SubPozID` (`SubPozID`), ADD KEY `MainPozID_2` (`MainPozID`), ADD KEY `MainPozID_3` (`MainPozID`), ADD KEY `SubPozID_2` (`SubPozID`);

--
-- Tablo için indeksler `bfiyatkitap`
--
ALTER TABLE `bfiyatkitap`
 ADD PRIMARY KEY (`KitapID`), ADD UNIQUE KEY `KitapAdi_3` (`KitapAdi`), ADD KEY `KitapAdi` (`KitapAdi`), ADD KEY `KitapAdi_2` (`KitapAdi`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `mail` (`mail`);

--
-- Tablo için indeksler `maliyetgrup`
--
ALTER TABLE `maliyetgrup`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `MaliyetAdi` (`MaliyetAdi`);

--
-- Tablo için indeksler `maliyettemp`
--
ALTER TABLE `maliyettemp`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `MaliyetAdi` (`MaliyetAdi`), ADD KEY `MaliyetAdi_2` (`MaliyetAdi`), ADD KEY `MaliyetAdi_3` (`MaliyetAdi`), ADD KEY `KitapAdi` (`KitapAdi`), ADD KEY `PozID` (`PozID`), ADD KEY `PozNo` (`PozNo`), ADD KEY `ParaBirim` (`ParaBirim`), ADD KEY `Birim` (`Birim`);

--
-- Tablo için indeksler `mkk`
--
ALTER TABLE `mkk`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `MKKCode` (`MKKCode`), ADD KEY `MKKParentCode` (`MKKParentCode`);

--
-- Tablo için indeksler `olcubirim`
--
ALTER TABLE `olcubirim`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `BirimKisaAd` (`BirimKisaAd`), ADD KEY `BirimKisaAd_2` (`BirimKisaAd`);

--
-- Tablo için indeksler `parabirim`
--
ALTER TABLE `parabirim`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `PBirimKisaAd` (`PBirimKisaAd`), ADD KEY `PBirimKisaAd_2` (`PBirimKisaAd`);

--
-- Tablo için indeksler `pozlar`
--
ALTER TABLE `pozlar`
 ADD PRIMARY KEY (`PozID`), ADD UNIQUE KEY `PozNo` (`PozNo`), ADD UNIQUE KEY `MkkCode` (`MkkCode`), ADD KEY `PozID` (`PozID`), ADD KEY `MaliyetGrup` (`MaliyetGrup`), ADD KEY `PozTipi` (`PozTipi`), ADD KEY `PozTipi_2` (`PozTipi`), ADD KEY `ParaBirim` (`ParaBirim`), ADD KEY `OlcuBirim` (`OlcuBirim`), ADD KEY `MkkCode_2` (`MkkCode`);

--
-- Tablo için indeksler `poztipi`
--
ALTER TABLE `poztipi`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `PozTipL` (`PozTipL`);

--
-- Tablo için indeksler `teklifdetay`
--
ALTER TABLE `teklifdetay`
 ADD PRIMARY KEY (`TekItemID`);

--
-- Tablo için indeksler `teklifler`
--
ALTER TABLE `teklifler`
 ADD PRIMARY KEY (`TeklifID`), ADD UNIQUE KEY `TeklifAdi` (`TeklifAdi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `analiz`
--
ALTER TABLE `analiz`
MODIFY `AnalizID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149432;
--
-- Tablo için AUTO_INCREMENT değeri `bfiyatkitap`
--
ALTER TABLE `bfiyatkitap`
MODIFY `KitapID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `maliyetgrup`
--
ALTER TABLE `maliyetgrup`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `olcubirim`
--
ALTER TABLE `olcubirim`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `parabirim`
--
ALTER TABLE `parabirim`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `pozlar`
--
ALTER TABLE `pozlar`
MODIFY `PozID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119454;
--
-- Tablo için AUTO_INCREMENT değeri `poztipi`
--
ALTER TABLE `poztipi`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `teklifdetay`
--
ALTER TABLE `teklifdetay`
MODIFY `TekItemID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `teklifler`
--
ALTER TABLE `teklifler`
MODIFY `TeklifID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `analiz`
--
ALTER TABLE `analiz`
ADD CONSTRAINT `analiz_ibfk_1` FOREIGN KEY (`MainPozID`) REFERENCES `pozlar` (`PozID`),
ADD CONSTRAINT `analiz_ibfk_2` FOREIGN KEY (`SubPozID`) REFERENCES `pozlar` (`PozID`);

--
-- Tablo kısıtlamaları `maliyettemp`
--
ALTER TABLE `maliyettemp`
ADD CONSTRAINT `maliyettemp_ibfk_1` FOREIGN KEY (`MaliyetAdi`) REFERENCES `maliyetgrup` (`MaliyetAdi`),
ADD CONSTRAINT `maliyettemp_ibfk_2` FOREIGN KEY (`KitapAdi`) REFERENCES `bfiyatkitap` (`KitapAdi`),
ADD CONSTRAINT `maliyettemp_ibfk_3` FOREIGN KEY (`PozID`) REFERENCES `pozlar` (`PozID`),
ADD CONSTRAINT `maliyettemp_ibfk_4` FOREIGN KEY (`PozNo`) REFERENCES `pozlar` (`PozNo`),
ADD CONSTRAINT `maliyettemp_ibfk_5` FOREIGN KEY (`ParaBirim`) REFERENCES `parabirim` (`PBirimKisaAd`),
ADD CONSTRAINT `maliyettemp_ibfk_7` FOREIGN KEY (`Birim`) REFERENCES `olcubirim` (`BirimKisaAd`);

--
-- Tablo kısıtlamaları `mkk`
--
ALTER TABLE `mkk`
ADD CONSTRAINT `mkk_ibfk_1` FOREIGN KEY (`MKKParentCode`) REFERENCES `mkk` (`MKKCode`);

--
-- Tablo kısıtlamaları `pozlar`
--
ALTER TABLE `pozlar`
ADD CONSTRAINT `pozlar_ibfk_1` FOREIGN KEY (`MaliyetGrup`) REFERENCES `maliyetgrup` (`MaliyetAdi`),
ADD CONSTRAINT `pozlar_ibfk_2` FOREIGN KEY (`PozTipi`) REFERENCES `poztipi` (`PozTipL`),
ADD CONSTRAINT `pozlar_ibfk_3` FOREIGN KEY (`ParaBirim`) REFERENCES `parabirim` (`PBirimKisaAd`),
ADD CONSTRAINT `pozlar_ibfk_4` FOREIGN KEY (`OlcuBirim`) REFERENCES `olcubirim` (`BirimKisaAd`),
ADD CONSTRAINT `pozlar_ibfk_5` FOREIGN KEY (`MkkCode`) REFERENCES `mkk` (`MKKCode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
