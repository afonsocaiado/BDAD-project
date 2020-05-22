.mode columns 
.headers ON
.nullvalue NULL

--Quantas compras e qual o valor total gasto pelo cliente com nif 111111111?
SELECT nome, COUNT(*) as Compras, SUM(montante) as Total
 FROM Compra NATURAL JOIN Cliente NATURAL JOIN PessoaFrequenteShopping 
Where nif=111111111;