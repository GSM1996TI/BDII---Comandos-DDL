CREATE DATABASE Pessoa;
USE Pessoa;

CREATE TABLE Cliente (
    codigo INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    ativo BOOLEAN NOT NULL
);

CREATE TABLE Telefone (
    codigo INT NOT NULL,
    CodContato INT NOT NULL,
    TipoTelefone VARCHAR(15) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    Ramal VARCHAR(4)
);

CREATE TABLE Endereco (
    codigo INT NOT NULL,
    CodContato INT NOT NULL,
    Endereco VARCHAR(80) NOT NULL,
    Numero INT NOT NULL,
    Complemento VARCHAR(30),
    Bairro VARCHAR(30),
    Cidade VARCHAR(30),
    Estado CHAR(2),
    CEP VARCHAR(9)
);

ALTER TABLE Cliente
ADD genero VARCHAR(1) NULL;

ALTER TABLE Cliente
ADD CONSTRAINT PK_Cliente PRIMARY KEY (codigo);

ALTER TABLE Telefone
ADD CONSTRAINT FK_Telefone_Cliente FOREIGN KEY (CodContato) REFERENCES Cliente(codigo);

ALTER TABLE Telefone
DROP COLUMN Ramal;

ALTER TABLE Endereco
ADD CONSTRAINT FK_Endereco_Cliente FOREIGN KEY (CodContato) REFERENCES Cliente(codigo);

DROP TABLE Endereco;
DROP TABLE Telefone;
DROP TABLE Cliente;

USE Pessoa;
DROP DATABASE Pessoa;
