--Lista de transacoes com o produto "Resgatar Ponei"
SELECT *
FROM produtos
WHERE DescNomeProduto LIKE '%Ponei%';

SELECT *
FROM transacao_produto
WHERE IdProduto = 15;