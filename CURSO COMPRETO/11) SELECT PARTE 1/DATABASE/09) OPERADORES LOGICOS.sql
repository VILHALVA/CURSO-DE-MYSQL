-- Seleciona todos os campos da tabela "cursos" onde a carga horária é maior que 35 e o total de aulas é menor ou igual a 40, ordenados pelo nome.
SELECT *
FROM cursos
WHERE carga > 35 AND totalaulas <= 40
ORDER BY nome;

-- Seleciona todos os campos da tabela "cursos" onde a carga horária é maior que 35 ou o total de aulas é menor ou igual a 40, ordenados pelo nome.
SELECT *
FROM cursos
WHERE carga > 35 OR totalaulas <= 40
ORDER BY nome;
