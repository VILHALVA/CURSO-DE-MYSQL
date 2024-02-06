create table if not exists cursos (
	nome varchar(20) not null unique,
    descricao text,
    carga int unsigned,
    totalaulas int unsigned,
    ano year default '2023'
) default charset=utf8;

describe cursos;