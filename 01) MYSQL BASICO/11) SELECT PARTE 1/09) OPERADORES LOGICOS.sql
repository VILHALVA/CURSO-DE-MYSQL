select * from cursos
where carga > 35 and totalaulas <= 40
order by nome;

select * from cursos
where carga > 35 or totalaulas <= 40
order by nome;

