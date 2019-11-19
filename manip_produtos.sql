
-- Adicionar produto
INSERT INTO produtos
    (nome, descricao, valor)
VALUES 
    ("", "", -1);

-- Remover produto
DELETE 
FROM produtos
WHERE produto_id = -1;

-- Atualizar produto
UPDATE produtos
SET nome = ""
WHERE produto_id = -1;

UPDATE produtos
SET descricao = ""
WHERE produto_id = -1;

UPDATE produtos
SET valor = -1
WHERE produto_id = -1;
