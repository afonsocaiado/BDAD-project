
.mode columns 
.headers ON
.nullvalue NULL


-- Listagem de todos os funcionarios  que fizeram compras no Shopping;
SELECT nome, nif 
FROM PessoaFrequenteShopping NATURAL JOIN Cliente NATURAL JOIN Funcionario;
