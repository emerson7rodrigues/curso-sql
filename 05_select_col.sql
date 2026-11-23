SELECT idCliente,
        QtdePontos,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,

        substring(DtCriacao, 1, 10) AS DtSubstring,

        datetime(substring(DtCriacao, 1, 10)) AS DtCriacaoNova,

        strftime('%w', datetime(substring(DtCriacao, 1, 19))) AS DiaSemana

FROM clientes