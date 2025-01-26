CREATE TABLE CATEGORIA(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100),
    status_categoria ENUM('Ativo', 'Inativo', 'Excluído') DEFAULT 'Ativo'
);


CREATE TABLE CARNE (
    id_carne INT PRIMARY KEY AUTO_INCREMENT,
    nome_carne VARCHAR(100),
    id_lote INT,
    id_categoria INT,
    status_carne ENUM('Ativo', 'Inativo', 'Excluído') DEFAULT 'Ativo',
    CONSTRAINT fk_carne_categoria FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE LOTE (
    id_lote INT PRIMARY KEY AUTO_INCREMENT,
    id_carne INT,
    data_validade TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    quantidade_estoque DECIMAL(10, 2) NOT NULL, -- Para armazenar valores numéricos como 4.5 
    status_lote ENUM('Ativo', 'Inativo', 'Excluído', 'Vazio') DEFAULT 'Ativo',
    CONSTRAINT fk_lote_carne FOREIGN KEY (id_carne) REFERENCES CARNE(id_carne)
);

