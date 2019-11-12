CREATE TABLE produtos(
    produto_id int NOT NULL,
    nome varchar(140) NOT NULL,
    valor float(32) NOT NULL,
    PRIMARY KEY AUTO_INCREMENT (produto_id)
);

CREATE TABLE materiais(
    material_id int,
    descricao varchar(140) NOT NULL,
    produto_id int NOT NULL,
    produto_qtd int NOT NULL,
    PRIMARY KEY AUTO_INCREMENT (material_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);

CREATE TABLE estoques(
    material_id int,
    quantidade int NOT NULL,
    PRIMARY KEY (material_id),
    FOREIGN KEY (material_id) REFERENCES materiais(material_id)
);

CREATE TABLE pontos_venda(
    ponto_venda_id int,
    nome varchar(140) NOT NULL,
    endereco varchar(140) NOT NULL,
    PRIMARY KEY AUTO_INCREMENT (ponto_venda_id)
);

CREATE TABLE clientes(
    cpf char(14) NOT NULL,
    nome varchar(140) NOT NULL,
    email varchar(140),
    telefone char(140),
    endereco varchar(140),
    PRIMARY KEY (cpf)
);

CREATE TABLE vendas(
    venda_id int,
    valor_total float(32) NOT NULL,
    ponto_venda_id int NOT NULL,
    cpf char(14) NOT NULL,
    PRIMARY KEY AUTO_INCREMENT (venda_id),
    FOREIGN KEY (ponto_venda_id) REFERENCES pontos_venda(ponto_venda_id),
    FOREIGN KEY (cpf) REFERENCES clientes(cpf)
);

CREATE TABLE subvendas(
    subvenda_id int,
    valor_total float(32) NOT NULL,
    produto_id int NOT NULL,
    venda_id int NOT NULL,
    PRIMARY KEY AUTO_INCREMENT (subvenda_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id)
);
