PRAGMA foreign_keys=on;

-- Gatilho que verifica se o email está no formato correto

CREATE TRIGGER IF NOT EXISTS verificaEmail
BEFORE INSERT ON Cliente
When New.email NOT LIKE "%@%.%"
BEGIN
	Select raise(ignore);
END;

