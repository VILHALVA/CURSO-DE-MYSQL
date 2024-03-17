-- Atualiza o nome do curso com o ID 1 para "HTML5".
UPDATE cursos
SET nome = 'HTML5'
WHERE id_cursos = 1;

-- Atualiza o nome do curso com o ID 4 para "PHP" e o ano para "2015".
UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE id_cursos = 4;

-- Atualiza o nome do curso com o ID 5 para "JAVA", a carga horária para 40 e o ano para "2015". Limita a atualização a apenas um registro.
UPDATE cursos
SET nome = 'JAVA', carga = 40, ano = '2015'
WHERE id_cursos = 5
LIMIT 1;
