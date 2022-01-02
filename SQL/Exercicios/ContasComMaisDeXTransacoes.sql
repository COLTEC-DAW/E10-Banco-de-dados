CREATE DEFINER=`root`@`localhost` PROCEDURE `ContasComMaisDeXTransacoes`(IN x INT)
BEGIN
SELECT *, COUNT(transacao.Conta_origem) FROM conta
JOIN transacao ON transacao.Conta_origem = conta.Id
GROUP BY conta.Id, transacao.Conta_origem
HAVING COUNT(transacao.Conta_origem) >= x;
END