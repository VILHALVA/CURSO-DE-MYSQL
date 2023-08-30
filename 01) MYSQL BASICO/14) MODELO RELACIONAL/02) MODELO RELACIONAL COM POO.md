# 02) MODELO RELACIONAL COM POO
A relação entre o modelo relacional e a orientação a objetos tem sido uma questão importante na área de banco de dados e desenvolvimento de software. Ambos são paradigmas amplamente utilizados, mas têm abordagens diferentes para representar e organizar os dados. Vamos explorar como esses dois modelos se relacionam:

1. Estrutura de Dados:
   - Modelo Relacional: O modelo relacional organiza os dados em tabelas bidimensionais (relações), onde cada tabela representa uma entidade do mundo real e as colunas representam os atributos dessa entidade. As relações são conectadas por meio de chaves primárias e chaves estrangeiras para estabelecer associações entre entidades.
   - Orientação a Objetos: A orientação a objetos organiza os dados em classes, que são modelos abstratos que definem os atributos e comportamentos de objetos. Os objetos são instâncias das classes e podem se relacionar uns com os outros através de referências de objetos.

2. Chave Primária e Chave Estrangeira:
   - Modelo Relacional: O modelo relacional utiliza chaves primárias para identificar exclusivamente cada registro em uma tabela e chaves estrangeiras para estabelecer relações entre tabelas.
   - Orientação a Objetos: Na orientação a objetos, não existem chaves primárias ou chaves estrangeiras. Em vez disso, os objetos são conectados por meio de referências de objetos que permitem que um objeto faça referência a outro.

3. Normalização e Herança:
   - Modelo Relacional: A normalização é aplicada ao modelo relacional para reduzir redundâncias e melhorar a eficiência das operações de consulta e manipulação de dados. Isso envolve decompor tabelas grandes em tabelas menores, seguindo regras específicas.
   - Orientação a Objetos: A herança é uma característica fundamental da orientação a objetos, permitindo que uma classe herde atributos e comportamentos de outra classe. Isso permite a criação de hierarquias de classes e a reutilização de código.

4. Mapeamento Objeto-Relacional (ORM):
   - Devido às diferenças entre o modelo relacional e a orientação a objetos, um desafio comum é mapear os dados entre esses dois paradigmas. É aqui que entra o conceito de Mapeamento Objeto-Relacional (ORM). As ORM são frameworks que facilitam o mapeamento dos objetos em uma aplicação para as tabelas do banco de dados e vice-versa. Isso ajuda a simplificar o processo de persistência de dados e interação com o banco de dados.

Embora os modelos relacional e orientação a objetos sejam diferentes em sua abordagem para organizar e representar dados, ambos têm seus pontos fortes e são amplamente utilizados na indústria de software. A combinação de ambos os paradigmas através do Mapeamento Objeto-Relacional permite que os desenvolvedores criem aplicações complexas que aproveitem o poder e a eficiência de ambos os modelos.
