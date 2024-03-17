-- Adiciona uma nova coluna chamada 'cursopreferido' à tabela 'gafanhotos'.
ALTER TABLE gafanhotos ADD COLUMN cursopreferido INT;

-- Adiciona uma chave estrangeira à coluna 'cursopreferido' da tabela 'gafanhotos', referenciando a coluna 'id_cursos' da tabela 'cursos'.
ALTER TABLE gafanhotos ADD FOREIGN KEY (cursopreferido) REFERENCES cursos(id_cursos);

-- Descreve a estrutura atualizada da tabela 'gafanhotos'.
DESCRIBE gafanhotos;
