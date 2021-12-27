-- -----------------------------------------------------
-- Schema sistemabancario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sistemabancario` DEFAULT CHARACTER SET utf8 ;
USE `sistemabancario` ;

-- -----------------------------------------------------
-- Table `sistemabancario`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemabancario`.`Cliente` (
  `CPF` VARCHAR(14) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Endereço` VARCHAR(45) NULL,
  `Telefone` VARCHAR(45) NULL,
  `Data_de_nascimento` DATE,
  `Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `mydb`.`Agência`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemabancario`.`Agência` (
  `Id` VARCHAR(45) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Endereço` VARCHAR(45) NULL,
  `Data_de_criação` DATE NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Nome_UNIQUE` (`Nome` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `sistemabancario`.`Conta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemabancario`.`Conta` (
  `Id` VARCHAR(45) NOT NULL,
  `Agência` VARCHAR(45) NOT NULL,
  `Proprietário` VARCHAR(45) NOT NULL,
  `Saldo` DOUBLE NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Cliente_Id` VARCHAR(45) NOT NULL,
  `Agência_Id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Código_UNIQUE` (`Id` ASC) VISIBLE,
  INDEX `fk_Conta_Cliente1_idx` (`Cliente_Id` ASC) VISIBLE,
  INDEX `fk_Conta_Agência1_idx` (`Agência_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Conta_Cliente1`
    FOREIGN KEY (`Cliente_Id`)
    REFERENCES `sistemabancario`.`Cliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Conta_Agência1`
    FOREIGN KEY (`Agência_Id`)
    REFERENCES `sistemabancario`.`Agência` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `sistemabancario`.`Transação`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sistemabancario`.`Transação` (
  `id` VARCHAR(45) NOT NULL,
  `Valor` DOUBLE NOT NULL,
  `Tipo_de_transação` VARCHAR(45) NOT NULL,
  `ContaId_Origem` VARCHAR(45) NOT NULL,
  `ContaId_Destino` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Transação_Conta1_idx` (`ContaId_Origem` ASC) VISIBLE,
  INDEX `fk_Transação_Conta2_idx` (`ContaId_Destino` ASC) VISIBLE,
  CONSTRAINT `fk_Transação_Conta1`
    FOREIGN KEY (`ContaId_Origem`)
    REFERENCES `sistemabancario`.`Conta` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transação_Conta2`
    FOREIGN KEY (`ContaId_Destino`)
    REFERENCES `sistemabancario`.`Conta` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);