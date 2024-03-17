-- Seleciona todos os cursos cujo nome começa com a letra "P".
SELECT *
FROM cursos
WHERE nome LIKE 'P%';

-- Seleciona todos os cursos cujo nome termina com a letra "A".
SELECT *
FROM cursos
WHERE nome LIKE '%A';

-- Seleciona todos os cursos que contêm a letra "A" em qualquer posição.
SELECT *
FROM cursos
WHERE nome LIKE '%A%';

-- Seleciona todos os cursos cujo nome não contém a letra "A".
SELECT *
FROM cursos
WHERE nome NOT LIKE '%A%';

-- Seleciona todos os cursos que contêm a sequência "PH" seguida por qualquer caractere e então a letra "P".
SELECT *
FROM cursos
WHERE nome LIKE '%PH%P';

-- Seleciona todos os cursos que contêm a sequência "PH" seguida por um caractere qualquer e então a letra "P".
SELECT *
FROM cursos
WHERE nome LIKE '%PH%P_';

-- Seleciona todos os cursos cujo nome começa com a letra "P", seguida de qualquer caractere e então a letra "T".
SELECT *
FROM cursos
WHERE nome LIKE 'P_T%';

-- Seleciona todos os gafanhotos cujo nome contém "SILVA" em qualquer posição.
SELECT *
FROM gafanhotos
WHERE nome LIKE '%SILVA%';
