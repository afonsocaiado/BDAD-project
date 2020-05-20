PRAGMA foreign_keys=on;

-- Gatilho que adiciona à loja o número de produtos devolvidos

CREATE TRIGGER IF NOT EXISTS verificaEmail
BEFORE INSERT ON Cliente
When New.email NOT LIKE "%@%.%"
BEGIN
	Select raise(ignore);
END;