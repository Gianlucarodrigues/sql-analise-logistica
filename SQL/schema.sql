CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    estado CHAR(2)
);

CREATE TABLE motoristas (
    motorista_id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    data_admissao DATE
);

CREATE TABLE entregas (
    entrega_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    motorista_id INT REFERENCES motoristas(motorista_id),
    data_coleta DATE,
    data_prevista DATE,
    data_entrega DATE,
    distancia_km NUMERIC
);

CREATE TABLE fretes (
    frete_id SERIAL PRIMARY KEY,
    entrega_id INT REFERENCES entregas(entrega_id),
    valor_frete NUMERIC(10,2)
);
