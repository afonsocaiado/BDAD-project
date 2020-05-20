-- Gatilho que verifica, antes de fazer a compra, se o stock do produto
-- é suficiente. Se não for, não irá completar a compra



-- NB: Antes de fazer a inserção do tuplo na tabela ProdutoComprado, 
-- é necessário fazer uma inserção na tabela COMPRA, com o id adequado. 
-- Assim, se a compra não for possível, deve ser retirado da tabela 'Compra' o 
-- tuplo com o mesmo id




CREATE TRIGGER IF NOT EXISTS verificaStock
BEFORE INSERT ON ProdutoComprado
--FOR EACH ROW

WHEN ((Select quantidadeStock 
	   FROM Produto
	   WHERE Produto.codigo=New.codigo
	   ) < New.quantidade)

BEGIN
	
	Delete FROM Compra WHERE Compra.id=New.id;
	Select raise(ignore);




END;

--INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (15, "25/02/2020", 5.98, 111111111, 'Primark');
--INSERT INTO ProdutoComprado(codigo, id, quantidade) VALUES (7, 15, 2);

