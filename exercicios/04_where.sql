--Selecione todos os produtos que contem 'churn' no nome
SELECT *
FROM produtos

--Churn_10pp
--Churn_2pp
--Churn_5pp

--OPCAO 1
/*
WHERE DescNomeProduto = 'Churn_10pp'
OR DescNomeProduto = 'Churn_2pp'
OR DescNomeProduto = 'Churn_5pp'
*/

--OPCAO 2
/*
WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
*/

--OPCAO 3 - OPCAO MAIS PRATICA
WHERE DescNomeProduto LIKE '%churn%'