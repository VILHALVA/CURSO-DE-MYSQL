-- Adicionando a restrição PRIMARY KEY à coluna "id_cursos" na tabela "cursos".
ALTER TABLE cursos
ADD PRIMARY KEY (id_cursos);

-- Exibindo a estrutura atualizada da tabela "cursos".
DESCRIBE cursos;
