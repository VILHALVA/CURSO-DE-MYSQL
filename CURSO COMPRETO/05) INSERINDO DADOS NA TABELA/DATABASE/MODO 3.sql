-- Inserindo vários registros na tabela "pessoas" com valores padrão para o ID e a nacionalidade.
INSERT INTO pessoas 
VALUES 
(DEFAULT, 'GOLDOFREDO', '1984-01-02', 'M', '78.5', '1.83', 'BRASIL'),
(DEFAULT, 'MARIA', '1999-12-30', 'F', '55.6', '1.65', 'PORTUGAL'),
(DEFAULT, 'CREUZA', '1920-12-30', 'F', '50.2', '1.65', DEFAULT),
(DEFAULT, 'ADALGIZA', '1930-11-2', 'F', '63.2', '1.75', 'IRLANA');

-- Selecionando todos os registros da tabela "pessoas".
SELECT * FROM pessoas;
