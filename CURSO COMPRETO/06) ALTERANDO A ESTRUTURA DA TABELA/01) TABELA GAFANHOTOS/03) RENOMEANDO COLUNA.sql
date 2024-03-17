-- Alterando o tipo e o nome da coluna "profissao" para "prof" na tabela "pessoas".
ALTER TABLE pessoas
CHANGE COLUMN profissao prof VARCHAR(20);

-- Exibindo a estrutura atualizada da tabela "pessoas".
DESCRIBE pessoas;

-- Selecionando todos os registros da tabela "pessoas".
SELECT * FROM pessoas;
