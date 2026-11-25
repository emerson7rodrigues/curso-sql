--Quantos produtos sao de rgp?
SELECT count(DISTINCT IdProduto)
FROM produtos
WHERE DescCategoriaProduto = 'rpg';

SELECT DescCategoriaProduto,
        count(*)
FROM produtos
GROUP BY DescCategoriaProduto;