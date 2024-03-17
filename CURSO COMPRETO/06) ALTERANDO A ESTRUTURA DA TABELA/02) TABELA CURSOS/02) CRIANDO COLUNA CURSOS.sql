-- Adicionando a coluna "id_cursos" como a primeira coluna na tabela "cursos".
ALTER TABLE cursos
ADD COLUMN id_cursos INT FIRST;

-- Exibindo a estrutura atualizada da tabela "cursos".
DESCRIBE cursos;
