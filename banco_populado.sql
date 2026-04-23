# populando me banco de dados
# lojista MA78

#comando insert into
-- populando cliente
-- insert into cliente(em ordem o nome das colunas) values
-- (valores atribuidos a cada registo, em ordem),
-- (),
-- ();
insert into cliente(nome_cliente, sobrenome_cliente,
 cpf_cliente, telefone_cliente,
 email_cliente, cidade_cliente, cep_cliente)
 values
('Felipe', 'Andrade', '12345678901', '(47)99999-1111', 'felipe@email.com', 'Joinville', '89200-000'),
('Maria', 'Silva', '23456789012', '(47)98888-2222', 'maria@email.com', 'Joinville', '89201-000');

INSERT INTO fornecedor 
(nome_fornecedor, cnpj_fornecedor, telefone_fornecedor, email_fornecedor, status_fornecedor)
VALUES
('Distribuidora Alfa', '12345678000110', '(11)99999-1111', 'contato@alfa.com', 'ATIVO'),
('Comercial Beta', '23456789000120', '(21)98888-2222', 'vendas@beta.com', 'ATIVO'),
('Fornecedor Gama', '34567890000130', '(31)97777-3333', 'suporte@gama.com', 'INATIVO');

INSERT INTO produto
(nome_produto, descricao_produto, preco_produto, categoria_produto, marca_produto, codigo_barras, data_validade_produto, peso_produto, status_produto)
VALUES
('Arroz 5kg', 'Arroz branco tipo 1', 25.90, 'Alimento', 'Tio João', '789123456001', '2026-12-31', 5.00, 'disponivel'),
('Feijão 1kg', 'Feijão preto', 8.50, 'Alimento', 'Kicaldo', '789123456002', '2026-10-10', 1.00, 'disponivel'),
('Refrigerante 2L', 'Bebida gaseificada', 6.99, 'Bebida', 'Coca-Cola', '789123456003', '2026-08-15', 2.00, 'disponivel');

INSERT INTO venda
(data_hora_venda, valor_total, forma_pagamento, desconto_venda, id_cliente_tabela_venda, status_venda, observacoes_venda, caixa_venda)
VALUES
(NOW(), 34.40, 'Cartão', 0.00, 1, 'FINALIZADA', 'Venda teste', 1);

INSERT INTO item_venda
(id_venda, id_produto, quantidade_item, preco_item, subtotal_item, imposto_item, observacao_item)
VALUES
(3, 1, 1, 25.90, 25.90, 1.00, 'OK'),
(3, 2, 1, 8.50, 8.50, 0.50, 'OK');

INSERT INTO estoque
(id_produto, quantidade_estoque, quantidade_minima_estoque, localizacao_estoque, data_hora_estrada, data_hora_saida, lote, validade, status_estoque)
VALUES
(1, 100, 10, 'A1', NOW(), NOW(), 'L001', '2026-12-31', 'OK'),
(2, 50, 5, 'A2', NOW(), NOW(), 'L002', '2026-10-10', 'OK'),
(3, 80, 10, 'B1', NOW(), NOW(), 'L003', '2026-08-15', 'OK');

INSERT INTO pagamento
(id_venda, tipo_pagamento, valor_pagamento, data_pagamento, parcelas_pagamento, imposto_pagamento, bandeira_pagamento, observacao_pagamento)
VALUES
(3, 'Cartão', 34.40, NOW(), 1, 0.00, 'Visa', 'Pago');