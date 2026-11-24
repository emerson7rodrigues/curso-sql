--Qual o produto mais transacionado?

SELECT count(IdTransacao) AS TotTransacao,
        sum(QtdeProduto) AS SomaProdutos,
       IdProduto
FROM transacao_produto
GROUP BY IdProduto
ORDER BY TotTransacao DESC
LIMIT 1