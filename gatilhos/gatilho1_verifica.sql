--Instrucoes para verificar a execução do gatilho de aumento do stock
--de um produto após uma devolucao. 

SELECT nomeP, quantidadeStock FROM Produto WHERE codigo=2;

INSERT INTO Devolucao (id, data, nif) VALUES (11, '23/02/2020',666666666);
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (2, 11, 4);
SELECT nomeP, quantidadeStock FROM Produto WHERE codigo=2;