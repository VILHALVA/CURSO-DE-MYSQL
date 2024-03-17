-- Seleciona todos os dados das tabelas 'gafanhotos', 'gafanho_assiste_curso' e 'cursos' com base nas chaves estrangeiras.
SELECT * 
FROM gafanhotos g
JOIN gafanho_assiste_curso a ON g.id = a.idgafanhoto
JOIN cursos c ON a.idcurso = c.id_cursos;

-- Seleciona os nomes dos gafanhotos e dos cursos que assistiram.
SELECT g.nome, c.nome 
FROM gafanhotos g
JOIN gafanho_assiste_curso a ON g.id = a.idgafanhoto
JOIN cursos c ON a.idcurso = c.id_cursos;
