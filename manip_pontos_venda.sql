
-- Adicionar ponto de venda
INSERT INTO pontos_venda
    (nome, endereco)
VALUES 
    ("", "");

-- Remover ponto de venda
DELETE 
FROM pontos_venda
WHERE ponto_venda_id = -1

-- Atualizar ponto de venda
UPDATE pontos_venda
SET nome = ""
WHERE ponto_venda_id = -1

UPDATE pontos_venda
SET endereco = ""
WHERE ponto_venda_id = -1
