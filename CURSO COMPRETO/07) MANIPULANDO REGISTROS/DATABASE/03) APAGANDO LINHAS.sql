-- Excluindo o curso com o id_cursos igual a '8' da tabela "cursos".
DELETE FROM cursos
WHERE id_cursos = 8;

-- Excluindo até 2 registros da tabela "cursos" onde o ano é '2050'.
DELETE FROM cursos
WHERE ano = '2050'
LIMIT 2;
