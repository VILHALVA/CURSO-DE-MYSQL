-- Seleciona os nomes dos alunos, o ID do curso preferido, o nome do curso preferido e o ano do curso preferido, 
-- onde os IDs dos cursos preferidos da tabela de 'gafanhotos' coincidem com os IDs dos cursos na tabela 'cursos'.
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
FROM gafanhotos
JOIN cursos ON cursos.id_cursos = gafanhotos.cursopreferido;

-- Seleciona os nomes dos alunos, o ID do curso preferido, o nome do curso preferido e o ano do curso preferido, 
-- usando alias para tabelas, onde os IDs dos cursos preferidos da tabela de 'gafanhotos' coincidem com os IDs dos cursos na tabela 'cursos'.
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos AS g
INNER JOIN cursos AS c ON c.id_cursos = g.cursopreferido;

-- Seleciona todos os registros da tabela 'gafanhotos'.
SELECT * FROM gafanhotos;
