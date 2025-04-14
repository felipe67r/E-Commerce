CREATE DATABASE ecomerce;
USE ecomerce;

CREATE TABLE fornecedores (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(100) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto TEXT,
    preco_produto DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    fk_categoria INT,
    fk_fornecedor INT,
    FOREIGN KEY (fk_categoria) REFERENCES categorias(id_categoria),
    FOREIGN KEY (fk_fornecedor) REFERENCES fornecedores(id_fornecedor)
) ENGINE=InnoDB;

CREATE TABLE enderecos (
    id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(15) UNIQUE,
    tipo_usuario ENUM('cliente', 'administrador') NOT NULL,
    fk_endereco INT,
    FOREIGN KEY (fk_endereco) REFERENCES enderecos(id_endereco)
) ENGINE=InnoDB;

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    fk_usuario INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuarios(id_usuario)
) ENGINE=InnoDB;

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    fk_pedido INT,
    fk_produto INT,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (fk_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (fk_produto) REFERENCES produtos(id_produto)
) ENGINE=InnoDB;

CREATE TABLE pagamentos (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento ENUM('cartao', 'boleto', 'pix') NOT NULL,
    data_hora DATETIME NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    vencimento DATE,
    fk_pedido INT,
    FOREIGN KEY (fk_pedido) REFERENCES pedidos(id_pedido)
) ENGINE=InnoDB;

CREATE TABLE entregas (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    status_entrega VARCHAR(50) NOT NULL,
    fk_pedido INT,
    fk_endereco INT,
    FOREIGN KEY (fk_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (fk_endereco) REFERENCES enderecos(id_endereco)
) ENGINE=InnoDB;

CREATE TABLE avaliacoes (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    nota INT CHECK (nota >= 1 AND nota <= 5),
    descricao TEXT,
    data DATE NOT NULL,
    fk_usuario INT,
    fk_produto INT,
    FOREIGN KEY (fk_usuario) REFERENCES usuarios(id_usuario),
    FOREIGN KEY (fk_produto) REFERENCES produtos(id_produto)
) ENGINE=InnoDB;
