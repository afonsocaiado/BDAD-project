.mode columns 
.headers ON
.nullvalue NULL

--Quais os produtos que nunca foram comprados?
SELECT nomeP 
FROM Produto
WHERE nomeP not in 
(SELECT  DISTINCT nomeP 
FROM (Produto INNER JOIN ProdutoComprado On Produto.codigo = ProdutoComprado.Codigo));