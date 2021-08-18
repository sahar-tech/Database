-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 09:17 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `idAddress` int(11) NOT NULL,
  `homeNumber` varchar(45) NOT NULL,
  `floor` varchar(45) NOT NULL,
  `street` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `Commune_idCommune` int(11) NOT NULL,
  `codeZip` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `idBuyer` int(11) NOT NULL,
  `firstNameB` varchar(45) NOT NULL,
  `lastNameB` varchar(45) NOT NULL,
  `birthDayB` date NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `emailBuyer` varchar(45) NOT NULL,
  `phoneBuyer` varchar(45) NOT NULL,
  `buyerStatus` enum('person','enterprise') NOT NULL,
  `registerCommercialNumberB` varchar(45) DEFAULT NULL,
  `taxIdentificationNumberB` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commune`
--

CREATE TABLE `commune` (
  `idCommune` int(11) NOT NULL,
  `communeName` varchar(45) NOT NULL,
  `Wilaya_idWilaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commune`
--

INSERT INTO `commune` (`idCommune`, `communeName`, `Wilaya_idWilaya`) VALUES
(1, 'Adrar', 1),
(2, 'Bouda', 1),
(3, 'Ouled Ahmed Timmi', 1),
(4, 'Akabli', 1),
(5, 'Aoulef', 1),
(6, 'Timokten', 1),
(7, 'Tit', 1),
(8, 'Fenoughil', 1),
(9, 'Reggane', 1),
(10, 'Sali', 1),
(11, 'Sebaa', 1),
(12, 'Tsabit', 1),
(13, 'Zaouiet Kounta', 1),
(14, 'In Zghmir', 1),
(15, 'Chlef', 2),
(16, 'Ténès', 2),
(17, 'Benairia', 2),
(18, 'El Karimia', 2),
(19, 'Tadjna', 2),
(20, 'Taougrit', 2),
(21, 'Beni Haoua', 2),
(22, 'Sobha', 2),
(23, 'Harchoun', 2),
(24, 'Ouled Fares', 2),
(25, 'Sidi Akkacha', 2),
(26, 'Boukadir', 2),
(27, 'Beni Rached', 2),
(28, 'Talassa', 2),
(29, 'Harenfa', 2),
(30, 'Oued Gousine', 2),
(31, 'Dahra', 2),
(32, 'Ouled Abbes', 2),
(33, 'Sendjas', 2),
(34, 'Zeboudja', 2),
(35, 'Oued Sly', 2),
(36, 'Abou El Hassen', 2),
(37, 'El Marsa', 2),
(38, 'Chettia', 2),
(39, 'Sidi Abderrahmane', 2),
(40, 'Moussadek', 2),
(41, 'El Hadjadj', 2),
(42, 'Labiod Medjadja', 2),
(43, 'Oued Fodda', 2),
(44, 'Ouled Ben Abdelkader', 2),
(45, 'Bouzghaia', 2),
(46, 'Ain Merane', 2),
(47, 'Oum Drou', 2),
(48, 'Breira', 2),
(49, 'Beni Bouateb', 2),
(50, 'Aflou', 3),
(51, 'Aïn Madhi', 3),
(52, 'Aïn Sidi Ali', 3),
(53, 'Beidha', 3),
(54, 'Brida', 3),
(55, 'El Assafia', 3),
(56, 'El Ghicha', 3),
(57, 'El Houaita', 3),
(58, 'Gueltat Sidi Saad', 3),
(59, 'Hadj Mechri', 3),
(60, 'Hassi Delaa', 3),
(61, 'Hassi R Mel', 3),
(62, 'Kheneg', 3),
(63, 'Ksar El Hirane', 3),
(64, 'Laghouat', 3),
(65, 'Mekhareg', 3),
(66, 'Oued Morra', 3),
(67, 'Oued M Zi', 3),
(68, 'Sebgag', 3),
(69, 'Sidi Bouzid', 3),
(70, 'Sidi Makhlouf', 3),
(71, 'Tadjemout', 3),
(72, 'Tadjrouna', 3),
(73, 'Taouila', 3),
(74, 'Aïn Babouche', 4),
(75, 'Aïn Beïda', 4),
(76, 'Aïn Diss', 4),
(77, 'Aïn Fakroun', 4),
(78, 'Aïn Kercha', 4),
(79, 'Aïn M lila', 4),
(80, 'Aïn Zitoun', 4),
(81, 'Behir Chergui', 4),
(82, 'Berriche', 4),
(83, 'Bir Chouhada', 4),
(84, 'D hala', 4),
(85, 'El Amiria', 4),
(86, 'El Belala', 4),
(87, 'El Djazia', 4),
(88, 'El Fedjouz Boughrara Saoudi', 4),
(89, 'El Harmilia', 4),
(90, 'Fkirina', 4),
(91, 'Hanchir Toumghani', 4),
(92, 'Ksar Sbahi', 4),
(93, 'Meskiana', 4),
(94, 'Oued Nini', 4),
(95, 'Ouled Gacem', 4),
(96, 'Ouled Hamla', 4),
(97, 'Ouled Zouaï', 4),
(98, 'Oum El Bouaghi', 4),
(99, 'Rahia', 4),
(100, 'Sigus', 4),
(101, 'Souk Naâmane', 4),
(102, 'Zorg', 4),
(103, 'Batna', 5),
(104, 'Ghassira', 5),
(105, 'Maafa', 5),
(106, 'Merouana', 5),
(107, 'Seriana', 5),
(108, 'Menaa', 5),
(109, 'El Madher', 5),
(110, 'Tazoult', 5),
(111, 'N Gaous', 5),
(112, 'Guigba', 5),
(113, 'Inoughissen', 5),
(114, 'Ouyoun El Assafir', 5),
(115, 'Djerma', 5),
(116, 'Bitam', 5),
(117, 'Abdelkader Azil', 5),
(118, 'Arris', 5),
(119, 'Kimmel', 5),
(120, 'Tilatou', 5),
(121, 'Aïn Djasser', 5),
(122, 'Ouled Sellam', 5),
(123, 'Tigherghar', 5),
(124, 'Aïn Yagout', 5),
(125, 'Sefiane', 5),
(126, 'Fesdis', 5),
(127, 'Rahbat', 5),
(128, 'Tighanimine', 5),
(129, 'Lemsane', 5),
(130, 'Ksar Bellezma', 5),
(131, 'Seggana', 5),
(132, 'Ichmoul', 5),
(133, 'Foum Toub', 5),
(134, 'Ben Foudhala El Hakania', 5),
(135, 'Oued El Ma', 5),
(136, 'Talkhamt', 5),
(137, 'Bouzina', 5),
(138, 'Chemora', 5),
(139, 'Oued Chaaba', 5),
(140, 'Taxlent', 5),
(141, 'Gosbat', 5),
(142, 'Ouled Aouf', 5),
(143, 'Boumagueur', 5),
(144, 'Barika', 5),
(145, 'Djezar', 5),
(146, 'T Kout', 5),
(147, 'Aïn Touta', 5),
(148, 'Hidoussa', 5),
(149, 'Teniet El Abed', 5),
(150, 'Oued Taga', 5),
(151, 'Ouled Fadel', 5),
(152, 'Timgad', 5),
(153, 'Ras El Aioun', 5),
(154, 'Chir', 5),
(155, 'Ouled Si Slimane', 5),
(156, 'Zanat El Beida', 5),
(157, 'M doukel', 5),
(158, 'Ouled Ammar', 5),
(159, 'El Hassi', 5),
(160, 'Lazrou', 5),
(161, 'Boumia', 5),
(162, 'Boulhilat', 5),
(163, 'Larbaâ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(11) NOT NULL,
  `firstNameS` varchar(45) NOT NULL,
  `lastNameS` varchar(45) NOT NULL,
  `birthDayS` date NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `emailSeller` varchar(45) NOT NULL,
  `phoneSeller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `idDelivery` int(11) NOT NULL,
  `deliveryNumber` int(11) NOT NULL,
  `startDateDelivery` date NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `endDateDelivery` date NOT NULL,
  `deliveryStatus` enum('inProgress','waiting','delivered') NOT NULL,
  `deliveryType` enum('home','adaptedPoint','pointSeller') NOT NULL,
  `deliveryDuration` int(11) NOT NULL,
  `linkGPS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliverypointline`
