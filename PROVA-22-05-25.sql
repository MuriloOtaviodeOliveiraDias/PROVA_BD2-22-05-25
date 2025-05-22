CREATE DATABASE lojaPascotto;

use lojaPascotto;

CREATE TABLE Produtos(
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preço DOUBLE(10,2) NOT NULL,
qntEstoque INT,
id_do_Fornecedor INT
);

CREATE TABLE Fornecedores(
idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
CNPJ VARCHAR(255) NOT NULL,
telefone VARCHAR(50) NOT NULL,
CPF VARCHAR(255)
);

AlTER TABLE Fornecedores ADD COLUMN Email VARCHAR(255) NOT NULL;

CREATE TABLE Colaborador(
idColaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
salario VARCHAR(255) NOT NULL
);

CREATE TABLE Pedidos(
idPedidos INT AUTO_INCREMENT PRIMARY KEY,
etgData DATE,
id_do_Funcionario INT,
id_do_Produto INT,
quantidade double
);

CREATE TABLE Categoria(
idCategoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(255)
);

ALTER TABLE Produtos ADD COLUMN idCategoria INT;

ALTER TABLE Produtos ADD FOREIGN KEY Produtos REFERENCES Categoria(idCategoria);