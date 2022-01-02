CREATE DEFINER=`root`@`localhost` PROCEDURE `AgenciaDepoisDeXXXX`(IN x INT)
BEGIN
SELECT Codigo, Nome, Data_criacao FROM agencia
WHERE YEAR(Data_criacao) >= x;
END