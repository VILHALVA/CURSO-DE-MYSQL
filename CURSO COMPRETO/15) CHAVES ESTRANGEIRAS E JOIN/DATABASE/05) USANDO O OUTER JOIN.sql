-- Seleciona o nome do aluno, o ID do curso preferido, o nome do curso preferido e o ano do curso preferido, 
-- onde os IDs dos cursos preferidos da tabela de 'gafanhotos' coincidem com os IDs dos cursos na tabela 'cursos', 
-- incluindo todos os registros da tabela 'gafanhotos', mesmo que não haja correspondência na tabela 'cursos'.
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos AS g
LEFT OUTER JOIN cursos AS c ON c.id_cursos = g.cursopreferido;

-- Seleciona o nome do aluno, o ID do curso preferido, o nome do curso preferido e o ano do curso preferido, 
-- onde os IDs dos cursos preferidos da tabela de 'gafanhotos' coincidem com os IDs dos cursos na tabela 'cursos', 
-- incluindo todos os registros da tabela 'cursos', mesmo que não haja correspondência na tabela 'gafanhotos'.
SELECT g.nome, g.cursopreferido, c.nome, c.ano
FROM gafanhotos AS g
RIGHT OUTER JOIN cursos AS c ON c.id_cursos = g.cursopreferido;
