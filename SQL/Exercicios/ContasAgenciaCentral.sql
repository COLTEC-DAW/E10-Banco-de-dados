CREATE DEFINER=`root`@`localhost` PROCEDURE `AgenciaCentral`()
BEGIN
SELECT * FROM conta
JOIN agencia ON conta.Agencia_adm = agencia.Codigo
WHERE agencia.Nome = 'Central';
END