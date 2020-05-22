.mode columns 
.headers ON
.nullvalue NULL

--Qual o nome do cliente responsavel pela compra mais antiga, 
--contabilizando a data atual?
SELECT nome, julianday('now') - julianday(data) as Days 
FROM (COMPRA NATURAL JOIN Cliente NATURAL JOIN PessoaFrequenteShopping) 
ORDER BY Days DESC 
limit 1;