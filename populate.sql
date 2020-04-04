
--Data : Morada_CPostal
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Corte Real', 4150888);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Gilberto Arenas', 4150888);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua da Esquerda', 4150777);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Avenida da Liberdade', 4150666);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do Crasto', 4150555);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Constituição', 4150444);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Avenida da Boavista', 4150122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do Fundo', 4222122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua da Bandeirinha', 4150333);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Grande', 4150232);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua 5 de maio', 4232122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Doce', 4150232);

-- Data : PessoaFrequenteShopping
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (111111111, 'João Castro', 'Rua Corte Real',  911111111);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (222222222, 'Tiago Delfim', 'Rua Gilberto Arenas', 912222222);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (333333333, 'Manuel de Oliveira', 'Rua da Esquerda', 913333333);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (444444444, 'Vitor Hugo', 'Avenida da Liberdade', 914444444);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (555555555, 'Vasco Ferreira', 'Rua do Crasto',  910000000);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (666666666, 'Carolina Mengo', 'Constituição',  915555555);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (777777777, 'Miguel Afonso', 'Avenida da Boavista',  916666666);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (888888888, 'Tomas Freitas', 'Rua do Fundo',  917777777);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (999999999, 'Rui Teixeira', 'Rua da Bandeirinha', 918888888);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (101010101, 'Rony Lopes', 'Rua Grande',  919999999);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (121212121, 'Joao Sousa', 'Rua do Crasto',  915545555);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (131313131, 'Antonio Correia', 'Avenida da Liberdade',  916667666);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (141414141, 'Armando Correia', 'Rua 5 de maio',  917737777);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (151515151, 'Miguel Gama', 'Rua do Crasto', 911888888);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (161616161, 'Fabio Miguel', 'Rua Doce',  919999199);

-- Data : Cliente
INSERT INTO Cliente (nif, email) VALUES (111111111, 'jcastro@gmail.com');
INSERT INTO Cliente (nif, email) VALUES (222222222, 'tdelfim@gmail.com');
INSERT INTO Cliente (nif, email) VALUES (333333333, 'moliveira@gmail.com');
INSERT INTO Cliente (nif, email) VALUES (444444444, 'vhugo@gmail.com');
INSERT INTO Cliente (nif, email) VALUES (555555555, 'vferreira@gmail.com');

-- Data : Funcionario
INSERT INTO Funcionario (nif, salario) VALUES (666666666, 550);
INSERT INTO Funcionario (nif, salario) VALUES (777777777, 150.50);
INSERT INTO Funcionario (nif, salario) VALUES (888888888, 100000);
INSERT INTO Funcionario (nif, salario) VALUES (999999999, 430);
INSERT INTO Funcionario (nif, salario) VALUES (101010101, 420.49);
INSERT INTO Funcionario (nif, salario) VALUES (121212121, 560.49);
INSERT INTO Funcionario (nif, salario) VALUES (131313131, 670.99);
INSERT INTO Funcionario (nif, salario) VALUES (141414141, 330);
INSERT INTO Funcionario (nif, salario) VALUES (151515151, 580);
INSERT INTO Funcionario (nif, salario) VALUES (161616161, 1000);

-- Data : Estabelecimento
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Zara', 'Loja');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('HM', 'Loja');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Cinemas NOS', 'Cinema');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Bowling', 'Bowling');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('McDonalds', 'Restaurante');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Primark', 'Loja');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('FNAC', 'Loja');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('H3', 'Restaurante');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Pull Bear', 'Loja');
INSERT INTO Estabelecimento (nomeE, tipo) VALUES ('Continente', 'Supermercado');

-- Data : FuncionarioEstabelecimento
INSERT INTO FuncionarioEstabelecimento (nif, nomeE) VALUES (666666666, 'Primark');
INSERT INTO FuncionarioEstabelecimento (nif, nomeE) VALUES (777777777, 'Zara');
INSERT INTO FuncionarioEstabelecimento (nif, nomeE) VALUES (888888888, 'H3');
INSERT INTO FuncionarioEstabelecimento (nif, nomeE) VALUES (999999999, 'Zara');
INSERT INTO FuncionarioEstabelecimento (nif, nomeE) VALUES (101010101, 'Primark');

-- Data : FuncionarioShopping
INSERT INTO FuncionarioShopping (nif, profissao) VALUES (121212121, 'Seguranca');
INSERT INTO FuncionarioShopping (nif, profissao) VALUES (131313131, 'Dono');
INSERT INTO FuncionarioShopping (nif, profissao) VALUES (141414141, 'Seguranca');
INSERT INTO FuncionarioShopping (nif, profissao) VALUES (151515151, 'Empregada');
INSERT INTO FuncionarioShopping (nif, profissao) VALUES (161616161, 'Gerente');

