--Lista de pedidos realizados no fim de semana

SELECT 
IdTransacao, 
DtCriacao,
--substring(DtCriacao, 1, 10) AS DtNova,
--datetime(substring(DtCriacao, 1, 10)) AS DtimeNova,
strftime('%w',datetime(substring(DtCriacao, 1, 10))) AS DiaSemana
FROM transacoes
WHERE DiaSemana IN ('6', '0')
