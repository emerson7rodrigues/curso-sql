--AVERAGE
--Media de pontos dos clientes
SELECT 
    avg(qtdePontos) AS MediaPontos
FROM clientes;

--Minimo de pontos clientes
SELECT
    min(qtdePontos) AS MinimoPontos
FROM clientes;

--Maximo de pontos clientes
SELECT
    max(qtdePontos) AS MaximoPontos
FROM clientes;

--Quantos clientes tem email cadastrado
SELECT
    sum(flEmail)
FROM clientes;