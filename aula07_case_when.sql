--CASE WHEN

-- Intevarlos
--De 0 a 500          ->Ponei
--De 501 a 1000       ->Ponei Priemum
--De 1001 a 5000      ->Mago Aprendiz
--De 5001 a 1000      ->Mago Mestre
--+1000               ->Mago Supremo

SELECT 
    idCliente, 
    QtdePontos,
    CASE
        WHEN QtdePontos <= 500 THEN 'Ponei'
        WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
        WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
        WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS NomeGrupo,

    CASE
        WHEN QtdePontos <=1000 THEN 1
        ELSE 0
    END AS flPonei

FROM clientes

WHERE flPonei = 1

ORDER BY QtdePontos DESC

