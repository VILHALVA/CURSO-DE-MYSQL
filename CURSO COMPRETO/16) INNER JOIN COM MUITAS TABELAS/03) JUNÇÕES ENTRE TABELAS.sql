select * from gafanhotos g 
join gafanho_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.id_cursos;

select g.nome, c.nome from gafanhotos g 
join gafanho_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.id_cursos;