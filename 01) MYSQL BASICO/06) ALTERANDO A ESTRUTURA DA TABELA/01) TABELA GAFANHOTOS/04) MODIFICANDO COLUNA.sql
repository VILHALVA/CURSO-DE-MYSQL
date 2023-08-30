alter table pessoas
modify column profissao varchar(20) not null default '';

describe pessoas;

select * from pessoas;