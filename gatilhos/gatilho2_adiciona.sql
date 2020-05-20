-- Gatilho que adiciona à loja o número de produtos devolvidos

CREATE TRIGGER verificaEmail
BEFORE INSERT ON Cliente
When New.email NOT LIKE "%@%.%"
BEGIN
	Select raise(ignore);
END;