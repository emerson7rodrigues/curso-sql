--GROUP BY

--EXEMPLOS PRATICOS
SELECT IdProduto,
        count(*)
FROM transacao_produto
GROUP BY IdProduto;

--Clientes que mais jutaram pontos no mes 07/2025 - TOP 10
SELECT 
    IdCliente,
    sum(qtdePontos) as Pontos,
    count(IdTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
GROUP BY IdCliente
ORDER BY Pontos DESC
LIMIT 10;

----Clientes que mais jutaram pontos no mes 07/2025 - A partir de 4000
SELECT 
    IdCliente,
    sum(qtdePontos) as Pontos,
    count(IdTransacao)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
GROUP BY IdCliente
HAVING Pontos >= 4000 --É o WHERE do GROUP BY
ORDER BY Pontos DESC;