# Introdução às Consultas SQL no MySQL - Parte 1
As consultas SQL (Structured Query Language) são essenciais para interagir com bancos de dados, incluindo o MySQL. Elas permitem que você recupere, atualize, insira e exclua dados de suas tabelas. Nesta primeira parte da introdução às consultas SQL no MySQL, exploraremos as consultas SELECT, que são usadas para recuperar dados de tabelas.

## Consulta Simples com SELECT
A consulta SELECT é usada para recuperar dados de uma ou mais tabelas. A estrutura básica de uma consulta SELECT é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM tabela;
```

- `SELECT`: Especifica as colunas que você deseja recuperar.
- `FROM`: Especifica a tabela da qual você deseja recuperar os dados.

**Exemplo:**

Suponhamos que temos uma tabela "clientes" com colunas "id", "nome" e "email". Para selecionar todos os registros da tabela:

```sql
SELECT * FROM clientes;
```

## Filtrando Registros com a cláusula WHERE
Você pode usar a cláusula WHERE para filtrar os resultados com base em uma condição. A consulta SELECT retornará apenas os registros que atendem à condição especificada.

**Exemplo:**

Para selecionar todos os clientes com nome "João":

```sql
SELECT * FROM clientes
WHERE nome = 'João';
```

## Ordenando Registros com a cláusula ORDER BY
A cláusula ORDER BY é usada para classificar os resultados em ordem ascendente ou descendente com base em uma ou mais colunas.

**Exemplo:**

Para selecionar todos os clientes da tabela "clientes" ordenados alfabeticamente pelo nome:

```sql
SELECT * FROM clientes
ORDER BY nome;
```

Para ordenar em ordem decrescente (do Z ao A), adicione a palavra-chave "DESC":

```sql
SELECT * FROM clientes
ORDER BY nome DESC;
```

## Limitando Resultados com a cláusula LIMIT
A cláusula LIMIT permite limitar o número de registros retornados por uma consulta.

**Exemplo:**

Para selecionar os cinco primeiros clientes da tabela "clientes":

```sql
SELECT * FROM clientes
LIMIT 5;
```

## Conclusão
As consultas SELECT são a base para recuperar dados de um banco de dados MySQL. Você pode selecionar colunas específicas, filtrar registros com a cláusula WHERE, ordenar resultados com a cláusula ORDER BY e limitar o número de registros retornados com a cláusula LIMIT. Na próxima parte, continuaremos explorando as consultas SELECT com mais detalhes, incluindo funções de agregação e junções (joins).