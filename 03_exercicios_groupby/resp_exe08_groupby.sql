--Qual o produto com mais pontos transacionados
SELECT IdProduto,
        sum(vlProduto * QtdeProduto) as VlrTotal,
        sum(QtdeProduto) as QtdTotal
FROM transacao_produto
GROUP BY IdProduto
ORDER BY VlrTotal DESC
