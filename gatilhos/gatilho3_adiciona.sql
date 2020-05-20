PRAGMA foreign_keys=on;

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

