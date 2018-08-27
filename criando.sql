-- -----------------------------------------------------
-- Schema departamento_bibliotecas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `departamento_bibliotecas` DEFAULT CHARACTER SET utf8 ;
USE `departamento_bibliotecas` ;

-- -----------------------------------------------------
-- Table `departamento_bibliotecas`.`biblioteca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `departamento_bibliotecas`.`biblioteca` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(70) NOT NULL,
  PRIMARY KEY (`idBiblioteca`),
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `departamento_bibliotecas`.`livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `departamento_bibliotecas`.`livros` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `autor` VARCHAR(45) NOT NULL,
  `editora` VARCHAR(45) NOT NULL,
  `ISBN` VARCHAR(45) NOT NULL,
  `tema` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idLivros`),
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `departamento_bibliotecas`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `departamento_bibliotecas`.`usuarios` (
  `matricula` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `curso` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idUsuarios`),
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `departamento_bibliotecas`.`exemplares`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `departamento_bibliotecas`.`exemplares` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `edicao` VARCHAR(45) NOT NULL,
  `ano_publicacao` INT NOT NULL,
  `nun_paginas` INT NOT NULL,
  `livros_id` INT UNSIGNED NOT NULL,
  `biblioteca_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_exemplares_livros1_idx` (`livros_id` ASC) VISIBLE,
  INDEX `fk_exemplares_biblioteca1_idx` (`biblioteca_id` ASC) VISIBLE,
  CONSTRAINT `fk_exemplares_livros1`
    FOREIGN KEY (`livros_id`)
    REFERENCES `departamento_bibliotecas`.`livros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_exemplares_biblioteca1`
    FOREIGN KEY (`biblioteca_id`)
    REFERENCES `departamento_bibliotecas`.`biblioteca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `departamento_bibliotecas`.`emprestimos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `departamento_bibliotecas`.`emprestimos` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_devolucao` DATETIME NOT NULL,
  `data_emprestimo` DATETIME NOT NULL,
  `usuarios_id` INT UNSIGNED NOT NULL,
  `biblioteca_id` INT UNSIGNED NOT NULL,
  `exemplares_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idemprestimos_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_emprestimos_usuarios_idx` (`usuarios_id` ASC) VISIBLE,
  INDEX `fk_emprestimos_biblioteca1_idx` (`biblioteca_id` ASC) VISIBLE,
  INDEX `fk_emprestimos_exemplares1_idx` (`exemplares_id` ASC) VISIBLE,
  CONSTRAINT `fk_emprestimos_usuarios`
    FOREIGN KEY (`usuarios_id`)
    REFERENCES `departamento_bibliotecas`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimos_biblioteca1`
    FOREIGN KEY (`biblioteca_id`)
    REFERENCES `departamento_bibliotecas`.`biblioteca` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimos_exemplares1`
    FOREIGN KEY (`exemplares_id`)
    REFERENCES `departamento_bibliotecas`.`exemplares` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;