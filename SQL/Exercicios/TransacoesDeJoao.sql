CREATE DEFINER=`root`@`localhost` PROCEDURE `TransacoesDeX`(IN nome VARCHAR(45))
BEGIN
SELECT * FROM transacao
JOIN conta 	 ON conta.Id = transacao.Conta_origem
JOIN cliente ON conta.Cliente_dono = cliente.Cpf
WHERE cliente.Nome = nome;
END