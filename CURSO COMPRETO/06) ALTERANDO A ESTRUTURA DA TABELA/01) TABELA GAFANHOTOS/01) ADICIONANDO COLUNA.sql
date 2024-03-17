-- Exibindo a estrutura da tabela "pessoas".
DESCRIBE pessoas;

-- Adicionando uma nova coluna chamada "profissao" à tabela "pessoas".
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10);

-- Selecionando todos os registros da tabela "pessoas".
SELECT * FROM pessoas;
