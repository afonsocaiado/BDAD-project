PRAGMA foreign_keys=on;

-- Gatilho que adiciona à loja o número de produtos devolvidos

CREATE TRIGGER IF NOT EXISTS atualizaStock
AFTER INSERT ON ProdutoDevolvido
FOR EACH ROW
BEGIN
	UPDATE Produto 
    SET quantidadeStock = quantidadeStock + NEW.quantidade 
	WHERE Produto.codigo = NEW.codigo;
END;

