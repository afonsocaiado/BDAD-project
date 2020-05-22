.mode columns 
.headers ON
.nullvalue NULL

--Quais os nomes dos funcionarios que não têm carro no Parque?
SELECT nome 
FROM PessoaFrequenteShopping NATURAL JOIN Funcionario
WHERE nome not in(SELECT nome FROM PessoaFrequenteShopping NATURAL JOIN Funcionario NATURAL JOIN Carro);