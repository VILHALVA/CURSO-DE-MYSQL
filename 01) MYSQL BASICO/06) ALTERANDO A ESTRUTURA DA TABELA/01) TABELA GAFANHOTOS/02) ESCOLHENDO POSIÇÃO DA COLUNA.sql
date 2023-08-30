alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
add column codigo int first;

describe pessoas;