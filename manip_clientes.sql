
-- Adicionar cliente
INSERT INTO clientes
    (cpf, nome, email, telefone, endereco)
VALUES 
    ('000.000.000-00', 'NOME', 'email@globomail.com', '00 00000000', 'endereço');

-- Atualizar cpf do cliente
UPDATE clientes
SET cpf = '000.000.000-01'
WHERE cpf = '000.000.000-00'

-- Atualizar nome do cliente
UPDATE clientes
SET nome = 'NOME1'
WHERE nome = 'NOME2'

-- Atualizar email do cliente
UPDATE clientes
SET email = 'email2@globomail.com'
WHERE email = 'email@globomail.com'

-- Atualizar telefone do cliente
UPDATE clientes
SET telefone = '00 00000000'
WHERE telefone = '00 00000001'

-- Atualizar enderço do cliente
UPDATE clientes
SET enderço = 'endereço1'
WHERE enderço = 'enderço'

