--Qual o valor medio de pontos positivos por dia
SELECT 
        sum(QtdePontos) AS Pontos,
        count(DISTINCT substr(DtCriacao, 1, 10)) AS DiasDistintos,
        sum(QtdePontos)  / count(DISTINCT substr(DtCriacao, 1, 10))  as Media
FROM transacoes
WHERE QtdePontos > 0