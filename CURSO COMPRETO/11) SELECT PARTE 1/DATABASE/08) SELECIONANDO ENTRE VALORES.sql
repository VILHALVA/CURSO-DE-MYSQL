-- Seleciona os campos "nome", "descricao" e "ano" da tabela "cursos" onde o ano está entre 2014 e 2016, ordenados pelo ano.
SELECT nome, descricao, ano
FROM cursos
WHERE ano IN (2014, 2016)
ORDER BY ano;
