-- Seleciona a carga de cada curso, agrupados pela carga.
SELECT carga FROM cursos GROUP BY carga;

-- Seleciona o número total de aulas e a contagem de cursos para cada número de aulas, ordenados pelo número de aulas.
SELECT totalaulas, COUNT(*) FROM cursos GROUP BY totalaulas ORDER BY totalaulas;

-- Seleciona todos os cursos que têm exatamente 30 aulas.
SELECT * FROM cursos WHERE totalaulas = 30;

-- Seleciona todos os cursos que têm exatamente 12 aulas.
SELECT * FROM cursos WHERE totalaulas = 12;

-- Seleciona todos os cursos que têm mais de 20 aulas.
SELECT * FROM cursos WHERE totalaulas > 20;

-- Seleciona a carga e conta os cursos que têm exatamente 30 aulas, agrupados pela carga e ordenados pela carga.
SELECT carga, COUNT(nome) FROM cursos WHERE totalaulas = 30 GROUP BY carga;
