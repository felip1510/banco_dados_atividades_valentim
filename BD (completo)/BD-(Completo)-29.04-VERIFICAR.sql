-- BUSCAR PRODUTO DENTRO DA VENDA
-- QUERY - select - LEITURA
-- (*) = Todas as colunas
-- select nomes de tabelas (filtra)
SELECT id_produto, preco_unitario
FROM item_venda
WHERE id_venda = 1 AND id_produto = 1;
-- PESQUISANDO POR NOME
SELECT iv.preco_unitario, p.nome_produto
FROM item_venda AS iv -- AS=APELIDO
JOIN produto AS p ON iv.id_produto = p.id_produto -- JUNTAR
WHERE iv.id_venda = 1 and p.nome_produto like'%CAFE%';

-- BUSCANDO TODAS AS VENDAS DE UM CLIENTE
SELECT *
FROM venda
WHERE id_cliente = 1;

-- BUSCA PRODUTO MAIS VENDIDO 
SELECT p.nome_produto, SUM(iv.quantidade_item) AS total_vendido
FROM item_venda AS iv
JOIN produto AS p ON p.id_produto = iv.id_produto
GROUP BY p.nome_produto;