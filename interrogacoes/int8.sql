.mode columns 
.headers ON
.nullvalue NULL

--Qual a média dos valores das compras dos clientes?
SELECT AVG(montante) 
FROM Cliente 
INNER JOIN  PessoaFrequenteShopping
On Cliente.nif = PessoaFrequenteShopping.nif
INNER JOIN Compra
On Compra.nif = PessoaFrequenteShopping.nif;
