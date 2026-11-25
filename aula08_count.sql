--COUNT
--CONTAR LINHAS DA TABELA
--Conta todas as linhas nao nulas da tabela
SELECT 
    count(*)
FROM clientes;

--CONTAR LINHAS DE UMA COLUNA
--Conta todos os registros nao nulos da coluna
SELECT
    count(idCliente)
FROM clientes;

--DISTINCT
--DISTINC DE COLUNA
--Retorna todos os registros distintos na coluna
SELECT
    DISTINCT flTwitch
FROM clientes;

--DISTINCT DE LINHA
--Retorna todos os registros distintos de linha
SELECT
    DISTINCT flTwitch, flEmail
FROM clientes;