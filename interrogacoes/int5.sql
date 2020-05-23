
.mode columns 
.headers ON
.nullvalue NULL


-- Listagem de todos os funcionarios  que estão registados como Clientes;
SELECT nome, nif 
FROM PessoaFrequenteShopping NATURAL JOIN Cliente NATURAL JOIN Funcionario;
