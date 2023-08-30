# 04) TIPOS DE CHAVES
As chaves primárias e chaves estrangeiras são conceitos fundamentais no modelo relacional de banco de dados. Essas chaves desempenham um papel importante na organização e integridade dos dados. Vamos entender cada conceito separadamente:

**Chave Primária (Primary Key):**

Uma chave primária é um atributo (ou um conjunto de atributos) em uma tabela que identifica de forma exclusiva cada registro (linha) nessa tabela. Cada tabela em um banco de dados relacional deve ter uma chave primária definida, pois ela garante a unicidade dos dados e ajuda a identificar e acessar registros específicos de maneira eficiente.

Principais características da chave primária:
- Deve conter valores exclusivos para cada registro na tabela.
- Não pode conter valores nulos, pois precisa identificar de forma única cada registro.
- Uma tabela pode ter apenas uma chave primária.

Exemplo:
```sql
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT
);
```

No exemplo acima, a coluna "id" é a chave primária da tabela "alunos", e ela garante que cada aluno tenha um identificador único.

**Chave Estrangeira (Foreign Key):**

Uma chave estrangeira é um atributo (ou um conjunto de atributos) em uma tabela que estabelece uma relação entre os dados dessa tabela e os dados de outra tabela. A chave estrangeira referencia a chave primária de outra tabela, permitindo a criação de relacionamentos entre as tabelas.

Principais características da chave estrangeira:
- Ela estabelece uma associação entre as tabelas, criando relações entre os registros.
- Permite manter a integridade referencial, garantindo que os dados sejam consistentes entre as tabelas relacionadas.
- Pode conter valores nulos, indicando que não há uma correspondência com a chave primária da outra tabela.

Exemplo:
```sql
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    data_pedido DATE,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
```

No exemplo acima, a coluna "cliente_id" na tabela "pedidos" é uma chave estrangeira que referencia a chave primária "id" na tabela "clientes". Isso estabelece uma relação entre os pedidos e os clientes, permitindo que um pedido esteja associado a um cliente específico.

As chaves primárias e chaves estrangeiras são fundamentais para a modelagem de dados em um banco de dados relacional. Elas permitem a criação de estruturas organizadas e consistentes, além de facilitarem a consulta e manipulação dos dados de forma eficiente. O uso adequado dessas chaves é essencial para garantir a integridade e a precisão dos dados em um sistema de banco de dados.
