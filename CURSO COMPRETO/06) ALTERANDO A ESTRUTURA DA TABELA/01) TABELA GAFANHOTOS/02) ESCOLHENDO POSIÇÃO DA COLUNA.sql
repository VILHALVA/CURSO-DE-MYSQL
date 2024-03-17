-- Adicionando uma nova coluna chamada "profissao" após a coluna "nome" na tabela "pessoas".
ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(10) AFTER nome;

-- Adicionando uma nova coluna chamada "codigo" como a primeira coluna na tabela "pessoas".
ALTER TABLE pessoas
ADD COLUMN codigo INT FIRST;

-- Exibindo a estrutura atualizada da tabela "pessoas".
DESCRIBE pessoas;
