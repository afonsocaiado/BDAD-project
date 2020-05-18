
.mode columns 
.headers ON
.nullvalue NULL


--Quais os 3 produtos mais devolvidos?
SELECT nomeP, SUM(quantidade) as total 
FROM (ProdutoDevolvido, Produto) 
WHERE (Produto.codigo = ProdutoDevolvido.codigo) 
GROUP BY nomeP 
ORDER BY total DESC 
limit 3;