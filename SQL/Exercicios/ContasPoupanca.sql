CREATE DEFINER=`root`@`localhost` PROCEDURE `ContasPoupanca`()
BEGIN
SELECT * FROM conta
WHERE conta.Tipo = 'Poupança';
END