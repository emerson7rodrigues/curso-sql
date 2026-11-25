--Qual mes tivemos mais lista de presenca assinada?
SELECT 
    count(DISTINCT t1.IdTransacao) as TotTransacoes,
    substr(t1.DtCriacao, 1, 7) AS anoMes,
    t3.DescNomeProduto
FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'

GROUP BY anoMes
ORDER BY TotTransacoes DESC

LIMIT 1