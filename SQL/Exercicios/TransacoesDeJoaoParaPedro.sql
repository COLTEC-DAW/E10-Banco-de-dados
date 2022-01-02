CREATE DEFINER=`root`@`localhost` PROCEDURE `TransacoesXparaY`(IN nome1 varchar(45), IN nome2 varchar(45))
BEGIN
SELECT * FROM transacao
JOIN conta Conta_Origem ON Conta_Origem.Id = transacao.Conta_origem
JOIN conta Conta_Destino ON Conta_Destino.Id = transacao.Conta_destino
JOIN cliente Cliente_Origem ON Conta_Origem.Cliente_Dono = Cliente_Origem.Cpf 
JOIN cliente Cliente_Destino ON	Conta_Destino.Cliente_Dono = Cliente_Destino.Cpf
WHERE Cliente_Origem.Nome = nome1 AND Cliente_Destino.Nome = nome2;
END