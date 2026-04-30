-- Categorias de Filmes
INSERT INTO categoria (descricao_categoria) VALUES 
('Ação'), ('Comédia'), ('Terror'), ('Ficção Científica'), ('Animação');

-- Salas do Cinema
INSERT INTO sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) VALUES 
('Sala 01 - Principal', 'IMAX', 150, TRUE),
('Sala 02 - Standard', '2D', 100, FALSE),
('Sala 03 - Experiência', '3D', 80, FALSE);

-- Tipos de Ingressos e Preços
INSERT INTO tipo_ingresso (descricao_ingresso, valor_ingresso) VALUES 
('Inteira', 40.00),
('Meia-Entrada', 20.00),
('Promocional Terça', 15.00);

-- Filmes
INSERT INTO filme (nome_filme, faixa_etaria, duracao_filme, status_filme, id_categoria_filme) VALUES 
('Interestelar 2', 12, 160, 'EM CARTAZ', 4),
('O Chamado da Noite', 18, 110, 'EM CARTAZ', 3),
('Aventuras no Gelo', 0, 95, 'EM CARTAZ', 5),
('Velozes e Furiosos 25', 14, 130, 'FORA CARTAZ', 1);

-- Sessões (Programadas para datas próximas)
INSERT INTO sessao (data_hora, status_sessao, id_sala, id_filme) VALUES 
('2024-05-10 14:00:00', 'ABERTA', 1, 1),
('2024-05-10 17:30:00', 'ABERTA', 1, 1),
('2024-05-10 20:00:00', 'ABERTA', 3, 2),
('2024-05-11 13:00:00', 'ABERTA', 2, 3);

-- Clientes
INSERT INTO cliente (nome_cliente, cpf_cliente, email_cliente, status_cliente) VALUES 
('João Silva', '123.456.789-00', 'joao@email.com', 'ATIVO'),
('Maria Oliveira', '987.654.321-11', 'maria@email.com', 'ATIVO'),
('Carlos Souza', '111.222.333-44', 'carlos@email.com', 'INATIVO');

-- Pedidos (Carrinho de compras)
INSERT INTO pedido (data_hora, id_cliente, status_pedido) VALUES 
(NOW(), 1, 'PAGO'),
(NOW(), 2, 'ABERTO');

-- Ingressos (Itens dos pedidos acima)
INSERT INTO ingresso (id_pedido, id_sessao, id_tipo_ingresso, valor_pago, status_ingresso) VALUES 
(1, 1, 1, 40.00, 'PAGO'),       -- João comprou 1 inteira para Interestelar
(1, 1, 2, 20.00, 'PAGO'),       -- João comprou 1 meia para acompanhante
(2, 3, 1, 40.00, 'RESERVADO');  -- Maria reservou 1 inteira para o filme de Terror