CREATE TABLE produtos(
    produto_id int(16) NOT NULL,
    nome varchar(140) NOT NULL,
    valor float(32) NOT NULL,
    PRIMARY KEY (produto_id)
);

CREATE TABLE materiais(
    material_id int(16) NOT NULL,
    produto_id int(16) NOT NULL,
    PRIMARY KEY (material_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
);

CREATE TABLE estoques(
    material_id int(16) NOT NULL,
    quantidade int(16) NOT NULL,
    PRIMARY KEY (material_id),
    FOREIGN KEY (material_id) REFERENCES materiais(material_id)
);

CREATE TABLE pontos_venda(
    ponto_venda_id int(16) NOT NULL,
    nome varchar(14) NOT NULL,
    endereco varchar(140) NOT NULL,
    PRIMARY KEY (ponto_venda_id)
);

CREATE TABLE clientes(
    cpf varchar(14) NOT NULL,
    nome varchar(140) NOT NULL,
    email varchar(140) NOT NULL,
    telefone varchar(140) NOT NULL,
    endereco varchar(140) NOT NULL,
    PRIMARY KEY (cpf)
);

CREATE TABLE vendas(
    venda_id int(16) NOT NULL,
    valor_total float(32) NOT NULL,
    ponto_venda_id int(16) NOT NULL,
    cpf varchar(14) NOT NULL,
    PRIMARY KEY (venda_id),
    FOREIGN KEY (ponto_venda_id) REFERENCES pontos_venda(ponto_venda_id),
    FOREIGN KEY (cpf) REFERENCES clientes(cpf)
);

CREATE TABLE items(
    item_id int(16) NOT NULL,
    valor_total float(32) NOT NULL,
    produto_id int(16) NOT NULL,
    venda_id int(16) NOT NULL,
    PRIMARY KEY (item_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id)
);
