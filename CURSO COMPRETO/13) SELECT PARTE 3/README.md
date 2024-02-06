# Introdução às Consultas SQL no MySQL - Parte 3
Nesta terceira parte da introdução às consultas SQL no MySQL, continuaremos explorando consultas SELECT com tópicos mais avançados, como subconsultas (subqueries), funções de data e hora, expressões condicionais e a cláusula UNION.

## Subconsultas (Subqueries)
Uma subconsulta é uma consulta SQL aninhada dentro de outra consulta. Elas são usadas para realizar consultas mais complexas e para recuperar dados com base em resultados de outras consultas.

**Exemplo:**

Suponhamos que você tenha uma tabela "pedidos" e deseja encontrar os clientes que fizeram pedidos com um valor superior a uma média de todos os pedidos:

```sql
SELECT nome
FROM clientes
WHERE id IN (
    SELECT cliente_id
    FROM pedidos
    WHERE valor > (SELECT AVG(valor) FROM pedidos)
);
```

Nesta consulta, a subconsulta `(SELECT AVG(valor) FROM pedidos)` calcula a média dos valores dos pedidos e é usada como parte da condição para encontrar clientes com pedidos de valor acima da média.

## Funções de Data e Hora
O MySQL oferece várias funções de data e hora para manipular datas e horários em consultas SQL. Algumas funções comuns incluem `NOW()`, `DATE()`, `DATE_FORMAT()`, `TIMESTAMPDIFF()`, `ADDDATE()`, `SUBDATE()`, entre outras.

**Exemplo:**

Suponhamos que você tenha uma tabela "eventos" com uma coluna "data" e deseje encontrar eventos que ocorram após a data atual:

```sql
SELECT nome, data
FROM eventos
WHERE data > NOW();
```

Nesta consulta, a função `NOW()` retorna a data e a hora atuais, e a condição `data > NOW()` filtra os eventos futuros.

## Expressões Condicionais
Expressões condicionais, como `CASE`, permitem realizar cálculos e avaliações condicionais dentro de uma consulta. Isso é útil para criar campos calculados ou realizar ações com base em condições.

**Exemplo:**

Suponhamos que você tenha uma tabela "produtos" com colunas "preco" e "desconto" e deseje calcular o preço final com base no desconto:

```sql
SELECT nome, preco, desconto,
    CASE
        WHEN desconto > 0 THEN preco - (preco * desconto)
        ELSE preco
    END AS preco_final
FROM produtos;
```

Nesta consulta, usamos a expressão `CASE` para calcular o preço final com base no desconto.

## Cláusula UNION
A cláusula UNION é usada para combinar os resultados de duas ou mais consultas em um único conjunto de resultados. As consultas combinadas devem ter o mesmo número de colunas e tipos de dados compatíveis.

**Exemplo:**

Suponhamos que você tenha duas tabelas, "vendas_janeiro" e "vendas_fevereiro", e deseje combinar as vendas de ambos os meses:

```sql
SELECT produto, quantidade
FROM vendas_janeiro
UNION
SELECT produto, quantidade
FROM vendas_fevereiro;
```

Esta consulta combina as vendas de janeiro e fevereiro em um único conjunto de resultados.

## Conclusão
Nesta parte da introdução às consultas SQL no MySQL, exploramos tópicos avançados, como subconsultas, funções de data e hora, expressões condicionais e a cláusula UNION. Com essas técnicas, você pode realizar consultas mais complexas e obter informações detalhadas dos seus bancos de dados MySQL. Continuar a praticar e experimentar diferentes cenários de consulta é fundamental para aprofundar seu conhecimento em SQL.