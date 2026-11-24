--JOIN

--LEFT JOIN
SELECT t1.*,
     t2.DescNomeProduto
FROM transacao_produto as t1
LEFT JOIN produtos as t2
ON t1.IdProduto = t2.IdProduto;