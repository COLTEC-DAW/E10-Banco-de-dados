CREATE DEFINER=`root`@`localhost` PROCEDURE `AgenciasComMaisQueXContas`(IN x INT)
BEGIN
SELECT *, COUNT(conta.Agencia_adm) FROM agencia
JOIN conta ON conta.Agencia_adm = agencia.Codigo
GROUP BY agencia.Codigo, conta.Agencia_adm
HAVING COUNT(conta.Agencia_adm) >= x;
END