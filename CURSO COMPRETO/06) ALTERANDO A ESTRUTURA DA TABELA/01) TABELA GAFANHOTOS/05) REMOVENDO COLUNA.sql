-- Removendo a coluna "profissao" da tabela "pessoas".
ALTER TABLE pessoas
DROP COLUMN profissao;

-- Selecionando todos os registros da tabela "pessoas" após a remoção da coluna.
SELECT * FROM pessoas;

-- Exibindo a estrutura atualizada da tabela "pessoas".
DESCRIBE pessoas;
