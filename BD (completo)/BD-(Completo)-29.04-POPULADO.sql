insert into cliente (nome_cliente, email_cliente)
values
('Douglas Flores', 'Douglas@hotmail'),
('Carlos Miguel', 'Carlos@gmail');
-- PRODUTOS
insert into produto(nome_produto, preco_produto)
values
('CAFE',255.00),
('PAO',16.67);
-- VENDAS
insert into venda(data_venda, id_cliente)
values
('2025-02-01',1),
('2024-07-04',2);
-- ITEM_VENDA
insert into item_venda (id_venda, id_produto, quantidade_item, preco_unitario)
values
(1,1,3,255),
(2,2,5,16.67);