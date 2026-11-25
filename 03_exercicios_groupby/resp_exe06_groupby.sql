--Qual dia da semana tem mais pedidos em 2025?

SELECT count(IdTransacao) AS TotTransacao,
       strftime('%w',substr(DtCriacao, 1, 10)) AS DiaSemana
FROM transacoes
WHERE substr(DtCriacao, 1, 4) = '2025'
GROUP BY DiaSemana
ORDER BY TotTransacao DESC
