-- Seleciona todos os campos da tabela "cursos" onde o número total de aulas está entre 20 e 30, ordenados pelo nome.
SELECT *
FROM cursos
WHERE totalaulas BETWEEN 20 AND 30
ORDER BY nome;

-- Seleciona os campos "nome" e "ano" da tabela "cursos" onde o ano está entre 2014 e 2016, ordenados pelo ano de forma decrescente.
SELECT nome, ano
FROM cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano DESC;
