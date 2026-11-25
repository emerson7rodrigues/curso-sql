--Quantos clientes tem email cadastrado?

--OPCAO 1
SELECT sum(flEmail)
FROM clientes;

--OPCAO 2
SELECT count(*)
FROM clientes
WHERE flEmail = 1;