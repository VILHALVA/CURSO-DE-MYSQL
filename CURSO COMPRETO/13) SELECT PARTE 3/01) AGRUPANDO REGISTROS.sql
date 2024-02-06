select carga from cursos group by carga;

select totalaulas, count(*) from cursos group by totalaulas order by totalaulas;

select * from cursos where totalaulas = '30';
select * from cursos where totalaulas = '12';
select * from cursos where totalaulas > '20';

select carga, count(nome) from cursos group by totalaulas = '30' order by carga;