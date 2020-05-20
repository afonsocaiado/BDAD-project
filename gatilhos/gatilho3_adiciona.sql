PRAGMA foreign_keys=on;

-- Gatilho que verifica, antes de fazer a compra, se o stock do produto
-- é suficiente. Se não for, não irá completar a compra


CREATE TRIGGER IF NOT EXISTS verificaStock
BEFORE INSERT ON ProdutoComprado

WHEN ((Select quantidadeStock 
	   FROM Produto
	   WHERE Produto.codigo=New.codigo
	   ) < New.quantidade)
BEGIN
	Delete FROM Compra WHERE Compra.id=New.id;
	Select raise(ignore);
END;

