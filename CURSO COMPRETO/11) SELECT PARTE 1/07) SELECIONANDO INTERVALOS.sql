select * from cursos
where totalaulas between 20 and 30
order by nome;

select nome, ano from cursos
where ano between 2014 and 2016
order by ano desc;