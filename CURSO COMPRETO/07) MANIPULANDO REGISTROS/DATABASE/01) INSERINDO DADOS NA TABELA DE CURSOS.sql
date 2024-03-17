-- Inserindo valores na tabela "cursos".
INSERT INTO cursos (nome, descricao, carga, totalaulas, ano)
VALUES 
('HTML4', 'CURSO DE HTML', 40, 37, '2014'),
('ALGORITMOS', 'LÓGICA DE PROGRAMAÇÃO', 20, 15, '2014'),
('PHOTOSHOP', 'CURSO DE PHOTOSHOP', 10, 8, '2014'),
('PGP', 'CURSO DE PHP', 40, 20, '2010'),
('JARVA', 'CURSO DE JAVA', 10, 29, '2000'),
('MYSQL', 'CURSO DE BANCO DE DADOS', 30, 15, '2016'),
('WORD', 'CURSO DE WORD', 40, 30, '2016'),
('SAPATEADO', 'CURSO BIZARRO', 40, 30, '2018'),
('COZINHA ÁRABE', 'CURSO DE CULINÁRIA', 40, 30, '2018'),
('YOUTUBER', 'CURSO OBSCURO', 5, 2, '2018');

-- Selecionando todos os registros da tabela "cursos".
SELECT * FROM cursos;
