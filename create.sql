PRAGMA foreign_keys=on;
.mode columns
.headers on
.nullvalue NULL
.width 35 20 35 20 20 20 20 20
DROP TABLE IF EXISTS Morada_CPostal;
CREATE TABLE Morada_CPostal(
  morada                VARCHAR(255) PRIMARY KEY,
  codigoPostal          INTEGER NOT NULL

);

-- Table: PessoaFrequenteShopping
DROP TABLE IF EXISTS PessoaFrequenteShopping;
CREATE TABLE PessoaFrequenteShopping (
  nif                   INTEGER PRIMARY KEY CHECK (nif >= 100000000 and nif <= 999999999),
  nome                  VARCHAR(255) NOT NULL,
  morada                VARCHAR(255) REFERENCES Morada_CPostal ( morada ),
  telefone              INTEGER UNIQUE CHECK (telefone >= 910000000 and telefone <= 969999999)       
);


-- Table: Cliente
DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY,
  email                 VARCHAR(255) UNIQUE NOT NULL                     
);

-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;
CREATE TABLE Funcionario (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY,
  salario               INTEGER CHECK(salario > 0)                    
);


-- Table: Estabelecimento
DROP TABLE IF EXISTS Estabelecimento;
CREATE TABLE Estabelecimento (
  nomeE                 VARCHAR(255) PRIMARY KEY,
  tipo                  VARCHAR(255) NOT NULL     
);

-- Table: FuncionarioEstabelecimento
DROP TABLE IF EXISTS FuncionarioEstabelecimento;
CREATE TABLE FuncionarioEstabelecimento (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY ,
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE)                 
);


-- Table: FuncionarioShopping
DROP TABLE IF EXISTS FuncionarioShopping;
CREATE TABLE FuncionarioShopping (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY,
  profissao             VARCHAR(255) NOT NULL                
);

-- Table: Marca
DROP TABLE IF EXISTS Marca;
CREATE TABLE Marca (
  nomeMarca             VARCHAR(255) PRIMARY KEY              
);


-- Table: Modelo
DROP TABLE IF EXISTS Modelo;
CREATE TABLE Modelo (
  nomeModelo            VARCHAR(255) PRIMARY KEY NOT NULL,
  nomeMarca             VARCHAR(255) REFERENCES Marca (nomeMarca) NOT NULL             
);



-- Table: Carro
DROP TABLE IF EXISTS Carro;
CREATE TABLE Carro (
  matricula             VARCHAR(8) PRIMARY KEY,
  nomeMarca             VARCHAR(255) REFERENCES Marca (nomeMarca),
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif)     
);


-- Table: Produto
DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (
  nomeP                 VARCHAR(255) NOT NULL,
  codigo                INTEGER PRIMARY KEY,
  custoUnitario         REAL CHECK(custoUnitario > 0),
  quantidadeStock       INTEGER CHECK(quantidadeStock >= 0)   
);

-- Table: Devolucao
DROP TABLE IF EXISTS Devolucao;
CREATE TABLE Devolucao (
  id                    INTEGER PRIMARY KEY,
  data                  STRING NOT NULL, -- TODO CHECK DATE TYPE
  nif                   INTEGER REFERENCES Cliente (nif)                   
);

-- Table: ProdutoDevolvido
DROP TABLE IF EXISTS ProdutoDevolvido;
CREATE TABLE ProdutoDevolvido (
  codigo                INTEGER REFERENCES Produto (codigo),
  id                    INTEGER REFERENCES Devolucao (id),
  quantidade            INTEGER CHECK (quantidade >= 0),
  PRIMARY KEY (codigo, id)               
);

-- Table: Compra
DROP TABLE IF EXISTS Compra;
CREATE TABLE Compra (
  id                    INTEGER PRIMARY KEY,
  data                  VARCHAR(10) NOT NULL CHECK (data >= '01/01/2019' and data <= '31/2/2021'), -- do tipo DD-MM-YYYY
  montante              REAL CHECK(montante > 0),
  nif                   INTEGER REFERENCES Cliente (nif),
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE)             
);


-- Table: ProdutoComprado
DROP TABLE IF EXISTS ProdutoComprado;
CREATE TABLE ProdutoComprado (
  codigo                INTEGER REFERENCES Produto (codigo),
  id                    INTEGER REFERENCES Compra (id),
  quantidade            INTEGER CHECK(quantidade >= 0),
  PRIMARY KEY (codigo, id)        
);


-- Table: HorarioFuncionamento
DROP TABLE IF EXISTS HorarioFuncionamento;
CREATE TABLE HorarioFuncionamento (
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE),
  data                  VARCHAR(10) NOT NULL,
  horaInicio            VARCHAR(5) CHECK( length(horaInicio) = 5 and horaInicio >= '00:00' and horaInicio <=  '24:00'), -- do tipo HH:MM
  horaFim               VARCHAR(5) CHECK(length(horaFim) = 5 and  horaFim > horaInicio and horaFim >= '00:00' and horaFim <= '24:00'), 
  PRIMARY KEY (nomeE, data)
);

-- Table: HorarioTrabalho
DROP TABLE IF EXISTS HorarioTrabalho;
CREATE TABLE HorarioTrabalho (
  nif                   INTEGER REFERENCES Funcionario (nif),
  data                  VARCHAR(10) NOT NULL, --CHECK (data >= '2019-01-01' and data <= '2022-12-31'),
  horaInicio            VARCHAR(5) CHECK( length(horaInicio) = 5 and horaInicio >= '00:00' and horaInicio <=  '24:00'), -- do tipo HH:MM
  horaFim               VARCHAR(5) CHECK(length(horaFim) = 5 and horaFim > horaInicio and horaFim >= '00:00' and horaFim <= '24:00'), 
  PRIMARY KEY (nif, data)
);
