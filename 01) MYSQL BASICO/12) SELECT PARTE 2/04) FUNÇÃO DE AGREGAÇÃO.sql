select count(*) from cursos;
select count(*) from gafanhotos;
select count(*) from cursos where carga > 30;

select max(carga) from cursos;
select nome, max(totalaulas) from cursos where ano = "2016";

select nome, min(totalaulas) from cursos;
select nome, min(totalaulas) from cursos where ano = "2016";

select sum(totalaulas) from cursos where ano = "2016";
select sum(totalaulas) from cursos;

select avg(totalaulas) from cursos where ano = "2016";
select avg(totalaulas) from cursos;