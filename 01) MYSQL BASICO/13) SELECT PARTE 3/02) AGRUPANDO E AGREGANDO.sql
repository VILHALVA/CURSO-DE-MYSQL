select ano, count(*) from cursos group by ano order by count(*) desc;

select carga, count(nome) from cursos group by carga having count(nome) >= 3;

select ano, count(*) from cursos where totalaulas > 30 group by ano having ano > 2013 order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);