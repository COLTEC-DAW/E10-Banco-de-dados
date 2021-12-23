CREATE TABLE Clientes (
	idClientes INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    Data_de_Nascimento DATE NOT NULL,
    Endereço_Residencial VARCHAR(100) NOT NULL,
    Telefone_de_Contato VARCHAR(20) NOT NULL,
    CONSTRAINT clientes_pk PRIMARY KEY (idClientes)
);

INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (0, 'Pedro', '134567-30', '2000/02/12', 'Rua das Valquírias - 123', '93234-1456');
INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (1, 'João', '123456-30', '2004/05/18', 'Rua do Limoeiro - 145', '93222-1490');
INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (2, 'Jeca-Tatu', '127689-50', '2006/05/19', 'Rua das Pitangueiras - 236', '92788-9087');
INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (3, 'Maria', '124567-23', '2008/05/20', 'Rua Valdemir Pereira - 245', '94567-9090');
INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (4, 'Juquinha', '147893-25', '2009/02/20', 'Rua Guarujá - 238', '90876-2030');
INSERT INTO Clientes (idClientes, nome, CPF, Data_de_Nascimento, Endereço_Residencial, Telefone_de_Contato) VALUES (5, 'Rafael', '245832-80', '2002/03/29', 'Rua das Vacas - 289', '97654-6578');
SELECT * FROM Clientes;

CREATE TABLE Agências (
	idAgências INT NOT NULL,
    Código_da_Agência VARCHAR(25) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Endereço VARCHAR(100) NOT NULL,
    Data_de_Criação DATE NOT NULL,
    CONSTRAINT Agências_pk PRIMARY KEY (idAgências)
);

INSERT INTO Agências (idAgências, Código_da_Agência, Nome, Endereço, Data_de_Criação) VALUES (0, '1332', 'Agência dos Professores', 'Rua Itatiaia - 145', '2021/03/13');
INSERT INTO Agências (idAgências, Código_da_Agência, Nome, Endereço, Data_de_Criação) VALUES (1, '1567', 'Agência Central', 'Rua Itaú - 378', '2019/05/20');
INSERT INTO Agências (idAgências, Código_da_Agência, Nome, Endereço, Data_de_Criação) VALUES (2, '1897', 'Agência dos Bocós', 'Rua Ibirapuera - 789', '2020/08/10');
INSERT INTO Agências (idAgências, Código_da_Agência, Nome, Endereço, Data_de_Criação) VALUES (3, '1356', 'Agência Jamelão', 'Rua Pindaíba - 908', '2019/02/05');
SELECT * FROM Agências;