--

CREATE TABLE `deliverypointline` (
  `idDeliveryPointLine` int(11) NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `deliveryPointNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `enterprise`
--

CREATE TABLE `enterprise` (
  `idEnterprise` int(11) NOT NULL,
  `enterpriseName` varchar(45) NOT NULL,
  `town` varchar(45) NOT NULL,
  `Contact_idContact` int(11) NOT NULL,
  `Address_idAddress` int(11) NOT NULL,
  `webSite` varchar(45) NOT NULL,
  `taxIdentificationNumberS` int(11) NOT NULL,
  `registerCommercialNumberS` varchar(45) NOT NULL,
  `accountNumber` varchar(45) NOT NULL,
  `accountType` varchar(45) NOT NULL,
  `publicPrivate` enum('public','private') NOT NULL,
  `logoImage` varchar(45) NOT NULL,
  `transportCosts` float NOT NULL,
  `deliveryTime` int(11) NOT NULL,
  `reservationTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL,
  `orderNumber` varchar(45) NOT NULL,
  `dateOrder` date NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `Buyer_idBuyer` int(11) NOT NULL,
  `orderStatus` enum('reserved','cancel','waiting','paid','pending') NOT NULL,
  `orderTotal` float NOT NULL,
  `totalOutsideTax` float NOT NULL,
  `tva` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderline`
--

CREATE TABLE `orderline` (
  `idOrderLine` int(11) NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `Product_idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` float NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idProduct` int(11) NOT NULL,
  `productRef` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `Enterprise_idEnterprise` int(11) NOT NULL,
  `price` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `productImage` varchar(45) NOT NULL,
  `quantityStock` int(11) NOT NULL,
  `productDescription` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `idTransaction` int(11) NOT NULL,
  `transactionNumber` int(11) NOT NULL,
  `transactionDate` date NOT NULL,
  `Order_idOrder` int(11) NOT NULL,
  `transactionStatus` enum('success','failed','cancel','waiting') NOT NULL,
  `paymentMethod` enum('dhahabia','cib','virement') NOT NULL,
  `failureDescription` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wilaya`
--

CREATE TABLE `wilaya` (
  `idWilaya` int(11) NOT NULL,
  `wilayaName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wilaya`
--

INSERT INTO `wilaya` (`idWilaya`, `wilayaName`) VALUES
(1, 'Adrar'),
(2, 'Chlef'),
(3, 'Laghouat'),
(4, 'Oum El Bouaghi'),
(5, 'Batna'),
(6, 'Béjaïa'),
(7, 'Biskra'),
(8, 'Béchar'),
(9, 'Blida'),
(10, 'Bouïra'),
(11, 'Tamanrasset'),
(12, 'Tébessa'),
(13, 'Tlemcen'),
(14, 'Tiaret'),
(15, 'Tizi Ouzou'),
(16, 'Alger'),
(17, 'Djelfa'),
(18, 'Jijel'),
(19, 'Sétif'),
(20, 'Saïda'),
(21, 'Skikda'),
(22, 'Sidi Bel Abbès'),
(23, 'Annaba'),
(24, 'Guelma'),
(25, 'Constantine'),
(26, 'Médéa'),
(27, 'Mostaganem'),
(28, 'M Sila'),
(29, 'Mascara'),
(30, 'Ouargla'),
(31, 'Oran'),
(32, 'El Bayadh'),
(33, 'Illizi'),
(34, 'Bordj Bou Arréridj'),
(35, 'Boumerdès'),
(36, 'El Tarf'),
(37, 'Tindouf'),
(38, 'Tissemsilt'),
(39, 'El Oued'),
(40, 'Khenchela'),
(41, 'Souk Ahras'),
(42, 'Tipaza'),
(43, 'Mila'),
(44, 'Aïn Defla'),
(45, 'Naâma'),
(46, 'Aïn Témouchent'),
(47, 'Ghardaïa'),
(48, 'Relizane'),
(49, 'El M ghair'),
(50, 'El Menia'),
(51, 'Ouled Djellal'),
(52, 'Bordj Baji Mokhtar'),
(53, 'Béni Abbès'),
(54, 'Timimoun'),
(55, 'Touggourt'),
(56, 'Djanet'),
(57, 'In Salah'),
(58, 'In Guezzam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`homeNumber`,`floor`,`street`,`city`,`Commune_idCommune`) USING BTREE,
  ADD UNIQUE KEY `idAddress_UNIQUE` (`idAddress`),
  ADD KEY `fk_Address_Commune_idx` (`Commune_idCommune`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`firstNameB`,`lastNameB`,`birthDayB`),
  ADD UNIQUE KEY `idBuyer_UNIQUE` (`idBuyer`),
  ADD KEY `fk_Buyer_Address_idx` (`Address_idAddress`) USING BTREE;

--
-- Indexes for table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`communeName`,`Wilaya_idWilaya`) USING BTREE,
  ADD UNIQUE KEY `idCommune_UNIQUE` (`idCommune`) USING BTREE,
  ADD KEY `fk_Commune_Wilaya_idx` (`Wilaya_idWilaya`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`firstNameS`,`lastNameS`,`birthDayS`),
  ADD UNIQUE KEY `idContact_UNIQUE` (`idContact`) USING BTREE,
  ADD KEY `fk_Contact_Address_idx` (`Address_idAddress`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`deliveryNumber`,`startDateDelivery`,`Enterprise_idEnterprise`) USING BTREE,
  ADD UNIQUE KEY `idDelivery_UNIQUE` (`idDelivery`),
  ADD KEY `fk_Delivery_Order_idx` (`Order_idOrder`),
  ADD KEY `fk_Delivery_Enterprise_idx` (`Enterprise_idEnterprise`),
  ADD KEY `fk_Delivery_Address_idx` (`Address_idAddress`);

--
-- Indexes for table `deliverypointline`
--
ALTER TABLE `deliverypointline`
  ADD PRIMARY KEY (`Enterprise_idEnterprise`,`Address_idAddress`),
  ADD UNIQUE KEY `idDeliveryPointLine_UNIQUE` (`idDeliveryPointLine`),
  ADD KEY `fk_DeliveryPointLine_Address_idx` (`Address_idAddress`),
  ADD KEY `fk_DeliveryPointLine_Enterprise_idx` (`Enterprise_idEnterprise`);

--
-- Indexes for table `enterprise`
--
ALTER TABLE `enterprise`
  ADD PRIMARY KEY (`enterpriseName`,`town`),
  ADD UNIQUE KEY `idEnterprise_UNIQUE` (`idEnterprise`),
  ADD UNIQUE KEY `enterpriseName_UNIQUE` (`enterpriseName`) USING BTREE,
  ADD KEY `fk_Enterprise_Contact_idx` (`Contact_idContact`),
  ADD KEY `fk_Enterprise_Address_idx` (`Address_idAddress`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderNumber`,`dateOrder`,`Enterprise_idEnterprise`),
  ADD UNIQUE KEY `idOrder_UNIQUE` (`idOrder`),
  ADD KEY `fk_Order_Enterprise_idx` (`Enterprise_idEnterprise`),
  ADD KEY `fk_Order_Buyer_idx` (`Buyer_idBuyer`) USING BTREE;

