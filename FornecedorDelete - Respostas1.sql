CREATE DATABASE IF NOT EXISTS produto;
USE produto;
DROP TABLE IF EXISTS Fornecedor;

CREATE TABLE Fornecedor (
    cnpj      VARCHAR(14)  NOT NULL,
    nome      VARCHAR(100) NOT NULL,
    telefone  VARCHAR(15),
    endereco  VARCHAR(200),
    PRIMARY KEY (cnpj)
);

INSERT INTO Fornecedor (cnpj, nome, telefone, endereco) VALUES
('11111111000101', 'Distribuidora Alfa Ltda',       '3132221111', 'Rua das Flores, 100 - Belo Horizonte/MG'),
('22222222000102', 'Comercial Beta S.A.',            '3132222222', 'Av. Brasil, 200 - Belo Horizonte/MG'),
('33333333000103', 'Gama Alimentos Ltda',            '3132223333', 'Rua da Bahia, 300 - Belo Horizonte/MG'),
('44444444000104', 'Delta Bebidas Ltda',             NULL,         'Av. Afonso Pena, 400 - Belo Horizonte/MG'),
('55555555000105', 'Epsilon Higiene e Limpeza Ltda', '3132225555', NULL),
('66666666000106', 'Zeta Papelaria ME',              '3132226666', 'Rua Rio de Janeiro, 600 - Belo Horizonte/MG'),
('77777777000107', 'Eta Eletrônicos Ltda',           '3132227777', 'Rua Curitiba, 700 - Belo Horizonte/MG'),
('88888888000108', 'Theta Móveis e Decoração Ltda',  '3132228888', 'Av. do Contorno, 800 - Belo Horizonte/MG');

DROP TABLE IF EXISTS Produto;

CREATE TABLE Produto (
    id                INT AUTO_INCREMENT,
    cnpj_fornecedor   VARCHAR(14) NOT NULL,
    nome              VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Produto (id, cnpj_fornecedor, nome) VALUES
(1, '11111111000101', 'Arroz Tipo 1 5kg'),
(2, '11111111000101', 'Feijao carioca 1kg'),
(3, '22222222000102', 'Refrigerante cola 2l'),
(4, '33333333000103', 'Macarrao espaguete'),
(5, '44444444000104', 'Suco de laranja 1l'),
(6, '77777777000107', 'Fone de ouvido bluetooth'),
(7, '77777777000107', 'Carregador usb-c');


DELETE FROM Produto
WHERE id = 5;

DELETE FROM Produto
WHERE id IN (6, 7);

SET SQL_SAFE_UPDATES = 0;
DELETE FROM Produto
WHERE nome LIKE '%cola%';

DELETE FROM Produto
WHERE cnpj_fornecedor = '11111111000101';

SELECT * FROM Produto;