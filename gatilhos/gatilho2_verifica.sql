--Instrucoes para verificar a execução do gatilho de aumento do stock
--de um produto após uma devolucao. 
SELECT * FROM Cliente;

INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (999111999, 'Joana C', 'Rua da Carreira, 5, RC',  913232313);
INSERT INTO Cliente (nif, email) VALUES (999111999, 'joanachotmail.com');

SELECT * FROM Cliente;

INSERT INTO Cliente (nif, email) VALUES (999111999, 'joanac@hotmail.com');

SELECT * FROM Cliente;