
.mode columns 
.headers ON
.nullvalue NULL

--Qual foi o cliente com o maior valor total de compras?
Select nome, MAX(total) as Total FROM 

    (Select nome, SUM(montante) as total 
    FROM (PessoaFrequenteShopping , Compra) 
    WHERE (Compra.nif = PessoaFrequenteShopping.nif) 
    GROUP BY PessoaFrequenteShopping.nif )

