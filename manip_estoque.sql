-- Adicionar estoque
INSERT INTO estoque
    (material_id, quantidade)
VALUES 
    (-1, -1);

-- Remover estoque
 DELETE FROM estoque WHERE material_id = '' ;

-- Atualizar estoque

UPDATE estoque
SET quantidade = -1
WHERE quantidade = -1
