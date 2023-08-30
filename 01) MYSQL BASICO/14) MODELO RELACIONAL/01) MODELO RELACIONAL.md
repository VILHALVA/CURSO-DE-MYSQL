# 01) MODELO RELACIONAL
O Modelo Relacional é um modelo de dados amplamente utilizado em bancos de dados relacionais. Ele foi proposto por Edgar F. Codd em 1970 e é baseado no conceito de relações matemáticas. Nesse modelo, as informações são organizadas em tabelas bidimensionais chamadas de relações, em que cada tabela representa uma entidade específica do mundo real e suas associações com outras entidades.

Principais conceitos do Modelo Relacional:

* **1. Tabela (Relação):** Uma tabela é a representação de uma entidade ou conceito específico em um banco de dados. Cada tabela é composta por linhas (tuplas) e colunas (atributos). Cada linha representa uma instância da entidade, e cada coluna representa um atributo ou característica dessa entidade.

* **2. Chave Primária (Primary Key):** Cada tabela possui uma ou mais colunas que atuam como chave primária, identificando exclusivamente cada linha na tabela. Essa chave é usada para garantir a integridade dos dados e possibilitar a busca rápida e eficiente de registros.

* **3. Chave Estrangeira (Foreign Key):** Uma chave estrangeira é uma coluna (ou conjunto de colunas) em uma tabela que faz referência à chave primária de outra tabela. Ela estabelece relações entre as tabelas, permitindo a construção de associações e integridade referencial.

* **4. Normalização:** A normalização é um processo pelo qual se organizam as tabelas em um banco de dados para reduzir redundâncias e melhorar a eficiência das operações de consulta e manipulação de dados. Ela é realizada através da decomposição de tabelas grandes em tabelas menores, seguindo regras específicas.

* **5. Integridade Referencial:** A integridade referencial é a garantia de que os dados em um banco de dados são consistentes e precisos, com base em suas relações entre as tabelas. Isso é alcançado usando chaves estrangeiras para estabelecer associações entre as entidades.

* **6. Operações CRUD:** O Modelo Relacional suporta as quatro principais operações de manipulação de dados: Create (inserção), Read (consulta), Update (atualização) e Delete (exclusão). Essas operações permitem interagir com os dados armazenados nas tabelas.

O Modelo Relacional é amplamente utilizado devido à sua simplicidade, flexibilidade e eficiência. Ele oferece uma estrutura organizada e padronizada para o armazenamento e recuperação de dados, tornando-o uma escolha popular para uma ampla variedade de aplicativos, desde pequenos sistemas de gerenciamento até grandes sistemas corporativos.
