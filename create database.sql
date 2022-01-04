-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Agencia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Agencia` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Agencia` (
  `idAgenda` INT NOT NULL,
  `codigo` VARCHAR(7) NOT NULL,
  `nome` VARCHAR(150) NOT NULL,
  `enderco` VARCHAR(255) NOT NULL,
  `data_criacao` DATE NULL,
  PRIMARY KEY (`idAgenda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL,
  `Nome` VARCHAR(150) NOT NULL,
  `CPF` VARCHAR(11) NOT NULL,
  `Data_nasc` DATE NULL,
  `Endereco` VARCHAR(255) NULL,
  `Telefone` VARCHAR(13) NOT NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Conta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Conta` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Conta` (
  `idConta` INT NOT NULL,
  `saldo` DECIMAL NULL,
  `tipoConta` INT NULL,
  `Agencia_idAgencia` INT NOT NULL,
  `Cliente_idCliente` INT NOT NULL,
  PRIMARY KEY (`idConta`),
  INDEX `fk_Conta_Agenda1_idx` (`Agencia_idAgencia` ASC) VISIBLE,
  INDEX `fk_Conta_Cliente1_idx` (`Cliente_idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_Conta_Agenda1`
    FOREIGN KEY (`Agencia_idAgencia`)
    REFERENCES `mydb`.`Agencia` (`idAgenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conta_Cliente1`
    FOREIGN KEY (`Cliente_idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Transicao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Transicao` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Transicao` (
  `idTransicao` INT NOT NULL,
  `Tipo` INT NOT NULL,
  `Valor` DECIMAL NOT NULL,
  `ContaOrigem` INT NOT NULL,
  `ContaDestino` INT NOT NULL,
  `DataTransicao` DATETIME NOT NULL,
  PRIMARY KEY (`idTransicao`),
  INDEX `fk_Transicao_Conta1_idx` (`ContaOrigem` ASC) VISIBLE,
  INDEX `fk_Transicao_Conta2_idx` (`ContaDestino` ASC) VISIBLE,
  CONSTRAINT `fk_Transicao_Conta1`
    FOREIGN KEY (`ContaOrigem`)
    REFERENCES `mydb`.`Conta` (`idConta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transicao_Conta2`
    FOREIGN KEY (`ContaDestino`)
    REFERENCES `mydb`.`Conta` (`idConta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
