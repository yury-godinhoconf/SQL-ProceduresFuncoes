/*Desafio: lista de nomes de funcionários*/
DECLARE @Nome VARCHAR(50)
DECLARE Funcionario CURSOR FOR
    SELECT NOME
    FROM FUNCIONARIOS

OPEN Funcionario

FETCH NEXT FROM Funcionario INTO @Nome

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Nome: ' + @Nome
    FETCH NEXT FROM Funcionario INTO @Nome
END

CLOSE Funcionario
DEALLOCATE Funcionario
