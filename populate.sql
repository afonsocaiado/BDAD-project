
-- Data : PessoaFrequenteShopping
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (111111111, 'João Castro', 'Rua Corte Real', 4150888, 9111111111);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (222222222, 'Tiago Delfim', 'Rua Gilberto Arenas', 4150888, 912222222);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (333333333, 'Manuel de Oliveira', 'Rua da Esquerda', 4150777, 913333333);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (444444444, 'Vitor Hugo', 'Avenida da Liberdade', 4150666, 914444444);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (555555555, 'Vasco Ferreira', 'Rua do Crasto', 4150555, 910000000);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (666666666, 'Carolina Mengo', 'Constituição', 4150444, 915555555);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (777777777, 'Miguel Afonso', 'Avenida da Boavista', 4150122, 916666666);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (888888888, 'Tomas Freitas', 'Rua do fundo', 4222122, 917777777);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (999999999, 'Rui Teixeira', 'Rua da Bandeirinha', 4150333, 91888888);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (101010101, 'Rony Lopes', 'Rua grande', 4150232, 919999999);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (121212121, 'Joao Sousa', 'Rua do Crasto', 4150989, 915545555);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (131313131, 'Antonio Correia', 'Avenida da liberdade', 4150121, 916667666);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (141414141, 'Armando Correia', 'Rua 5 de maio', 4232122, 917737777);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (151515151, 'Miguel Gama', 'Rua do Crasto', 4150331, 91188888);
INSERT INTO PessoaFrequenteShopping (nif, nome, morada,  telefone) VALUES (161616161, 'Fabio Miguel', 'Rua Doce', 4150232, 919999199);

--Data : Morada_CPostal
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Corte Real', 4150888);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Gilberto Arenas', 4150888);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua da Esquerda', 4150777);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Avenida da Liberdade', 4150666);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do Crasto', 4150555);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Constituição', 4150444);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Avenida da Boavista', 4150122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do fundo', 4222122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua da Bandeirinha', 4150333);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua grande', 4150232);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do Crasto', 4150989);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Avenida da liberdade', 4150121);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua 5 de maio', 4232122);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua do Crasto', 4150331);
INSERT INTO Morada_CPostal (morada, codigoPostal) VALUES ('Rua Doce', 4150232);





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



