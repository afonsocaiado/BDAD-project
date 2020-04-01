PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

-- Table: PessoaFrequenteShopping
DROP TABLE IF EXISTS PessoaFrequenteShopping;
CREATE TABLE PessoaFrequenteShopping (
  nif               INTEGER PRIMARY KEY CHECK(LENGTH(nif == 9)),
  nome              STRING NOT NULL,
  morada            STRING,
  codigoPostal      INTEGER,
  telefone          INTEGER CHECK(LENGTH(telefone == 9))         
);

-- Table: Cliente
DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
  nif               INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  email             STRING NOT NULL                     
);

-- Table: Funccionario
DROP TABLE IF EXISTS Funcionario;
CREATE TABLE Funcionario (
  nif               INTEGER REFERENCES PessoaFrequenteShopping (nif) PRIMARY KEY CHECK(LENGTH(nif == 9)),
  salario           INTEGER CHECK(salario > 0)                    
);

