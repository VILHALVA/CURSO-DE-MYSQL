select nome, carga, descricao from cursos
where ano >= '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= '2014'
order by ano;

select nome, descricao, ano from cursos
where ano != '2014'
order by ano;