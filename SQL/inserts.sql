INSERT INTO clientes (nome, cidade, estado) VALUES
('Empresa Alpha', 'São Paulo', 'SP'),
('Empresa Beta', 'Campinas', 'SP'),
('Empresa Gama', 'Rio de Janeiro', 'RJ');

INSERT INTO motoristas (nome, data_admissao) VALUES
('João Silva', '2022-01-10'),
('Carlos Souza', '2023-03-15');

INSERT INTO entregas (cliente_id, motorista_id, data_coleta, data_prevista, data_entrega, distancia_km) VALUES
(1, 1, '2024-01-05', '2024-01-10', '2024-01-09', 450),
(2, 2, '2024-01-07', '2024-01-12', '2024-01-15', 300),
(3, 1, '2024-01-08', '2024-01-14', '2024-01-14', 600);

INSERT INTO fretes (entrega_id, valor_frete) VALUES
(1, 1500.00),
(2, 1200.00),
(3, 2000.00);