--
-- Indexes for table `orderline`
--
ALTER TABLE `orderline`
  ADD PRIMARY KEY (`Order_idOrder`,`Product_idProduct`),
  ADD UNIQUE KEY `idOrderLine_UNIQUE` (`idOrderLine`),
  ADD KEY `fk_OrderLine_Order_idx` (`Order_idOrder`),
  ADD KEY `fk_OrderLine_Product_idx` (`Product_idProduct`) USING BTREE;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productRef`,`productName`,`Enterprise_idEnterprise`) USING BTREE,
  ADD UNIQUE KEY `idProduct_UNIQUE` (`idProduct`),
  ADD KEY `fk_Product_Enterprise_idx` (`Enterprise_idEnterprise`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionNumber`,`transactionDate`,`Order_idOrder`),
  ADD UNIQUE KEY `idTransaction_UNIQUE` (`idTransaction`),
  ADD KEY `fk_Transaction_Order_idx` (`Order_idOrder`);

--
-- Indexes for table `wilaya`
--
ALTER TABLE `wilaya`
  ADD PRIMARY KEY (`wilayaName`),
  ADD UNIQUE KEY `idWilaya_UNIQUE` (`idWilaya`),
  ADD UNIQUE KEY `wilayaName_UNIQUE` (`wilayaName`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `idBuyer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commune`
--
ALTER TABLE `commune`
  MODIFY `idCommune` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `idDelivery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverypointline`
--
ALTER TABLE `deliverypointline`
  MODIFY `idDeliveryPointLine` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enterprise`
--
ALTER TABLE `enterprise`
  MODIFY `idEnterprise` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderline`
--
ALTER TABLE `orderline`
  MODIFY `idOrderLine` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `idTransaction` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wilaya`
--
ALTER TABLE `wilaya`
  MODIFY `idWilaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_Address_Commune` FOREIGN KEY (`Commune_idCommune`) REFERENCES `commune` (`idCommune`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `fk_Buyer_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `commune`
--
ALTER TABLE `commune`
  ADD CONSTRAINT `fk_Commune_Wilaya` FOREIGN KEY (`Wilaya_idWilaya`) REFERENCES `wilaya` (`idWilaya`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `fk_Contact_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `fk_Delivery_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Delivery_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `order` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `deliverypointline`
--
ALTER TABLE `deliverypointline`
  ADD CONSTRAINT `fk_DeliveryPointLine_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DeliveryPointLine_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `enterprise`
--
ALTER TABLE `enterprise`
  ADD CONSTRAINT `fk_Enterprise_Address` FOREIGN KEY (`Address_idAddress`) REFERENCES `address` (`idAddress`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Enterprise_Contact` FOREIGN KEY (`Contact_idContact`) REFERENCES `contact` (`idContact`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_Order_Buyer` FOREIGN KEY (`Buyer_idBuyer`) REFERENCES `buyer` (`idBuyer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orderline`
--
ALTER TABLE `orderline`
  ADD CONSTRAINT `fk_OrderLine_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `order` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrderLine_Product` FOREIGN KEY (`Product_idProduct`) REFERENCES `product` (`idProduct`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_Product_Enterprise` FOREIGN KEY (`Enterprise_idEnterprise`) REFERENCES `enterprise` (`idEnterprise`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_Transaction_Order` FOREIGN KEY (`Order_idOrder`) REFERENCES `order` (`idOrder`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
