--Qual cliente fez mais transacoes no ano de 2024

SELECT idCliente,
        count(DISTINCT IdTransacao) AS TotTransacao
FROM transacoes
WHERE DtCriacao >= '2024-01-01' AND DtCriacao < '2025-01-01'
-- WHERE strftime('%Y',substr(DtCriacao, 1, 19)) = '2024'
GROUP BY idCliente
ORDER BY TotTransacao DESC
LIMIT 1