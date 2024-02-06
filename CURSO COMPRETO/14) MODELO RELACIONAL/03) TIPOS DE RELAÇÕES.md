# 03) TIPOS DE RELAÇÕES
Vamos falar sobre os diferentes tipos de relações que podem existir entre as tabelas em um banco de dados, como as relações um para um, um para muitos e muitos para muitos:

1. Relação Um para Um (One-to-One):
   Nessa relação, um registro de uma tabela está associado a apenas um registro em outra tabela e vice-versa. É como um casamento único entre os registros de ambas as tabelas.

   Exemplo:
   Tabela "Alunos":
   | id_aluno | nome   | idade |
   |---------|--------|-------|
   | 1       | João   | 25    |
   | 2       | Maria  | 22    |

   Tabela "Enderecos":
   | id_endereco | rua       | cidade   |
   |-------------|-----------|----------|
   | 1           | Rua A     | São Paulo|
   | 2           | Rua B     | Rio de Janeiro|

   Nesse exemplo, cada aluno tem um único endereço, e cada endereço pertence apenas a um aluno.

2. Relação Um para Muitos (One-to-Many):
   Nessa relação, um registro de uma tabela está associado a vários registros em outra tabela, mas cada registro na segunda tabela está associado a apenas um registro na primeira tabela. É como um único remetente enviando várias cartas para destinatários diferentes.

   Exemplo:
   Tabela "Clientes":
   | id_cliente | nome     | idade |
   |------------|----------|-------|
   | 1          | Ana      | 30    |
   | 2          | Pedro    | 28    |

   Tabela "Pedidos":
   | id_pedido | data      | valor | id_cliente |
   |-----------|-----------|-------|------------|
   | 1         | 2023-06-15| 100   | 1          |
   | 2         | 2023-06-16| 50    | 1          |
   | 3         | 2023-06-16| 80    | 2          |

   Nesse exemplo, cada cliente pode fazer vários pedidos, mas cada pedido está associado a apenas um cliente.

3. Relação Muitos para Muitos (Many-to-Many):
   Nessa relação, vários registros de uma tabela estão associados a vários registros em outra tabela. Para representar essa relação, é necessária uma tabela de junção, que conecta os registros das duas tabelas.

   Exemplo:
   Tabela "Alunos":
   | id_aluno | nome   | idade |
   |---------|--------|-------|
   | 1       | João   | 25    |
   | 2       | Maria  | 22    |

   Tabela "Cursos":
   | id_curso | nome_curso    |
   |----------|---------------|
   | 1        | Matemática    |
   | 2        | História      |

   Tabela "Alunos_Cursos" (tabela de junção):
   | id_aluno | id_curso |
   |----------|----------|
   | 1        | 1        |
   | 1        | 2        |
   | 2        | 1        |

   Nesse exemplo, cada aluno pode estar matriculado em vários cursos e cada curso pode ter vários alunos matriculados.

Esses são alguns dos tipos de relações mais comuns entre tabelas em um banco de dados. Cada tipo de relação é utilizado dependendo da natureza dos dados e da estrutura do banco de dados. O entendimento dessas relações é essencial para projetar e organizar adequadamente o esquema do banco de dados e garantir a integridade e a eficiência das operações.
