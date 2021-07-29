-- MySQL Script generated by MySQL Workbench
-- Thu Jul 29 14:44:19 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Payment
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Payment
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Payment` DEFAULT CHARACTER SET utf8 ;
USE `Payment` ;

-- -----------------------------------------------------
-- Table `Payment`.`Wilaya`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Wilaya` (
  `idWilaya` INT NOT NULL AUTO_INCREMENT,
  `wilaya` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idWilaya`),
  UNIQUE INDEX `idWilaya_UNIQUE` (`idWilaya` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Commune`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Commune` (
  `idCommune` INT NOT NULL AUTO_INCREMENT,
  `idWilaya` INT NOT NULL,
  `commune` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCommune`),
  UNIQUE INDEX `idCommune_UNIQUE` (`idCommune` ASC) VISIBLE,
  INDEX `idWilaya_idx` (`idWilaya` ASC) VISIBLE,
  CONSTRAINT `idWilaya`
    FOREIGN KEY (`idWilaya`)
    REFERENCES `Payment`.`Wilaya` (`idWilaya`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Municipal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Municipal` (
  `idMunicipal` INT NOT NULL AUTO_INCREMENT,
  `idCommune` INT NOT NULL,
  `municipal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idMunicipal`),
  UNIQUE INDEX `idMunicipal_UNIQUE` (`idMunicipal` ASC) VISIBLE,
  INDEX `idCommune_idx` (`idCommune` ASC) VISIBLE,
  CONSTRAINT `idCommune`
    FOREIGN KEY (`idCommune`)
    REFERENCES `Payment`.`Commune` (`idCommune`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Address` (
  `idAddress` INT NOT NULL AUTO_INCREMENT,
  `idMunicipal` INT NOT NULL,
  `city` VARCHAR(45) NULL,
  `street` INT NULL,
  `home` VARCHAR(45) NULL,
  `postalCode` INT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`idAddress`),
  UNIQUE INDEX `idAddress_UNIQUE` (`idAddress` ASC) VISIBLE,
  INDEX `idMunicipal_idx` (`idMunicipal` ASC) VISIBLE,
  CONSTRAINT `idMunicipal`
    FOREIGN KEY (`idMunicipal`)
    REFERENCES `Payment`.`Municipal` (`idMunicipal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Person` (
  `idAddress` INT NOT NULL,
  `namefull` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`namefull`, `phone`),
  INDEX `idAddress_idx` (`idAddress` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE,
  UNIQUE INDEX `namefull_UNIQUE` (`namefull` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  CONSTRAINT `idAddress`
    FOREIGN KEY (`idAddress`)
    REFERENCES `Payment`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Buyer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Buyer` (
  `Person_name` VARCHAR(45) NOT NULL,
  `Person_phone` VARCHAR(45) NOT NULL,
  `type` ENUM("person", "enterprise") NOT NULL,
  INDEX `fk_Buyer_Person1_idx` (`Person_name` ASC, `Person_phone` ASC) VISIBLE,
  PRIMARY KEY (`Person_name`, `Person_phone`),
  UNIQUE INDEX `Person_name_UNIQUE` (`Person_name` ASC) VISIBLE,
  UNIQUE INDEX `Person_phone_UNIQUE` (`Person_phone` ASC) VISIBLE,
  CONSTRAINT `fk_Buyer_Person1`
    FOREIGN KEY (`Person_name` , `Person_phone`)
    REFERENCES `Payment`.`Person` (`namefull` , `phone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Seller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Seller` (
  `Person_name` VARCHAR(45) NOT NULL,
  `Person_phone` VARCHAR(45) NOT NULL,
  `account` INT NOT NULL,
  UNIQUE INDEX `account_UNIQUE` (`account` ASC) VISIBLE,
  INDEX `fk_Seller_Person1_idx` (`Person_name` ASC, `Person_phone` ASC) VISIBLE,
  PRIMARY KEY (`Person_name`, `Person_phone`),
  UNIQUE INDEX `Person_name_UNIQUE` (`Person_name` ASC) VISIBLE,
  UNIQUE INDEX `Person_phone_UNIQUE` (`Person_phone` ASC) VISIBLE,
  CONSTRAINT `fk_Seller_Person1`
    FOREIGN KEY (`Person_name` , `Person_phone`)
    REFERENCES `Payment`.`Person` (`namefull` , `phone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Delivery`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Delivery` (
  `idDelivery` INT NOT NULL AUTO_INCREMENT,
  `adaptedPoint` INT NULL,
  `type` ENUM("home", "adaptedPoint", "bySeller") NOT NULL,
  `state` ENUM("inProgress", "waiting", "delivered") NOT NULL,
  `delay` INT NOT NULL,
  `linkGPS` VARCHAR(45) NOT NULL,
  `cost` FLOAT NULL,
  PRIMARY KEY (`idDelivery`),
  UNIQUE INDEX `idDelivery_UNIQUE` (`idDelivery` ASC) VISIBLE,
  INDEX `idAddress_idx` (`adaptedPoint` ASC) VISIBLE,
  CONSTRAINT `idAddress`
    FOREIGN KEY (`adaptedPoint`)
    REFERENCES `Payment`.`Address` (`idAddress`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Order` (
  `idOrder` INT NOT NULL AUTO_INCREMENT,
  `idBuyer` INT NOT NULL,
  `idSeller` INT NOT NULL,
  `idDelivery` INT NOT NULL,
  `order` VARCHAR(45) NOT NULL,
  `montant` INT NOT NULL,
  `payment` ENUM("dhahabia", "cib", "vir") NOT NULL,
  `state` ENUM("reserved", "canceled", "waiting", "paid") NOT NULL,
  `datePayment` DATE NOT NULL,
  `dateReservation` DATE NULL,
  `delay` INT NULL,
  `Buyer_Person_name` VARCHAR(45) NOT NULL,
  `Buyer_Person_phone` VARCHAR(45) NOT NULL,
  `Seller_Person_name` VARCHAR(45) NOT NULL,
  `Seller_Person_phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idOrder`),
  UNIQUE INDEX `idOrder_UNIQUE` (`idOrder` ASC) VISIBLE,
  INDEX `idDelivery_idx` (`idDelivery` ASC) VISIBLE,
  INDEX `fk_Order_Buyer1_idx` (`Buyer_Person_name` ASC, `Buyer_Person_phone` ASC) VISIBLE,
  INDEX `fk_Order_Seller1_idx` (`Seller_Person_name` ASC, `Seller_Person_phone` ASC) VISIBLE,
  CONSTRAINT `idDelivery`
    FOREIGN KEY (`idDelivery`)
    REFERENCES `Payment`.`Delivery` (`idDelivery`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Buyer1`
    FOREIGN KEY (`Buyer_Person_name` , `Buyer_Person_phone`)
    REFERENCES `Payment`.`Buyer` (`Person_name` , `Person_phone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Seller1`
    FOREIGN KEY (`Seller_Person_name` , `Seller_Person_phone`)
    REFERENCES `Payment`.`Seller` (`Person_name` , `Person_phone`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Product` (
  `idProduct` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `unit` VARCHAR(45) NOT NULL,
  `category` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProduct`),
  UNIQUE INDEX `idProduct_UNIQUE` (`idProduct` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Payment`.`Order_Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Payment`.`Order_Products` (
  `idOrder` INT NOT NULL,
  `idProduct` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`idOrder`, `idProduct`),
  UNIQUE INDEX `idOrderProducts_UNIQUE` (`idOrder` ASC) VISIBLE,
  UNIQUE INDEX `idProduct_UNIQUE` (`idProduct` ASC) VISIBLE,
  CONSTRAINT `idOrder`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Payment`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idProduct`
    FOREIGN KEY (`idProduct`)
    REFERENCES `Payment`.`Product` (`idProduct`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
