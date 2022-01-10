CREATE DATABASE E03_SQL;
USE E03_SQL;


-- -----------------------------------------------------
-- Tabbela de Clientes
-- -----------------------------------------------------
CREATE TABLE Clientes (
  idCliente INT NOT NULL,
  Nome VARCHAR(45),
  CPF VARCHAR(11),
  EnderecoResidencial VARCHAR (45),
  DataNascimento DATE,
  TelefoneContato VARCHAR(13),
  PRIMARY KEY (idCliente));
-- -----------------------------------------------------
-- Tabela de Agencias 
-- -----------------------------------------------------
CREATE TABLE Agencias (
  idAgencia INT NOT NULL,
  Nome VARCHAR(45),
  Endereco VARCHAR(45),
  DataCriacao VARCHAR(45),
  PRIMARY KEY (idAgencia));
-- -----------------------------------------------------
-- Table Contas`
-- -----------------------------------------------------
CREATE TABLE Contas (
  IdConta INT NOT NULL,
  TipoConta VARCHAR(45),
  Saldo VARCHAR(45),
  IdAgencia INT NOT NULL,
  IdCliente INT NOT NULL,
  PRIMARY KEY (IdConta),
  FOREIGN KEY (IdAgencia) REFERENCES Agencias(IdAgencia),
  FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente)
);

-- -----------------------------------------------------
-- Tabela de Transacoes
-- -----------------------------------------------------
CREATE TABLE Transacoes (
  idTransacoes INT NOT NULL,
  TipoTransicao VARCHAR(45) NOT NULL,
  Valor VARCHAR(45),
  ContaOrigem VARCHAR(45),
  idConta INT NOT NULL,
  PRIMARY KEY (idTransacoes),
  FOREIGN KEY (idConta)REFERENCES Contas(idConta),
  CONSTRAINT chk_TipoTransicao CHECK (TipoTransicao IN ('Depósito', 'Saque'))
  );