.mode columns 
.headers ON
.nullvalue NULL

--Quantas compras fez cada cliente, assim como o montante total
SELECT nome, COUNT(*) as Compras, SUM(montante) as Total
 FROM Compra NATURAL JOIN Cliente NATURAL JOIN PessoaFrequenteShopping 
Where nif=111111111;