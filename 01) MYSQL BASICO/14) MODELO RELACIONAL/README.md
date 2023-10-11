# Modelo Relacional de Dados
O modelo relacional de dados é um modelo de banco de dados que representa os dados em forma de tabelas (ou relações), onde cada tabela consiste em linhas (tuplas) e colunas (atributos). É amplamente utilizado em sistemas de gerenciamento de bancos de dados (SGBDs) como o MySQL, PostgreSQL, Oracle e SQL Server, devido à sua simplicidade e eficácia na organização e recuperação de dados. Vamos explorar os principais conceitos do modelo relacional:

## Tabelas (Relações)
As tabelas são a base do modelo relacional e representam entidades no mundo real, como clientes, produtos, funcionários, etc. Cada tabela é nomeada e consiste em uma série de colunas, onde cada coluna tem um nome único e representa um atributo da entidade.

Exemplo de uma tabela "Clientes":

| ID  | Nome     | Email                | Idade |
| --- | -------- | -------------------- | ----- |
| 1   | João     | joao@email.com       | 30    |
| 2   | Maria    | maria@email.com      | 25    |
| 3   | Carlos   | carlos@email.com     | 35    |

Nesta tabela, "Clientes" é o nome da relação e as colunas representam atributos dos clientes, como nome, email e idade.

## Chaves Primárias e Chaves Estrangeiras
Cada tabela no modelo relacional deve ter uma coluna que sirva como chave primária. A chave primária é um atributo ou conjunto de atributos cujos valores são únicos para cada linha da tabela. Ela é usada para identificar exclusivamente cada registro na tabela.

Por exemplo, na tabela "Clientes" acima, a coluna "ID" é a chave primária.

Além disso, as tabelas podem ter chaves estrangeiras que estabelecem relações entre as tabelas. Uma chave estrangeira é uma coluna que faz referência a uma chave primária em outra tabela, permitindo a criação de relações entre as entidades representadas pelas tabelas.

## Normalização
A normalização é o processo de organizar os dados em tabelas de modo a reduzir a redundância e melhorar a integridade dos dados. O objetivo é evitar problemas como a repetição de informações e as atualizações inconsistentes. A normalização envolve a divisão de tabelas em tabelas menores e a criação de relações usando chaves estrangeiras.

## Consultas SQL
Para interagir com um banco de dados relacional, você utiliza a linguagem SQL (Structured Query Language) para realizar operações como inserção, atualização, exclusão e seleção de dados. A consulta SELECT, que vimos nas partes anteriores, é usada para recuperar dados de tabelas com base em critérios específicos.

## Conclusão
O modelo relacional de dados é uma estrutura lógica eficaz para armazenar, organizar e recuperar dados. Ele fornece uma maneira consistente de representar informações em bancos de dados, facilitando o desenvolvimento de sistemas de informação. Compreender os conceitos básicos do modelo relacional é fundamental para trabalhar com bancos de dados relacionais e sistemas de gerenciamento de bancos de dados (SGBDs).