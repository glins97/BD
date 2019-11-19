
-- Adicionar subproduto
INSERT INTO subprodutos
    (produto_pai_id, produto_filho_id, produto_filho_qtd)
VALUES 
    (-1, -1, -1);

-- Remover subproduto
DELETE 
FROM subprodutos
WHERE produto_pai_id = -1 AND produto_filho_id = -1;

-- Atualizar subproduto
UPDATE subprodutos
SET produto_filho_qtd = -1
WHERE produto_filho_id = -1 AND produto_pai_id = -1;
