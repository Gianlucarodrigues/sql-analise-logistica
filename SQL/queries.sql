--Entregas atrasadas

SELECT 
    e.entrega_id,
    c.nome AS cliente,
    e.data_prevista,
    e.data_entrega,
    (e.data_entrega - e.data_prevista) AS dias_atraso
FROM entregas e
JOIN clientes c ON e.cliente_id = c.cliente_id
WHERE e.data_entrega > e.data_prevista;

--Taxa de atraso (%) 

SELECT 
    ROUND(
        COUNT(CASE WHEN data_entrega > data_prevista THEN 1 END) * 100.0 
        / COUNT(*), 2
    ) AS taxa_atraso_percentual
FROM entregas;

--Custo médio por KM

SELECT 
    ROUND(SUM(f.valor_frete) / SUM(e.distancia_km), 2) AS custo_por_km
FROM entregas e
JOIN fretes f ON e.entrega_id = f.entrega_id;

--Performance por motorista

SELECT 
    m.nome,
    COUNT(e.entrega_id) AS total_entregas,
    COUNT(CASE WHEN e.data_entrega > e.data_prevista THEN 1 END) AS entregas_atrasadas
FROM motoristas m
LEFT JOIN entregas e ON m.motorista_id = e.motorista_id
GROUP BY m.nome;
