-- Seleciona apenas os campos "nome", "carga" e "ano" da tabela "cursos".
SELECT nome, carga, ano FROM cursos;

-- Seleciona os campos "ano", "carga" e "nome" da tabela "cursos" ordenados primeiro por "ano" e depois por "nome".
SELECT ano, carga, nome FROM cursos
ORDER BY ano, nome;
