-- Modificando a coluna "profissao" na tabela "pessoas" para ser do tipo VARCHAR(20), não nula e com valor padrão vazio ('').
ALTER TABLE pessoas
MODIFY COLUMN profissao VARCHAR(20) NOT NULL DEFAULT '';

-- Exibindo a estrutura atualizada da tabela "pessoas".
DESCRIBE pessoas;

-- Selecionando todos os registros da tabela "pessoas".
SELECT * FROM pessoas;
