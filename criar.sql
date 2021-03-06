PRAGMA foreign_keys=on;
.mode columns
.headers on
.nullvalue NULL
.width 35 20 35 20 20 20 20 20













DROP TABLE IF EXISTS HorarioTrabalho;
DROP TABLE IF EXISTS HorarioFuncionamento;
DROP TABLE IF EXISTS ProdutoComprado;
DROP TABLE IF EXISTS Compra;
DROP TABLE IF EXISTS ProdutoDevolvido;
DROP TABLE IF EXISTS Devolucao;
DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS Carro;
DROP TABLE IF EXISTS Modelo;
DROP TABLE IF EXISTS Marca;
DROP TABLE IF EXISTS FuncionarioShopping;
DROP TABLE IF EXISTS FuncionarioEstabelecimento;
DROP TABLE IF EXISTS Estabelecimento;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS PessoaFrequenteShopping;
DROP TABLE IF EXISTS Morada_CPostal;





CREATE TABLE Morada_CPostal(
  morada                VARCHAR(255) PRIMARY KEY,
  codigoPostal          INTEGER NOT NULL

);

-- Table: PessoaFrequenteShopping

CREATE TABLE PessoaFrequenteShopping (
  nif                   INTEGER PRIMARY KEY CHECK (nif >= 100000000 and nif <= 999999999),
  nome                  VARCHAR(255) NOT NULL,
  morada                VARCHAR(255) REFERENCES Morada_CPostal ( morada ) ,
  telefone              INTEGER UNIQUE CHECK (telefone >= 910000000 and telefone <= 969999999)       
);


-- Table: Cliente

CREATE TABLE Cliente (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY,
  email                 VARCHAR(255) UNIQUE NOT NULL                     
);

-- Table: Funcionario

CREATE TABLE Funcionario (
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY,
  salario               INTEGER CHECK(salario > 0)                    
);


-- Table: Estabelecimento

CREATE TABLE Estabelecimento (
  nomeE                 VARCHAR(255) PRIMARY KEY,
  tipo                  VARCHAR(255) NOT NULL     
);

-- Table: FuncionarioEstabelecimento

CREATE TABLE FuncionarioEstabelecimento (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY ,
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE)                 
);


-- Table: FuncionarioShopping

CREATE TABLE FuncionarioShopping (
  nif                   INTEGER REFERENCES Funcionario (nif) PRIMARY KEY,
  profissao             VARCHAR(255) NOT NULL                
);

-- Table: Marca

CREATE TABLE Marca (
  nomeMarca             VARCHAR(255) PRIMARY KEY              
);


-- Table: Modelo

CREATE TABLE Modelo (
  nomeModelo            VARCHAR(255) PRIMARY KEY NOT NULL,
  nomeMarca             VARCHAR(255) REFERENCES Marca (nomeMarca) NOT NULL             
);



-- Table: Carro

CREATE TABLE Carro (
  matricula             VARCHAR(8) PRIMARY KEY,
  nomeMarca             VARCHAR(255) REFERENCES Marca (nomeMarca),
  nif                   INTEGER REFERENCES PessoaFrequenteShopping (nif)     
);


-- Table: Produto

CREATE TABLE Produto (
  nomeP                 VARCHAR(255) NOT NULL,
  codigo                INTEGER PRIMARY KEY,
  custoUnitario         REAL CHECK(custoUnitario > 0),
  quantidadeStock       INTEGER CHECK(quantidadeStock >= 0)   
);

-- Table: Devolucao

CREATE TABLE Devolucao (
  id                    INTEGER PRIMARY KEY,
  data                  STRING NOT NULL, -- TODO CHECK DATE TYPE
  nif                   INTEGER REFERENCES Cliente (nif)                   
);

-- Table: ProdutoDevolvido

CREATE TABLE ProdutoDevolvido (
  codigo                INTEGER REFERENCES Produto (codigo),
  id                    INTEGER REFERENCES Devolucao (id),
  quantidade            INTEGER CHECK (quantidade >= 0),
  PRIMARY KEY (codigo, id)               
);

-- Table: Compra

CREATE TABLE Compra (
  id                    INTEGER PRIMARY KEY,
  data                  VARCHAR(10) NOT NULL CHECK (data >= '2019-01-01' and data <= '2021-12-31'), -- do tipo DD-MM-YYYY
  montante              REAL CHECK(montante > 0),
  nif                   INTEGER REFERENCES Cliente (nif),
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE)             
);


-- Table: ProdutoComprado

CREATE TABLE ProdutoComprado (
  codigo                INTEGER REFERENCES Produto (codigo),
  id                    INTEGER REFERENCES Compra (id),
  quantidade            INTEGER CHECK(quantidade >= 0),
  PRIMARY KEY (codigo, id)        
);


-- Table: HorarioFuncionamento

CREATE TABLE HorarioFuncionamento (
  nomeE                 VARCHAR(255) REFERENCES Estabelecimento (nomeE),
  data                  VARCHAR(10) NOT NULL,
  horaInicio            VARCHAR(5) CHECK( length(horaInicio) = 5 and horaInicio >= '00:00' and horaInicio <=  '24:00'), -- do tipo HH:MM
  horaFim               VARCHAR(5) CHECK(length(horaFim) = 5 and  horaFim > horaInicio and horaFim >= '00:00' and horaFim <= '24:00'), 
  PRIMARY KEY (nomeE, data)
);

-- Table: HorarioTrabalho

CREATE TABLE HorarioTrabalho (
  nif                   INTEGER REFERENCES Funcionario (nif),
  data                  VARCHAR(10) NOT NULL CHECK (data >= '2019-01-01' and data <= '2021-12-31'),
  horaInicio            VARCHAR(5) CHECK( length(horaInicio) = 5 and horaInicio >= '00:00' and horaInicio <=  '24:00'), -- do tipo HH:MM
  horaFim               VARCHAR(5) CHECK(length(horaFim) = 5 and horaFim > horaInicio and horaFim >= '00:00' and horaFim <= '24:00'), 
  PRIMARY KEY (nif, data)
);
