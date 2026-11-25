-- Ex. Praticos
--Em 2024, quantas transacoes de Lovers tivemos?
SELECT count(t1.IdTransacao) AS TotTransacao,
        --t1.idCliente,
        t2.IdProduto,
        t3.DescCategoriaProduto

FROM transacoes AS t1

--1 Realacao transacoes x transacao_produto
LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

--2 Relacao transcao_produto x produtos
LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2025-01-01'
AND t3.DescCategoriaProduto = 'lovers'

GROUP BY t3.DescCategoriaProduto
