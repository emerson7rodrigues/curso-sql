--SUM de QtdePontos POSITIVOS
SELECT sum(QtdePontos)
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
AND QtdePontos > 0;

--SUM de QtdePontos POSITIVOS e NEGATIVOS
SELECT  
        sum(QtdePontos),
        sum(CASE
            WHEN QtdePontos >0 THEN QtdePontos
        END) AS Positivos,
        sum(CASE
            WHEN QtdePontos <0 THEN QtdePontos
        END) AS Negativos
FROM transacoes
WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'
ORDER BY QtdePontos;