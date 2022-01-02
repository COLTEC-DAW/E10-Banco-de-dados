CREATE DEFINER=`root`@`localhost` PROCEDURE `NomeClientes`()
BEGIN
SELECT Nome FROM Cliente;
END