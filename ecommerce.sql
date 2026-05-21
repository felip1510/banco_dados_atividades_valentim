-- comando update
/*
modificar dados que já
estão armazenados em uma tabela
do banco de dados; modificações em um ou mais linhas.
*/

DROP DATABASE IF EXISTS ecommerce;

CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE categoria (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE produto (
    id INT AUTO_INCREMENT,
    nome VARCHAR(150),
    descricao TEXT,
    preco DECIMAL(10,2),
    estoque INT,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Inserindo categorias
INSERT INTO categoria (nome, descricao) VALUES
('Eletrônicos', 'Produtos eletrônicos e acessórios'),
('Roupas', 'Vestuário masculino e feminino'),
('Livros', 'Livros de diversos gêneros'),
('Casa e Decoração', 'Itens para casa e decoração'),
('Esportes', 'Artigos esportivos e acessórios');

-- Inserindo produtos
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES
('Smartphone Galaxy S23', 'Smartphone Samsung com 256GB', 3999.90, 15, 1),
('Notebook Dell Inspiron', 'Notebook Dell i7 16GB RAM', 5299.00, 8, 1),
('Fone Bluetooth JBL', 'Fone sem fio com cancelamento de ruído', 499.90, 30, 1),

('Camiseta Básica', 'Camiseta de algodão unissex', 59.90, 50, 2),
('Calça Jeans Slim', 'Calça jeans masculina slim fit', 129.90, 25, 2),
('Jaqueta Feminina', 'Jaqueta feminina impermeável', 249.90, 12, 2),

('Dom Casmurro', 'Livro clássico de Machado de Assis', 39.90, 20, 3),
('Clean Code', 'Livro sobre boas práticas de programação', 89.90, 10, 3),
('O Senhor dos Anéis', 'Trilogia de fantasia épica', 119.90, 7, 3),

('Luminária LED', 'Luminária moderna para escritório', 79.90, 18, 4),
('Tapete Decorativo', 'Tapete para sala 2x3m', 199.90, 6, 4),

('Bola de Futebol', 'Bola oficial tamanho 5', 99.90, 14, 5),
('Tênis de Corrida', 'Tênis esportivo leve e confortável', 299.90, 9, 5),
('Garrafa Térmica', 'Garrafa térmica inox 1L', 69.90, 22, 5);

--sintaxe atualUPDATE nome_da_tabela
SET
coluna1= valor1,
--coluna2= valor2
WHERE condição;

UPDATE produto
SET categoria_id=4
WHERE id = 4;

UPDATE produto
SET categoria_id=5
WHERE preco >=500;

UPDATE produto
SET categoria_id = estoque + 30
WHERE id = 1;

UPDATE produto
SET
    nome = 'pc usado - notebook',
    descricao = 'Notebook com SSD e 16GB de RAM',
    estoque = 15,
    categoria_id = 1
WHERE id=35;

SELECT * FROM produto;

DELETE FROM produto WHERE id =33;

INSERT INTO produto() 
VALUES(DEFAULT, 'telefoneX','telefone legal',50.00,120,1);

DELETE FROM produto
WHERE nome = 'Clean Code' or id=31

DELETE FROM produto
WHERE nome = 'Clean Code' and id=36
