-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema adventuredb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `adventuredb` ;

-- -----------------------------------------------------
-- Schema adventuredb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `adventuredb` DEFAULT CHARACTER SET utf8 ;
USE `adventuredb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(150) NULL,
  `role` VARCHAR(45) NULL,
  `enabled` TINYINT NULL DEFAULT 1,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `image`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `image` ;

CREATE TABLE IF NOT EXISTS `image` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `address` ;

CREATE TABLE IF NOT EXISTS `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `zip` INT NULL,
  `latitude` VARCHAR(45) NULL,
  `longitude` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user_profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_profile` ;

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `bio` VARCHAR(300) NULL,
  `mileage_points` INT NULL,
  `profile_pic_id` INT NULL DEFAULT 10,
  `address_id` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `registration_date` DATE NULL,
  `user_id` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `vehicle`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vehicle` ;

CREATE TABLE IF NOT EXISTS `vehicle` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `make` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `manufacturer_year` INT NULL,
  `capacity` INT NULL,
  `seats_available` INT NULL,
  `interior_description` VARCHAR(400) NULL,
  `user_profile_id` INT NULL,
  `enabled` TINYINT NULL DEFAULT 1,
  `imageURL` VARCHAR(200) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trip`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `trip` ;

CREATE TABLE IF NOT EXISTS `trip` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(255) NULL,
  `seats_available` INT NULL,
  `cargo_capacity` DOUBLE NULL,
  `create_date` DATE NULL,
  `enabled` TINYINT NULL DEFAULT 1,
  `total_cost` VARCHAR(200) NULL,
  `miles` DOUBLE NULL,
  `vehicle_id` INT NULL,
  `depart_address_id` INT NULL,
  `destination_address_id` INT NULL,
  `host_id` INT NULL,
  `title` VARCHAR(150) NULL,
  `feature_image` VARCHAR(200) NULL DEFAULT 'https://images.saatchiart.com/saatchi/700952/art/2188031/1266726-HSC00001-7.jpg',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS adventure@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'adventure'@'localhost' IDENTIFIED BY 'adventuredb';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'adventure'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `adventuredb`;
INSERT INTO `user` (`id`, `username`, `password`, `role`, `enabled`) VALUES (1, 'bobthedragqueen', 'bobpassword', 'admin', 1);
INSERT INTO `user` (`id`, `username`, `password`, `role`, `enabled`) VALUES (2, 'trixiemattel', 'trixiepassword', NULL, 1);
INSERT INTO `user` (`id`, `username`, `password`, `role`, `enabled`) VALUES (3, 'katya', 'katyapassword', NULL, 1);
INSERT INTO `user` (`id`, `username`, `password`, `role`, `enabled`) VALUES (DEFAULT, 'alyssaedwards', 'alyssapassword', NULL, 1);

COMMIT;

