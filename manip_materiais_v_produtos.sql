
-- Adicionar materiais de produtos
INSERT INTO materiais_v_produtos
    (produto_id, material_id, qtd)
VALUES 
    (-1, -1, -1);

-- Remover materiais de produtos
DELETE 
FROM materiais_v_produtos
WHERE produto_id = -1 AND material_id = -1

-- Atualizar materiais de produtos
UPDATE materiais_v_produtos
SET qtd = -1