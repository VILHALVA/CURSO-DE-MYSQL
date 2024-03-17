-- Mostra todos os bancos de dados disponíveis.
SHOW DATABASES;

-- Exibe o status atual do banco de dados.
STATUS;

-- Usa o banco de dados "cadastro".
USE cadastro;

-- Mostra todas as tabelas presentes no banco de dados atual.
SHOW TABLES;

-- Descreve a estrutura da tabela "cursos".
DESCRIBE cursos;

-- Descreve a estrutura da tabela "gafanhotos".
DESCRIBE gafanhotos;

-- Seleciona todos os registros da tabela "gafanhotos".
SELECT * FROM gafanhotos;

-- Seleciona todos os registros da tabela "cursos".
SELECT * FROM cursos;

-- Atualiza o nome do curso com ID 4 para 'PH'.
UPDATE cursos SET nome = 'PH' WHERE id_cursos = 4;
