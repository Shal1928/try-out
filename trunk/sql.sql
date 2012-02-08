SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`SOAL`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`SOAL` (
  `TANGGAL` DATE NOT NULL ,
  `TIPE_SOAL` INT NULL ,
  `NO_SOAL` INT NULL ,
  `ISI_SOAL` VARCHAR(45) NULL ,
  `JAWABAN` VARCHAR(45) NULL ,
  PRIMARY KEY (`TANGGAL`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PILIHAN`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`PILIHAN` (
  `TANGGAL` DATE NOT NULL ,
  `TIPE_SOAL` INT NULL ,
  `NO_SOAL` INT NULL ,
  `NO_PILIHAN` INT NULL ,
  `ISI_PILIHAN` VARCHAR(45) NULL ,
  PRIMARY KEY (`TANGGAL`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`USER`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`USER` (
  `ID_USER` INT NOT NULL ,
  `NAMA` VARCHAR(45) NULL ,
  `NO_VOUCHER` VARCHAR(45) NULL ,
  `PASSWORD` VARCHAR(45) NULL ,
  PRIMARY KEY (`ID_USER`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`HASIL`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`HASIL` (
  `TANGGAL` DATE NOT NULL ,
  `ID_USER` INT NULL ,
  `TIPE_SOAL` INT NULL ,
  `BENAR` INT NULL ,
  `SALAH` INT NULL ,
  `KOSONG` INT NULL ,
  PRIMARY KEY (`TANGGAL`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TIPE`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`TIPE` (
  `ID_TIPE` INT NOT NULL ,
  `NAMA` VARCHAR(45) NULL ,
  PRIMARY KEY (`ID_TIPE`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