-- Data : Marca
INSERT INTO Marca (nomeMarca) VALUES ('Mercedes Benz');
INSERT INTO Marca (nomeMarca) VALUES ('Volkswagen');
INSERT INTO Marca (nomeMarca) VALUES ('Ferrari');
INSERT INTO Marca (nomeMarca) VALUES ('BMW');
INSERT INTO Marca (nomeMarca) VALUES ('Porsche');
INSERT INTO Marca (nomeMarca) VALUES ('Land Rover');
INSERT INTO Marca (nomeMarca) VALUES ('Citroen');
INSERT INTO Marca (nomeMarca) VALUES ('Renault');
INSERT INTO Marca (nomeMarca) VALUES ('Opel');
INSERT INTO Marca (nomeMarca) VALUES ('Fiat');

-- Data : Modelo
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('S63 AMG', 'Mercedes Benz');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Cross Polo', 'Volkswagen');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('F12', 'Ferrari');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Serie 1', 'BMW');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Cayenne', 'Porsche');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Range Rover Evoque', 'Land Rover');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('C3', 'Citroen');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Zoe', 'Renault');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('Corsa', 'Opel');
INSERT INTO Modelo (nomeModelo, nomeMarca) VALUES ('500', 'Fiat');

-- Data : Carro
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('11AS22', 'Mercedes Benz', 111111111);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('22DF33', 'Volkswagen', 222222222);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('33GH44', 'Ferrari', 444444444);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('44JK55', 'BMW', 555555555);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('55ZX66', 'Porsche', 777777777);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('66CV77', 'Land Rover', 888888888);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('77BN88', 'Citroen', 999999999);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('88QW99', 'Renault', 121212121);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('99ER00', 'Opel', 131313131);
INSERT INTO Carro (matricula, nomeMarca, nif) VALUES ('00TY01', 'Fiat', 161616161);

-- Data : Produto
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Bilhete Avengers', 1, 6.75, 50);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Chapéu', 2, 15, 5);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Entrada Bowling', 3, 10, 100);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Vestido Vermelho', 4, 12.99, 3);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Happy Meal', 5, 4.25, 100);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Big Mac', 6, 3.25, 100);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Caneca', 7, 2.99, 1);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Peluche Urso', 8, 10, 4);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Café', 9, 0.95, 50);
INSERT INTO Produto (nomeP, codigo, custoUnitario, quantidadeStock) VALUES ('Frango', 10, 6.75, 20);

-- Data : Devolucao
INSERT INTO Devolucao (id, data, nif) VALUES (1, '23/02/2020', 111111111);
INSERT INTO Devolucao (id, data, nif) VALUES (2, '24/02/2020', 111111111);
INSERT INTO Devolucao (id, data, nif) VALUES (3, '23/02/2020', 555555555);
INSERT INTO Devolucao (id, data, nif) VALUES (4, '24/02/2020', 222222222);
INSERT INTO Devolucao (id, data, nif) VALUES (5, '23/02/2020', 333333333);

-- Data : ProdutoDevolvido
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (7, 1, 1);
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (4, 2, 1);
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (6, 3, 1);
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (4, 4, 1);
INSERT INTO ProdutoDevolvido (codigo, id, quantidade) VALUES (8, 5, 1);

-- Data : Compra
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (1, "20/02/2020", 2.99, 111111111, 'Primark');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (2, "20/02/2020", 12.99, 111111111, 'Pull Bear');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (3, "20/02/2020", 12.99, 222222222, 'Zara');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (4, "25/02/2020", 3.25, 555555555, 'McDonalds');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (5, "25/02/2020", 6.75, 444444444, 'Continente');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (6, "20/02/2020", 6.75, 444444444, 'Cinemas NOS');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (7, "20/02/2020", 10, 333333333, 'Primark');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (8, "20/02/2020", 10, 222222222, 'Bowling');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (9, "25/02/2020", 0.95, 555555555, 'McDonalds');
INSERT INTO Compra (id, data, montante, nif, nomeE) VALUES (10, "25/02/2020", 4.25, 555555555, 'McDonalds');

-- Data : ProdutoComprado
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (7, 1, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (4, 2, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (4, 3, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (6, 4, 2);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (10, 5, 3);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (1, 6, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (8, 7, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (3, 8, 1);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (9, 9, 2);
INSERT INTO ProdutoComprado (codigo, id, quantidade) VALUES (5, 10, 3);

-- Data : HorarioFuncionamento
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Zara', '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('HM', '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Cinemas NOS', '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Bowling', '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('McDonalds', '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Primark', '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('FNAC', '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('H3', '20/02/2020', '10:00', '22:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Pull Bear', '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioFuncionamento (nomeE, data, horaInicio, horaFim) VALUES ('Continente', '20/02/2020', '08:00', '24:00');


-- Data : HorarioTrabalho
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (666666666, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (777777777, '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (888888888, '20/02/2020', '10:00', '22:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (999999999, '20/02/2020', '10:00', '23:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (101010101, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (121212121, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (131313131, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (141414141, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (151515151, '20/02/2020', '10:00', '24:00');
INSERT INTO HorarioTrabalho (nif, data, horaInicio, horaFim) VALUES (161616161, '20/02/2020', '08:00', '24:00');