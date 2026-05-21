CREATE TABLE ItensEstoque (
    idItem INT NOT NULL AUTO_INCREMENT,
    descricaoItem VARCHAR(200),
    setorItem VARCHAR(200),
    precoVendaItem DOUBLE(9, 2),
    estoqueItem INT,
    PRIMARY KEY (idItem)
);

INSERT INTO
    ItensEstoque (
        descricaoItem,
        setorItem,
        precoVendaItem,
        estoqueItem
    )
VALUES (
        'Suco de Laranja',
        'Bebidas',
        '7.50',
        250
    ),
    (
        'Macarrão 1kg',
        'Alimentos',
        '5.20',
        180
    ),
    (
        'Sabão em pó',
        'Limpeza',
        '12.90',
        90
    ),
    (
        'Café Torrado',
        'Alimentos',
        '15.80',
        120
    ),
    (
        'Iogurte Natural',
        'Laticínios',
        '4.30',
        350
    ),
    (
        'Biscoito Integral',
        NULL,
        '3.90',
        210
    ),
    (
        'Molho de Tomate',
        'Alimentos',
        '2.80',
        500
    );

SELECT * from `ItensEstoque`

SELECT `setorItem`
FROM `ItensEstoque`
WHERE
    `descricaoItem` = 'Iogurte Natural';

SELECT
    descricaoItem,
    setorItem,
    precoVendaItem
FROM ItensEstoque
WHERE
    setorItem <> 'Iogurte Natural';

SELECT *
FROM ItensEstoque
WHERE
    precoVendaItem = 3.90
    AND estoqueItem = 210;
--se for null ele não tem o igual

SELECT `descricaoItem`
FROM `ItensEstoque`
WHERE `idItem` = 1 OR `precoVendaItem` > 30;

SELECT `descricaoItem`
FROM `ItensEstoque`
WHERE NOT `precoVendaItem` = 7.50

SELECT descricaoItem 
FROM ItensEstoque
WHERE precoVendaItem BETWEEN 1.00 AND 7.50;

SELECT setorItem 
FROM ItensEstoque
WHERE setorItem 
IN ('Limpeza','Bebidas','Laticínios','Alimentos','Praia');

SELECT * FROM `ItensEstoque`
WHERE `descricaoItem` LIKE '%ão%'

SELECT (precoVendaItem * estoqueItem) as total
FROM `ItensEstoque`;

SELECT (precoVendaItem / estoqueItem) as total
FROM `ItensEstoque`;

SELECT (precoVendaItem - estoqueItem) as total
FROM `ItensEstoque`;

SELECT (precoVendaItem + estoqueItem) as total
FROM `ItensEstoque`;

set @minha_idade = 25;
set @nome_produto = 'pc';
SELECT (precoVendaItem * 2) AS total
FROM `ItensEstoque`;

SELECT precoVendaItem, `setorItem`
FROM `ItensEstoque`
WHERE `setorItem`
IN ('Alimentos','Limpeza','Praia','Bebidas','Laticinios')
ORDER BY `precoVendaItem`, `setorItem` DESC;

SELECT COUNT (descricaoItem)
from `ItensEstoque`
WHERE `descricaoItem` like '%molho%';

SELECT AVG(precoVendaItem)
FROM `ItensEstoque`;

SELECT SUM(estoqueItem)
FROM ItensEstoque;

SELECT MIN (precoVendaItem)
FROM `ItensEstoque`;

SELECT MAX (precoVendaItem)
FROM `ItensEstoque`;

-- 1) verificar quantidade de itens por setor;
-- 2) verificar média valor produto por setor;
-- 3) verificar valor min e max por setor;

SELECT setorItem, COUNT (*) as QTD
FROM ItensEstoque
GROUP BY setorItem;

SELECT setorItem, AVG (precoVendaItem) as MD
FROM ItensEstoque
GROUP BY setorItem;

SELECT setorItem, MIN (precoVendaItem) as min ,MAX (precoVendaItem) as max
FROM ItensEstoque
GROUP BY setorItem;


select sum(precoVendaItem) as total, setorItem
from ItensEstoque
GROUP BY setorItem;

select 
    setorItem as nome_setor,
    sum(precoVendaItem * estoqueItem) as valor_total,
    precoVendaItem as preco_unitario,
    estoqueItem as estoque
from ItensEstoque
GROUP BY setorItem,estoqueItem, precoVendaItem
ORDER BY setorItem; --ordem alfabetica