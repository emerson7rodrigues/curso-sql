--GROUP BY

--EXERCICIOS PRATICOS
    -- 1. Quantos clientes tem email cadastrado?
    -- 2. Qual cliente juntou mais pontos positivos em 2025-05?
    -- 3. Qual cliente fez mais transações no ano de 2024?
    -- 4. Quantos produtos são de rpg?
    -- 5. Qual o valor médio de pontos positivos por dia?
    -- 6. Qual dia da semana quem mais pedidos em 2025?
    -- 7. Qual o produto mais transacionado?
    -- 8. Qual o produto com mais pontos transacionado?
    
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