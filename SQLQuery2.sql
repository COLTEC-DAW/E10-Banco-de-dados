/******************************************************************************************
 *         					        E03 - SQL    										  *
 ******************************************************************************************
 * Data: 09/01/2022 													            	  *
 * Autor: Bruna Perez																	  *
 * Descrição: Inserçaõ de dados:	                  *
 ******************************************************************************************/
 USE E03_SQL;

INSERT INTO Clientes (idCliente, Nome, CPF, EnderecoResidencial, DataNascimento, TelefoneContato) values ('0', 'Bruna', '12204198692', 'EnderecoQualqueretc', '2003-09-18', '31994303752');
INSERT INTO Clientes (idCliente, Nome, CPF, EnderecoResidencial, DataNascimento, TelefoneContato) values ('1', 'Joao', '13111382001', 'EnderecoQualqueretc', '2000-11-05', '31994289696');
INSERT INTO Clientes (idCliente, Nome, CPF, EnderecoResidencial, DataNascimento, TelefoneContato) values ('2', 'Maria', '19012614090', 'EnderecoQualqueretc', '1989-03-21', '31994280707');

INSERT INTO Agencias (idAgencia, Nome, Endereco, DataCriacao) values ('0', 'Agencia1', 'EnderecoQualquer1', '1975-07-14');
INSERT INTO Agencias (idAgencia, Nome, Endereco, DataCriacao) values ('1', 'Agencia2', 'EnderecoQualquer2', '1990-03-20');
INSERT INTO Agencias (idAgencia, Nome, Endereco, DataCriacao) values ('2', 'Agencia3', 'EnderecoQualquer3', '2001-11-04');

INSERT INTO Contas (idConta, TipoConta, Saldo, IdAgencia, IdCliente) values ('1', 'Corrente', '850', '2', '0');
INSERT INTO Contas (idConta, TipoConta, Saldo, IdAgencia, IdCliente) values ('0', 'Poupanca', '1200', '1', '2');
INSERT INTO Contas (idConta, TipoConta, Saldo, IdAgencia, IdCliente) values ('2', 'Corrente', '5400', '0', '1');

INSERT INTO transacao (id, valor, tipo, contas_numero_origem, contas_numero_destino) values ('00', '100.0', 'dep', '222', '111');
