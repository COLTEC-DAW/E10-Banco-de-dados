USE sistemabancario;

INSERT INTO cliente(cpf, nome, dataNascimento, telefone, endereco) VALUES (1234513, "Julia", "2004-02-28", "31998765433", "Rua Espinosa");
INSERT INTO cliente(cpf, nome, dataNascimento, telefone, endereco) VALUES (1234512, "João", "1964-11-06", "31998765432", "Rua Paulo Diniz");
INSERT INTO cliente(cpf, nome, dataNascimento, telefone, endereco) VALUES (1234511, "Pedro", "1940-10-06", "31998765431", "Rua Benedito Valadares");

INSERT INTO agencia(codigo, nome, criacao, endereco) VALUES (1111, "Centro", "1970-09-20", "Avenida Amazonas");
INSERT INTO agencia(codigo, nome, criacao, endereco) VALUES (1334, "Carlos Prates", "1996-06-15", "Rua Padre Eustáquio");
INSERT INTO agencia(codigo, nome, criacao, endereco) VALUES (1978, "Buritis", "2021-03-10", "Avenida Mário Werneck");
INSERT INTO agencia(codigo, nome, criacao, endereco) VALUES (2085, "Caiçara", "2020-04-05", "Avenida Pedro II");
INSERT INTO agencia(codigo, nome, criacao, endereco) VALUES (1227, "Pampulha", "1985-11-13", "Avenida Antônio Carlos");

INSERT INTO conta(codigo, saldo, tipo, cliente_cpf, agencia_codigo) VALUES (1, 5000.74, "poupanca", 1234513, 1111);
INSERT INTO conta(codigo, saldo, tipo, cliente_cpf, agencia_codigo) VALUES (2, 298.90, "corrente", 1234513, 1111);
INSERT INTO conta(codigo, saldo, tipo, cliente_cpf, agencia_codigo) VALUES (3, 38193, "poupanca", 1234512, 1978);
INSERT INTO conta(codigo, saldo, tipo, cliente_cpf, agencia_codigo) VALUES (4, 39482.44, "poupanca", 1234511, 1334);

ALTER TABLE transacao DROP PRIMARY KEY;

INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("saque", 3, 59, 3);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 3, 236, 3);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 3, 3300, 3);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("PIX", 3, 845, 4);

INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 1000, 4);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 1500, 4);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 2000, 4);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 2500, 4);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 3000, 4);
INSERT INTO transacao(tipo, conta_codigo, valor, destino_conta_codigo) VALUES ("deposito", 4, 3500, 4);
