
.mode columns 
.headers ON
.nullvalue NULL

--Listagem de todas as compras efetuadas depois de 20 de fevereiro de 2020
SELECT * 
FROM Compra
WHERE data > '20/02/2020';
