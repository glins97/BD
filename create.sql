CREATE TABLE produtos(
    produto_id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome varchar(140) NOT NULL,
    descricao varchar(140) NOT NULL,
    valor float(32) NOT NULL
);

CREATE TABLE subprodutos(
    produto_pai_id int NOT NULL,
    produto_filho_id int NOT NULL,
    produto_filho_qtd int NOT NULL,
    PRIMARY KEY (produto_pai_id, produto_filho_id),
    FOREIGN KEY (produto_pai_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (produto_filho_id) REFERENCES produtos(produto_id)
);

CREATE TABLE materiais(
    material_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    descricao varchar(140) NOT NULL,
);

CREATE TABLE materiais_v_produtos(
    produto_id int NOT NULL,
    material_id int NOT NULL,
    qtd int NOT NULL,
    PRIMARY KEY (produto_id, material_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (material_id) REFERENCES materiais(material_id)
);

CREATE TABLE estoques(
    material_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantidade int NOT NULL,
    FOREIGN KEY (material_id) REFERENCES materiais(material_id)
);

CREATE TABLE pontos_venda(
    ponto_venda_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome varchar(140) NOT NULL,
    endereco varchar(140) NOT NULL
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
    venda_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    valor_total float(32) NOT NULL,
    ponto_venda_id int NOT NULL,
    cpf char(14) NOT NULL,
    FOREIGN KEY (ponto_venda_id) REFERENCES pontos_venda(ponto_venda_id),
    FOREIGN KEY (cpf) REFERENCES clientes(cpf)
);

CREATE TABLE subvendas(
    subvenda_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    venda_id int NOT NULL,
    produto_id int NOT NULL,
    produto_qtd int NOT NULL,
    valor_total float(32) NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    FOREIGN KEY (venda_id) REFERENCES vendas(venda_id)
);
