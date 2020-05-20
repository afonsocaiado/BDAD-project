

-- NB: Antes de fazer a inserção do tuplo na tabela ProdutoComprado, 
-- é necessário fazer uma inserção na tabela COMPRA, com o id adequado. 
-- Assim, se a compra não for possível, deve ser retirado da tabela 'Compra' o 
-- tuplo com o mesmo id


INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (15, "25/02/2020", 5.98, 111111111, 'Primark');
.print 'Compra adicionada com o ID 15 a tabela Compra'
SELECT * FROM Compra;
.print ' '


INSERT INTO ProdutoComprado(codigo, id, quantidade) VALUES (7, 15, 2);	
.print 'Tentativa de adicionar Produto comprado associado a compra com ID 15 e quantidade > stock '
SELECT * FROM ProdutoComprado;
.print ' '

.print 'Como nao foi possivel adquirir o produto naquela quantidade, a compra associada foi retirada da tabela Compra'
SELECT * FROM Compra;