CREATE TABLE Transações (
	idTransações INT NOT NULL,
    Tipo_da_Transação VARCHAR(40) NOT NULL,
    Conta_de_Origem VARCHAR(25) NOT NULL,
    Valor VARCHAR(30),
    CONSTRAINT Transações_pk PRIMARY KEY (idTransações)
);
 
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (0, 'Saque - Poupança', 'João', 'R$ 200,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (1, 'Saque - Corrente', 'Pedro' 'R$ 300,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (2, 'Depósito - Poupança', 'Pedro' 'R$ 400,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (3, 'Depósito - Corrente', 'João' 'R$ 600,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (4, 'TED', 'Jeca-Tatu' 'R$ 800,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (5, 'PIX', 'Jeca-Tatu' 'R$ 850,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (6, 'Fundo de Investimento - Depósito', 'João' 'R$ 900,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (7, 'Fundo de Investimento - Saque', 'Jeca-Tatu' 'R$ 700,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (8, 'Pagamento', 'Jeca-Tatu' 'R$ 720,00');
INSERT INTO Transações (idTransações, Tipo_da_Transação, Conta_de_Origem, Valor) VALUES (9, 'Empréstimo', 'Pedro' 'R$ 500,00');
SELECT * FROM Transações;

CREATE TABLE Contas (
	idContas INT NOT NULL,
    id_t INT NULL,
    Código_da_Conta VARCHAR(100) NOT NULL,
    Agência_Detentora_da_Conta VARCHAR(60) NOT NULL,
    Dono_da_Conta VARCHAR(100) NOT NULL,
    Saldo VARCHAR(10) NOT NULL,
    Tipo_da_Conta VARCHAR(25) NOT NULL,
    Clientes_id INT NOT NULL,
    Transações_id INT NULL,
    Agências_id INT NOT NULL,
    CONSTRAINT Contas_pk PRIMARY KEY (idContas),
    CONSTRAINT Clientes_fk FOREIGN KEY (Clientes_id)
		REFERENCES Clientes (idClientes),
	CONSTRAINT Transações_fk FOREIGN KEY (Transações_id)
		REFERENCES Transações (idTransações),
	CONSTRAINT Agências_fk FOREIGN KEY (Agências_id)
		REFERENCES Agências (idAgências),
	CONSTRAINT t_fk FOREIGN KEY (id_t)
		REFERENCES Contas (id_t)
);
desc Contas;

ALTER TABLE CONTAS
MODIFY Transações_id INT;

INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (0, '2333', 'Agência dos Professores', 'João', 'R$200,00', 'Poupança', 0, 1, 0);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (1, '2564', 'Agência Central', 'Pedro', 'R$400,00', 'Corrente', 1, 0, 1); UPDATE CONTAS SET transações_ID = NULL WHERE IDCONTAS = 11;
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (2, '2345', 'Agência Central', 'João', 'R$500,00', 'Corrente', 0, 0, 1);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (3, '2908', 'Agência Central', 'Jeca-Tatu', 'R$700,00', 'Corrente', 2, 0, 1);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (4, '2931', 'Agência Central', 'Jeca-Tatu', 'R$900,00', 'Corrente', 2, 0, 1);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (5, '3978', 'Agência dos Bocós', 'Jeca-Tatu', 'R$300,00', 'Poupança', 2, 4, 2);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (6, '4561', 'Agência dos Bocós', 'Pedro', 'R$850,00', 'Poupança', 1, 4, 2);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (7, '5678', 'Agência dos Bocós', 'João', 'R$910,00', 'Corrente', 0, 4, 2);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (8, '2456', 'Agência dos Bocós', 'João', 'R$950,00', 'Corrente', 0, 4, 2);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (9, '2478', 'Agência Jamelão', 'Pedro', 'R$560,00', 'Poupança', 1, 2, 3);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (10, '2975', 'Agência Jamelão', 'João', 'R$988,00', 'Corrente', 0, 2, 3);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (11, '2923', 'Agência Jamelão', 'Maria', 'R$990,00', 'Corrente', 3, NULL, 3);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (12, '2945', 'Agência Jamelão', 'Juquinha', 'R$912,00', 'Corrente', 4, NULL, 3);
INSERT INTO Contas (idContas, Código_da_Conta, Agência_Detentora_da_Conta, Dono_da_Conta, Saldo, Tipo_da_Conta, Clientes_id, Transações_id, Agências_id) VALUES (13, '7893', 'Agência Jamelão', 'Rafael', 'R$1023,00', 'Corrente', 5, NULL, 3);
SELECT * FROM Contas;

SELECT nome FROM Clientes;
SELECT * FROM Agências WHERE Data_de_Criação > '2020/01/01';
SELECT * FROM Contas WHERE Tipo_da_Conta = 'Poupança';
SELECT * FROM Contas WHERE Agência_Detentora_da_Conta = 'Agência Central';
SELECT * FROM transações WHERE Conta_de_Origem = 'João';

SELECT * FROM transações t
JOIN Contas c
ON t.idTransações = c.Transações_id
WHERE Conta_de_Origem = 'João' AND Dono_da_Conta = 'Pedro';

SELECT *, COUNT(a.idAgências) FROM Agências a
JOIN Contas c ON a.idAgências = c.Agências_id
GROUP BY a.Nome
HAVING COUNT(a.idAgências) >= 3;

SELECT *, COUNT(t.idTransações) FROM Contas c
JOIN Transações t ON t.idTransações = c.Transações_id
GROUP BY t.Conta_de_Origem
HAVING COUNT(t.idTransações) >= 4;

SELECT *, COUNT(c.idClientes) FROM Clientes c
JOIN Contas c2 ON c.idClientes = c2.Clientes_id
GROUP BY c.nome
HAVING COUNT(c.idClientes) = 1;