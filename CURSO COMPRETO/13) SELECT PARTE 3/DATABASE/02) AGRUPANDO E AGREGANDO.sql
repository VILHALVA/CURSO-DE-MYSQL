-- Seleciona o ano de cada curso e conta quantos cursos existem para cada ano, ordenados pela contagem em ordem decrescente.
SELECT ano, COUNT(*) FROM cursos GROUP BY ano ORDER BY COUNT(*) DESC;

-- Seleciona a carga de cada curso e conta quantos cursos existem para cada carga, apenas para cargas que têm pelo menos 3 cursos.
SELECT carga, COUNT(nome) FROM cursos GROUP BY carga HAVING COUNT(nome) >= 3;

-- Seleciona o ano de cada curso e conta quantos cursos têm mais de 30 aulas para cada ano, apenas para anos posteriores a 2013, ordenados pela contagem em ordem decrescente.
SELECT ano, COUNT(*) FROM cursos WHERE totalaulas > 30 GROUP BY ano HAVING ano > 2013 ORDER BY COUNT(*) DESC;

-- Calcula a média da carga de todos os cursos.
SELECT AVG(carga) FROM cursos;

-- Seleciona a carga de cada curso e conta quantos cursos têm a carga maior que a média de carga de todos os cursos, apenas para cursos com anos posteriores a 2015.
SELECT carga, COUNT(*) FROM cursos WHERE ano > 2015 GROUP BY carga HAVING carga > (SELECT AVG(carga) FROM cursos);
