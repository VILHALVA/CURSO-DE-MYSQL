-- Seleciona os campos "nome", "carga" e "descricao" da tabela "cursos" onde o ano é maior ou igual a '2016', ordenados pelo nome.
SELECT nome, carga, descricao
FROM cursos
WHERE ano >= '2016'
ORDER BY nome;

-- Seleciona os campos "nome", "descricao" e "ano" da tabela "cursos" onde o ano é menor ou igual a '2014', ordenados pelo ano.
SELECT nome, descricao, ano
FROM cursos
WHERE ano <= '2014'
ORDER BY ano;

-- Seleciona os campos "nome", "descricao" e "ano" da tabela "cursos" onde o ano é diferente de '2014', ordenados pelo ano.
SELECT nome, descricao, ano
FROM cursos
WHERE ano != '2014'
ORDER BY ano;
