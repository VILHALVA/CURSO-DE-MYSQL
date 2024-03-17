-- Inserindo um registro na tabela "pessoas" com valores padrão para o ID e a nacionalidade.
INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('GOLDOFREDO', '1984-01-02', 'M', '78.5', '1.83', 'BRASIL');

-- Inserindo um registro na tabela "pessoas" com valores padrão para o ID e a nacionalidade.
INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('MARIA', '1999-12-30', 'F', '55.6', '1.65', 'PORTUGAL');

-- Inserindo um registro na tabela "pessoas" com a nacionalidade padrão.
INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('CREUZA', '1920-12-30', 'F', '50.2', '1.65', DEFAULT);

-- Inserindo um registro na tabela "pessoas" com valores padrão para o ID e a nacionalidade.
INSERT INTO pessoas 
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('ADALGIZA', '1930-11-2', 'F', '63.2', '1.75', 'IRLANA');

-- Selecionando todos os registros da tabela "pessoas".
SELECT * FROM pessoas;
