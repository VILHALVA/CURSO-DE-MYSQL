-- Conta o número total de registros na tabela de cursos.
SELECT COUNT(*) FROM cursos;

-- Conta o número total de registros na tabela de gafanhotos.
SELECT COUNT(*) FROM gafanhotos;

-- Conta o número de registros na tabela de cursos onde a carga é superior a 30.
SELECT COUNT(*) FROM cursos WHERE carga > 30;

-- Seleciona o valor máximo da carga entre todos os cursos.
SELECT MAX(carga) FROM cursos;

-- Seleciona o nome do curso e o máximo de total de aulas para o ano de 2016.
SELECT nome, MAX(totalaulas) FROM cursos WHERE ano = '2016';

-- Seleciona o nome do curso e o mínimo de total de aulas entre todos os cursos.
SELECT nome, MIN(totalaulas) FROM cursos;

-- Seleciona o nome do curso e o mínimo de total de aulas para o ano de 2016.
SELECT nome, MIN(totalaulas) FROM cursos WHERE ano = '2016';

-- Calcula a soma total de todas as aulas para o ano de 2016.
SELECT SUM(totalaulas) FROM cursos WHERE ano = '2016';

-- Calcula a soma total de todas as aulas em todos os cursos.
SELECT SUM(totalaulas) FROM cursos;

-- Calcula a média do total de aulas para o ano de 2016.
SELECT AVG(totalaulas) FROM cursos WHERE ano = '2016';

-- Calcula a média do total de aulas em todos os cursos.
SELECT AVG(totalaulas) FROM cursos;
