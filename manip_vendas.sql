
-- Adicionar venda
INSERT INTO vendas
    (valor_total, ponto_venda_id, cpf)
VALUES 
    (-1, -1, "000.000.000-00");

-- Adicionar subvenda
INSERT INTO subvendas
    (venda_id, produto_id, produto_qtd, valor_total)
VALUES 
    (-1, -1, -1, -1);
