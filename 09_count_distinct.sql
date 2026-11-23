--COUNT DISTINCT
--Conta quantos registros distintos tem de uma coluna
SELECT
    count(DISTINCT IdCliente)
FROM clientes;

--Ex1.: Quantidade de transacoes em 07/2025
SELECT
    count(IdTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01';

--Ex2.: Quantos clientes realizaram transacoes em 07/2025
SELECT
    count(DISTINCT IdCliente)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01';