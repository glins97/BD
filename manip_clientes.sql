
-- Adicionar cliente

-- Atualizar cpf do cliente
UPDATE clientes
SET cpf = '100.000.000-00'
WHERE cpf = '000.000.000-00';

-- Atualizar nome do cliente
UPDATE clientes
SET nome = 'NOME1'
WHERE cpf = '000.000.000-00';

-- Atualizar email do cliente
UPDATE clientes
SET email = 'email2@globomail.com'
WHERE cpf = '000.000.000-00';

-- Atualizar telefone do cliente
UPDATE clientes
SET telefone = '00 00000001'
WHERE cpf = '000.000.000-00';

-- Atualizar enderço do cliente
UPDATE clientes
SET endereco = 'endereço1'
WHERE cpf = '000.000.000-00';

