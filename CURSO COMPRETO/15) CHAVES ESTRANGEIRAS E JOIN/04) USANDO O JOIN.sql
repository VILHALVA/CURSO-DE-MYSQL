select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.id_cursos = gafanhotos.cursopreferido;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.id_cursos = g.cursopreferido;

select * from gafanhotos;