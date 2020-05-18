
.mode columns 
.headers ON
.nullvalue NULL

--Qual o codigo postal no qual vivem mais pessoas frequentes do shopping?
SELECT codigoPostal, count(codigoPostal) as qtde 
FROM (PessoaFrequenteShopping,Morada_CPostal) 
WHERE PessoaFrequenteShopping.morada = Morada_CPostal.morada 
GROUP BY codigoPostal 
ORDER BY qtde DESC 
limit 1;