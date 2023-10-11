# Utilizando INNER JOIN com Múltiplas Tabelas em Consultas SQL
Em bancos de dados complexos, pode ser necessário unir várias tabelas usando INNER JOIN para recuperar informações de diferentes fontes. Isso é comum em sistemas onde os dados estão distribuídos em várias tabelas relacionadas. Vamos explorar como realizar INNER JOIN com múltiplas tabelas em uma consulta SQL usando o MySQL como exemplo.

Suponhamos que você tenha três tabelas: "Clientes", "Pedidos" e "ItensPedido". A tabela "Clientes" contém informações dos clientes, a tabela "Pedidos" contém detalhes dos pedidos e a tabela "ItensPedido" contém informações sobre os itens incluídos em cada pedido.

## Estrutura das Tabelas

**Tabela "Clientes":**

| ID  | Nome     | Email                |
| --- | -------- | -------------------- |
| 1   | João     | joao@email.com       |
| 2   | Maria    | maria@email.com      |

**Tabela "Pedidos":**

| ID  | Cliente_ID | Data       |
| --- | ---------- | ----------  |
| 101 | 1          | 2023-01-15 |
| 102 | 2          | 2023-02-20 |

**Tabela "ItensPedido":**

| Pedido_ID | Produto     | Quantidade |
| --------- | -----------  | ---------- |
| 101       | Produto A   | 2          |
| 101       | Produto B   | 3          |
| 102       | Produto C   | 1          |

## Consulta INNER JOIN com Múltiplas Tabelas
Suponhamos que você queira recuperar informações de clientes, pedidos e itens de pedido em uma única consulta. Você pode usar INNER JOIN para combinar essas tabelas da seguinte forma:

```sql
SELECT Clientes.Nome, Pedidos.Data, ItensPedido.Produto, ItensPedido.Quantidade
FROM Clientes
INNER JOIN Pedidos ON Clientes.ID = Pedidos.Cliente_ID
INNER JOIN ItensPedido ON Pedidos.ID = ItensPedido.Pedido_ID;
```

Nesta consulta, realizamos o seguinte:

1. Unimos a tabela "Clientes" com a tabela "Pedidos" usando INNER JOIN com base na correspondência entre "Clientes.ID" e "Pedidos.Cliente_ID".

2. Em seguida, unimos o resultado dessa junção com a tabela "ItensPedido" usando INNER JOIN com base na correspondência entre "Pedidos.ID" e "ItensPedido.Pedido_ID".

O resultado será um conjunto de dados que combina informações de todas as três tabelas, permitindo que você veja os nomes dos clientes, as datas dos pedidos e os produtos e quantidades de itens de pedido relacionados.

## Conclusão
O uso de INNER JOIN com múltiplas tabelas é uma técnica valiosa para recuperar informações de diferentes fontes em bancos de dados relacionais. Certifique-se de compreender a estrutura de suas tabelas e como elas estão relacionadas antes de criar consultas envolvendo várias tabelas. Isso ajuda a evitar erros e a obter os resultados desejados de forma eficaz.