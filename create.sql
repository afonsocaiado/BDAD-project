PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

-- Table: PessoaFrequenteShopping
DROP TABLE IF EXISTS PessoaFrequenteShopping;
CREATE TABLE PessoaFrequenteShopping (
  nif               INTEGER PRIMARY KEY,
  nome              STRING NOT NULL,
  morada            STRING NOT NULL,
  codigoPostal      INTEGER NOT NULL CHECK(...),
  telefone          INTEGER NOT NULL CHECK(LENGTH(telefone == 9))         
);

