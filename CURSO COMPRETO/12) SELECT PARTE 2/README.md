# Introdução às Consultas SQL no MySQL - Parte 2
Nesta segunda parte da introdução às consultas SQL no MySQL, continuaremos a explorar consultas SELECT com mais detalhes, incluindo funções de agregação e junções (joins).

## Funções de Agregação
As funções de agregação são usadas para realizar cálculos em grupos de registros, geralmente resultando em um único valor. As funções de agregação comuns incluem `SUM`, `AVG`, `COUNT`, `MIN` e `MAX`.

**Exemplo:**

Suponhamos que temos uma tabela "pedidos" com uma coluna "valor" e queremos calcular o valor total de todos os pedidos:

```sql
SELECT SUM(valor) AS valor_total
FROM pedidos;
```

Esta consulta calcula a soma de todos os valores na coluna "valor" e a renomeia como "valor_total".

## Agrupando Dados com GROUP BY
A cláusula GROUP BY é usada em conjunto com funções de agregação para agrupar registros com base em valores em uma ou mais colunas. Isso é útil quando você deseja resumir dados em grupos.

**Exemplo:**

Suponhamos que você tenha uma tabela "vendas" com as colunas "produto" e "quantidade" e deseja calcular a quantidade total vendida por produto:

```sql
SELECT produto, SUM(quantidade) AS quantidade_total
FROM vendas
GROUP BY produto;
```

Esta consulta agrupa os registros pelo nome do produto e calcula a soma da quantidade vendida para cada produto.

## Realizando Junções (Joins)
Quando você tem dados distribuídos em várias tabelas, as junções (joins) são usadas para combinar dados de diferentes tabelas com base em colunas relacionadas. O MySQL suporta vários tipos de junções, incluindo INNER JOIN, LEFT JOIN e RIGHT JOIN.

**Exemplo:**

Suponhamos que você tenha duas tabelas: "clientes" e "pedidos", e deseja listar os nomes dos clientes e os números de pedido relacionados:

```sql
SELECT clientes.nome, pedidos.numero
FROM clientes
INNER JOIN pedidos ON clientes.id = pedidos.cliente_id;
```

Esta consulta combina as tabelas "clientes" e "pedidos" com base na coluna "cliente_id" da tabela "pedidos" e na coluna "id" da tabela "clientes".

## Filtrando com a cláusula HAVING
A cláusula HAVING é usada para filtrar grupos de registros após a aplicação de funções de agregação. É semelhante à cláusula WHERE, mas é aplicada após a agregação.

**Exemplo:**

Suponhamos que você tenha uma consulta que retorna a quantidade total vendida por produto, como mostrado anteriormente, e deseja filtrar apenas os produtos com quantidade total superior a 100 unidades:

```sql
SELECT produto, SUM(quantidade) AS quantidade_total
FROM vendas
GROUP BY produto
HAVING quantidade_total > 100;
```

Esta consulta filtra os resultados para exibir apenas produtos com uma quantidade total superior a 100 unidades.

## Conclusão
As consultas SELECT no MySQL podem ser expandidas com funções de agregação, agrupamento de dados com GROUP BY, junções (joins) para combinar dados de várias tabelas e a cláusula HAVING para filtrar grupos de registros após a agregação. Com essas ferramentas, você pode realizar consultas complexas para recuperar, resumir e analisar dados de seus bancos de dados MySQL. Continuar a praticar e aprofundar seu conhecimento é fundamental para se tornar proficiente em consultas SQL.