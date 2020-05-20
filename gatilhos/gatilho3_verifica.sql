

INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (15, "25/02/2020", 5.98, 111111111, 'Primark');
SELECT * FROM Compra;
.print ' '
INSERT INTO ProdutoComprado(codigo, id, quantidade) VALUES (7, 15, 2);	
SELECT * FROM ProdutoComprado;
.print ' '
SELECT * FROM Compra;