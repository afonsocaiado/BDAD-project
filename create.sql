PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

-- Table: PessoaFrequenteShopping
DROP TABLE IF EXISTS PessoaFrequenteShopping;
CREATE TABLE PessoaFrequenteShopping (
  nif                   INTEGER PRIMARY KEY CHECK(LENGTH(nif == 9)),
  nome                  STRING NOT NULL,
  morada                STRING,
  codigoPostal          INTEGER,
  telefone              INTEGER CHECK(LENGTH(telefone == 9))         
);

-- Table: Cliente
DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  email                 STRING NOT NULL                     
);

-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;
CREATE TABLE Funcionario (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  salario               INTEGER CHECK(salario > 0)                    
);

-- Table: FuncionarioEstabelecimento
DROP TABLE IF EXISTS FuncionarioEstabelecimento;
CREATE TABLE FuncionarioEstabelecimento (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  nomeE                 STRING REFERENCES Estabelecimento (nomeE)                 
);

-- Table: FuncionarioShopping
DROP TABLE IF EXISTS FuncionarioShopping;
CREATE TABLE FuncionarioShopping (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  profissao             STRING NOT NULL                
);

-- Table: Modelo
DROP TABLE IF EXISTS Modelo;
CREATE TABLE Modelo (
  nomeModelo            STRING PRIMARY KEY NOT NULL,
  nomeMarca             STRING REFERENCES Marca (nomeMarca) NOT NULL             
);

-- Table: Marca
DROP TABLE IF EXISTS Marca;
CREATE TABLE Marca (
  nomeMarca             STRING PRIMARY KEY              
);

-- Table: Carro
DROP TABLE IF EXISTS Carro;
CREATE TABLE Carro (
  matricula             INTEGER PRIMARY KEY,
  nomeMarca             STRING REFERENCES Marca (nomeMarca),
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) CHECK(LENGTH(nif == 9))     
);

-- Table: Produto
DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (
  nomeP                 STRING NOT NULL,
  codigo                INTEGER PRIMARY KEY,
  custoUnitario         DOUBLE CHECK(custoUnitario > 0),
  quantidadeStock       INTEGER CHECK(quantidadeStock >= 0)   
);

-- Table: Devolucao
DROP TABLE IF EXISTS Devolucao;
CREATE TABLE Devolucao (
  id                    INTEGER PRIMARY KEY,
  data                  STRING NOT NULL, -- ou int nao sei  
  nif                   INTEGER REFERENCES Cliente (nif) CHECK(LENGTH(nif == 9))                   
);

-- Table: ProdutoDevolvido
DROP TABLE IF EXISTS ProdutoDevolvido;
CREATE TABLE ProdutoDevolvido (
  codigo                INTEGER REFERENCES Produto (codigo) PRIMARY KEY,
  id                    INTEGER REFERENCES Devolucao (id),
  quantidade            INTEGER CHECK (quantidade >= 0)               
);

-- Table: Compra
DROP TABLE IF EXISTS Compra;
CREATE TABLE Compra (
  id                    INTEGER PRIMARY KEY,
  data                  STRING NOT NULL,
  montante              DOUBLE CHECK(montante > 0),
  nif                   INTEGER REFERENCES Cliente (nif) CHECK(LENGTH(nif == 9)),
  nomeE                 STRING REFERENCES Estabelecimento (nomeE)             
);


-- Table: ProdutoComprado
DROP TABLE IF EXISTS ProdutoComprado;
CREATE TABLE ProdutoComprado (
  codigo                INTEGER REFERENCES Produto (codigo) PRIMARY KEY,
  id                    INTEGER REFERENCES Compra (id),
  quantidade            INTEGER CHECK(quantidade >= 0)        
);

-- Table: Estabelecimento
DROP TABLE IF EXISTS Estabelecimento;
CREATE TABLE Estabelecimento (
  nomeE                 STRING PRIMARY KEY,
  tipo                  STRING NOT NULL     
);

-- Table: HorarioFuncionamento
DROP TABLE IF EXISTS HorarioFuncionamento;
CREATE TABLE HorarioFuncionamento (
  nomeE                 STRING REFERENCES Estabelecimento (nomeE) PRIMARY KEY,
  data                  STRING,
  horaInicio            STRING CHECK(horaFim > horaInicio), -- ou int nao sei
  horaFim               STRING CHECK(horaFim > horaInicio) -- ou int nao sei
);

-- Table: HorarioTrabalho
DROP TABLE IF EXISTS HorarioTrabalho;
CREATE TABLE HorarioTrabalho (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY,
  data                  STRING,
  horaInicio            STRING CHECK(horaFim > horaInicio), -- ou int nao sei
  horaFim               STRING CHECK(horaFim > horaInicio) -- ou int nao sei
);

PRAGMA foreign_keys = on;