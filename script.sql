SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Tabela `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `nome` VARCHAR(45) NOT NULL,
  `CPF` INT NOT NULL,
  `nascimento` DATE NULL,
  `endereco` VARCHAR(45) NULL,
  `telefone` INT NULL,
  PRIMARY KEY (`CPF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `mydb`.`Conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Conta` (
  `codigo_conta` INT NOT NULL,
  `agencia` VARCHAR(45) NOT NULL,
  `saldo` INT NOT NULL,
  `codigo_agencia` INT NOT NULL,
  `dono` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `CPF_do_cliente` INT NOT NULL,
  PRIMARY KEY (`codigo_conta`),
  INDEX `CPF_do_cliente_idx` (`CPF_do_cliente` ASC) VISIBLE,
  CONSTRAINT `CPF_do_cliente`
    FOREIGN KEY (`CPF_do_cliente`)
    REFERENCES `mydb`.`Cliente` (`CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `mydb`.`Transações`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Transações` (
  `valor` DOUBLE NOT NULL,
  `origem_da_conta` VARCHAR(45) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `codigo_da_conta` INT NOT NULL,
   `Conta_destino` 	INT,
  INDEX `codigo_da_conta_idx` (`codigo_da_conta` ASC) VISIBLE,
  CONSTRAINT `codigo_da_conta`
    FOREIGN KEY (`codigo_da_conta`)
    REFERENCES `mydb`.`Conta` (`codigo_conta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabela `mydb`.`Agência`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Agência` (
  `codigo_da_agencia` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NULL,
  `data_da_criacao` DATE NULL,
  `código_da_conta` INT NOT NULL,
  PRIMARY KEY (`codigo_da_agencia`),
  INDEX `código_da_conta_idx` (`código_da_conta` ASC) VISIBLE,
  CONSTRAINT `código_da_conta`
    FOREIGN KEY (`código_da_conta`)
    REFERENCES `mydb`.`Conta` (`codigo_conta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
