--Listar todas as transacoes adicionando uma coluna nova sinalizando:
--"Alto", "Medio" e "Baixo" para o valor dos pontos [<10, <500, >=500]

SELECT IdTransacao, QtdePontos,
    CASE
        WHEN QtdePontos <10 THEN 'Baixo'
        WHEN QtdePontos <500 THEN 'Medio'
        ELSE 'Alto'
    END AS Categoria
FROM transacoes