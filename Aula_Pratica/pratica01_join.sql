--Ex. Praticos
--Qual a categoria de produtos mais vendidos - p/ Qtde Produtos

SELECT sum(QtdeProduto) AS TotQtde,
        t2.DescCategoriaProduto
FROM transacao_produto as t1
LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto
ORDER BY TotQtde DESC;

--Qual a categoria de produtos mais vendidos - p/ Qtde Transacoes

SELECT count(DISTINCT IdTransacao) AS TotTransacoes,
        t2.DescCategoriaProduto
FROM transacao_produto as t1
LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto
ORDER BY TotTransacoes DESC;