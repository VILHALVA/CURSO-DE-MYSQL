# SINTAXE
## TIPOS PRIMITIVOS:
O MySQL é um sistema de gerenciamento de banco de dados relacional (RDBMS) amplamente utilizado. Ele suporta vários tipos de dados primitivos que podem ser usados para definir colunas em tabelas. Abaixo estão alguns dos tipos de dados primitivos mais comuns no MySQL:
* **1. INTEGER ou INT:** Representa números inteiros, positivos ou negativos, com tamanho fixo. Pode variar em tamanho, como INT(11), INT(10), etc.
* **2. FLOAT:** Representa números de ponto flutuante com precisão simples. Pode armazenar números decimais, mas a precisão pode ser limitada.
* **3. DOUBLE:** Representa números de ponto flutuante com precisão dupla. É capaz de armazenar números decimais com maior precisão do que o tipo FLOAT.
* **4. DECIMAL ou NUMERIC:** É usado para armazenar números decimais de alta precisão. É uma opção adequada para valores monetários e cálculos que exigem alta precisão decimal.
* **5. CHAR:** Armazena uma sequência de caracteres com tamanho fixo. O tamanho é especificado entre parênteses, como CHAR(10). O espaço não utilizado é preenchido com espaços em branco.
* **6. VARCHAR:** Armazena uma sequência de caracteres com tamanho variável. O tamanho máximo é especificado entre parênteses, como VARCHAR(255). Ele ocupa apenas o espaço necessário para armazenar os dados.
* **7. TEXT:** Armazena grandes volumes de texto, como uma sequência longa de caracteres. Pode armazenar até 65.535 caracteres.
* **8. DATE:** Armazena valores de data no formato 'AAAA-MM-DD'. Pode ser usado para armazenar datas sem informações de hora.
* **9. TIME:** Armazena valores de tempo no formato 'HH:MM:SS'. Pode ser usado para armazenar valores de hora sem informações de data.
* **10. TIMESTAMP:** Armazena um valor de data e hora no formato 'AAAA-MM-DD HH:MM:SS'. Geralmente usado para registrar a data e hora em que um registro foi inserido ou atualizado.

Esses são apenas alguns dos tipos de dados primitivos suportados pelo MySQL. Existem outros tipos, como ENUM, SET, BLOB, entre outros, que oferecem funcionalidades adicionais e opções de armazenamento.

Aqui está um exemplo de como você pode criar uma tabela no MySQL usando os tipos de dados mencionados anteriormente, juntamente com algumas opções adicionais:

```sql
CREATE TABLE minha_tabela (
    id INT(11) NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    altura FLOAT,
    salario DECIMAL(10,2),
    descricao TEXT,
    data_nascimento DATE,
    hora_atual TIME,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);
```

Neste exemplo, criamos uma tabela chamada "minha_tabela" com as seguintes colunas:

- "id": Um número inteiro único que é autoincrementado.
- "nome": Uma sequência de caracteres com tamanho máximo de 255.
- "idade": Um número inteiro que representa a idade.
- "altura": Um número de ponto flutuante para representar a altura.
- "salario": Um número decimal com uma parte inteira de tamanho máximo de 10 dígitos e 2 casas decimais.
- "descricao": Uma coluna de texto para armazenar uma descrição.
- "data_nascimento": Uma data.
- "hora_atual": Uma hora específica.
- "data_atualizacao": Um registro automático da data e hora da última atualização.

A coluna "id" é definida como chave primária usando a cláusula PRIMARY KEY, garantindo que cada registro tenha um valor exclusivo para essa coluna.

Observe que essas definições são apenas um exemplo e podem ser ajustadas de acordo com as necessidades específicas do seu projeto.

## COMANDOS MAIS USADOS:
### NO BANCO DE DADOS:
Aqui estão alguns dos principais comandos do MySQL para criação, seleção e exclusão de bancos de dados:

* **1. CREATE DATABASE:** O comando CREATE DATABASE é usado para criar um novo banco de dados no servidor.
Exemplo:
```sql
CREATE DATABASE meu_banco_de_dados;
```

* **2. USE:** O comando USE é usado para selecionar um banco de dados específico no qual você deseja trabalhar.
Exemplo:
```sql
USE meu_banco_de_dados;
```

* **3. SHOW DATABASES:** O comando SHOW DATABASES é usado para exibir uma lista de todos os bancos de dados disponíveis no servidor.
Exemplo:
```sql
SHOW DATABASES;
```

* **4. DROP DATABASE:** O comando DROP DATABASE é usado para excluir um banco de dados existente do servidor. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura do banco de dados.

Exemplo:
```sql
DROP DATABASE meu_banco_de_dados;
```
Esses são alguns dos comandos básicos do MySQL relacionados à criação, seleção e exclusão de bancos de dados. Lembre-se de que esses comandos são específicos do MySQL e podem variar um pouco em outros sistemas de gerenciamento de banco de dados.

### NAS TABELAS:
Aqui estão alguns dos principais comandos do MySQL para criação, alteração e exclusão de tabelas:

* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Você precisa especificar o nome da tabela e as colunas que ela terá, juntamente com seus tipos de dados e outras opções.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id INT,
    nome VARCHAR(255),
    email VARCHAR(255)
);
```

* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Você pode adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e muito mais.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN idade INT,
MODIFY COLUMN nome VARCHAR(100),
DROP COLUMN email;
```

* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados. Tenha cuidado ao usar esse comando, pois ele excluirá permanentemente todos os dados e estrutura da tabela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```

* **4. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```

* **5. RENAME TABLE:** O comando RENAME TABLE é usado para renomear uma tabela existente no banco de dados.
Exemplo:
```sql
RENAME TABLE minha_tabela TO nova_tabela;
```

* **6. SHOW TABLES:** O comando SHOW TABLES é usado para exibir uma lista de todas as tabelas existentes no banco de dados.
Exemplo:
```sql
SHOW TABLES;
```

* **7. DESC ou DESCRIBE:** O comando DESC ou DESCRIBE é usado para exibir a estrutura de uma tabela, ou seja, as colunas e seus tipos de dados.
Exemplo:
```sql
DESC minha_tabela;
```
Esses são apenas alguns dos principais comandos do MySQL relacionados à criação, alteração e exclusão de tabelas. Existem muitos outros comandos e opções disponíveis para manipular e gerenciar bancos de dados no MySQL.

## CATEGORIAS DE COMANDOS:
### DDL:
Os comandos DDL (Data Definition Language) são um conjunto de comandos utilizados no MySQL para definir e gerenciar a estrutura dos objetos de um banco de dados, como tabelas, índices e restrições. Abaixo estão alguns dos principais comandos DDL do MySQL:
* **1. CREATE TABLE:** O comando CREATE TABLE é usado para criar uma nova tabela no banco de dados. Ele define o nome da tabela, suas colunas, tipos de dados, restrições e índices.
Exemplo:
```sql
CREATE TABLE minha_tabela (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT
);
```
* **2. ALTER TABLE:** O comando ALTER TABLE é usado para modificar uma tabela existente. Pode ser usado para adicionar, modificar ou excluir colunas, alterar tipos de dados, adicionar restrições e índices, entre outras operações.
Exemplo:
```sql
ALTER TABLE minha_tabela
ADD COLUMN sobrenome VARCHAR(50),
MODIFY COLUMN idade INT NOT NULL,
DROP COLUMN idade;
```
* **3. DROP TABLE:** O comando DROP TABLE é usado para excluir uma tabela do banco de dados juntamente com todos os dados e estrutura associados a ela.
Exemplo:
```sql
DROP TABLE minha_tabela;
```
* **4. CREATE INDEX:** O comando CREATE INDEX é usado para criar um índice em uma ou mais colunas de uma tabela. Isso melhora a velocidade de busca e classificação dos dados.
Exemplo:
```sql
CREATE INDEX idx_nome ON minha_tabela (nome);
```
* **5. DROP INDEX:** O comando DROP INDEX é usado para excluir um índice existente de uma tabela.
Exemplo:
```sql
DROP INDEX idx_nome ON minha_tabela;
```
* **6. TRUNCATE TABLE:** O comando TRUNCATE TABLE é usado para remover todos os dados de uma tabela, mantendo sua estrutura intacta. É mais rápido do que excluir todos os registros individualmente.
Exemplo:
```sql
TRUNCATE TABLE minha_tabela;
```
Esses são apenas alguns dos comandos DDL mais comumente usados no MySQL. Eles permitem criar, modificar e excluir objetos do banco de dados, bem como definir índices para otimizar o desempenho das consultas.

### DML:
Os comandos DML (Data Manipulation Language) são utilizados para manipular os dados dentro das tabelas de um banco de dados. Eles permitem a inserção, atualização, seleção e exclusão de registros. Abaixo estão alguns dos principais comandos DML no MySQL:
* **1. INSERT INTO:** O comando INSERT INTO é usado para inserir novos registros em uma tabela.
Exemplo:
```sql
INSERT INTO minha_tabela (coluna1, coluna2, coluna3)
VALUES (valor1, valor2, valor3);
```
* **2. UPDATE:** O comando UPDATE é usado para modificar os valores de um ou mais registros em uma tabela.
Exemplo:
```sql
UPDATE minha_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2
WHERE condição;
```
* **3. DELETE FROM:** O comando DELETE FROM é usado para excluir registros de uma tabela.
Exemplo:
```sql
DELETE FROM minha_tabela
WHERE condição;
```
* **4. SELECT:** O comando SELECT é usado para recuperar dados de uma ou mais tabelas. Ele permite a seleção de colunas específicas, a aplicação de filtros e a ordenação dos resultados.
Exemplo:
```sql
SELECT coluna1, coluna2
FROM minha_tabela
WHERE condição
ORDER BY coluna1 ASC;
```
* **5. JOIN:** O comando JOIN é usado para combinar dados de duas ou mais tabelas com base em uma condição de junção. Isso permite a recuperação de dados relacionados armazenados em diferentes tabelas.
Exemplo:
```sql
SELECT coluna1, coluna2
FROM tabela1
JOIN tabela2 ON tabela1.coluna_id = tabela2.coluna_id;
```
* **6. INSET INTO ... SELECT:** O comando INSERT INTO ... SELECT permite inserir dados em uma tabela a partir de uma consulta SELECT.
Exemplo:
```sql
INSERT INTO nova_tabela (coluna1, coluna2)
SELECT coluna1, coluna2
FROM minha_tabela
WHERE condição;
```
Esses são alguns dos comandos DML mais utilizados no MySQL. Eles fornecem as principais operações para manipulação de dados em um banco de dados relacional.

### DQL:
DQL (Data Query Language) é uma subcategoria da SQL (Structured Query Language) que lida principalmente com a consulta de dados em um banco de dados. Os comandos DQL incluem principalmente o comando `SELECT`. Vou fornecer alguns exemplos de comandos DQL no MySQL, juntamente com explicações.

* **1. SELEÇÃO SIMPLES:**

```sql
SELECT * FROM funcionarios;
```
**Explicação:** Este comando seleciona todas as colunas de todas as linhas da tabela `funcionarios`.

* **2. SELEÇÃO DE COLUNAS ESPECÍFICAS:**
```sql
SELECT nome, salario FROM funcionarios;
```
**Explicação:** Este comando seleciona apenas as colunas `nome` e `salario` da tabela `funcionarios`.

* **3. USO DE `WHERE` PARA FILTRAGEM:**
```sql
SELECT nome, salario FROM funcionarios WHERE salario > 3000;
```
**Explicação:** Este comando seleciona os nomes e salários dos funcionários cujo salário é maior que 3000.

* **4. ORDENAÇÃO COM `ORDER BY`:**
```sql
SELECT nome, salario FROM funcionarios ORDER BY salario DESC;
```
**Explicação:** Este comando seleciona os nomes e salários dos funcionários e ordena os resultados pelo salário em ordem decrescente.

* **5. LIMITAR O NÚMERO DE RESULTADOS COM `LIMIT`:**
```sql
SELECT nome, salario FROM funcionarios ORDER BY salario DESC LIMIT 5;
```
**Explicação:** Este comando seleciona os nomes e salários dos funcionários, ordena os resultados pelo salário em ordem decrescente e limita os resultados aos 5 primeiros registros.

* **6. SELEÇÃO COM JUNÇÃO (`JOIN`):**
```sql
SELECT funcionarios.nome, departamentos.nome 
FROM funcionarios 
JOIN departamentos ON funcionarios.departamento_id = departamentos.id;
```
**Explicação:** Este comando seleciona os nomes dos funcionários e os nomes dos departamentos associando as tabelas `funcionarios` e `departamentos` com base na correspondência entre `departamento_id` em `funcionarios` e `id` em `departamentos`.

* **7. USO DE FUNÇÕES DE AGREGAÇÃO:**
```sql
SELECT departamento_id, AVG(salario) as salario_medio 
FROM funcionarios 
GROUP BY departamento_id;
```
**Explicação:** Este comando calcula o salário médio dos funcionários para cada departamento, agrupando os resultados pelo `departamento_id`.

* **8. FILTRAGEM COM `HAVING` APÓS AGREGAÇÃO:**
```sql
SELECT departamento_id, AVG(salario) as salario_medio 
FROM funcionarios 
GROUP BY departamento_id 
HAVING AVG(salario) > 3000;
```
**Explicação:** Este comando é semelhante ao anterior, mas adiciona uma cláusula `HAVING` para filtrar os grupos e mostrar apenas aqueles departamentos cuja média salarial é maior que 3000.

* **9. SUBCONSULTAS:**
```sql
SELECT nome, salario 
FROM funcionarios 
WHERE salario > (SELECT AVG(salario) FROM funcionarios);
```
**Explicação:** Este comando seleciona os nomes e salários dos funcionários cujo salário é maior que a média salarial de todos os funcionários.

* **10. USO DE ALIASES:**
```sql
SELECT f.nome AS funcionario, d.nome AS departamento 
FROM funcionarios f 
JOIN departamentos d ON f.departamento_id = d.id;
```
**Explicação:** Este comando usa aliases (`f` para `funcionarios` e `d` para `departamentos`) para tornar a consulta mais legível, selecionando os nomes dos funcionários e departamentos.

Esses exemplos cobrem uma ampla gama de operações de consulta de dados que você pode realizar usando DQL no MySQL. Com essas consultas, você pode extrair, filtrar, ordenar e agrupar dados de maneira eficaz conforme necessário.

## TABELA:
Aqui está uma tabela mostrando os principais tipos de comandos no MySQL, organizados por categorias de SQL: DQL, DML, DDL, DCL e TCL:

| Categoria | Tipo de Comando | Descrição | Exemplo |
|-----------|-----------------|-----------|---------|
| **DQL (Data Query Language)** | `SELECT` | Consulta dados de uma tabela ou mais tabelas | `SELECT * FROM funcionarios;` |
| **DML (Data Manipulation Language)** | `INSERT` | Insere novos dados em uma tabela | `INSERT INTO funcionarios (nome, salario) VALUES ('João', 3000);` |
| | `UPDATE` | Atualiza dados existentes em uma tabela | `UPDATE funcionarios SET salario = 3500 WHERE nome = 'João';` |
| | `DELETE` | Remove dados de uma tabela | `DELETE FROM funcionarios WHERE nome = 'João';` |
| **DDL (Data Definition Language)** | `CREATE TABLE` | Cria uma nova tabela no banco de dados | `CREATE TABLE funcionarios (id INT AUTO_INCREMENT, nome VARCHAR(100), salario DECIMAL(10, 2), PRIMARY KEY(id));` |
| | `ALTER TABLE` | Modifica a estrutura de uma tabela existente | `ALTER TABLE funcionarios ADD COLUMN departamento_id INT;` |
| | `DROP TABLE` | Remove uma tabela do banco de dados | `DROP TABLE funcionarios;` |
| | `CREATE DATABASE` | Cria um novo banco de dados | `CREATE DATABASE empresa;` |
| | `DROP DATABASE` | Remove um banco de dados | `DROP DATABASE empresa;` |
| **DCL (Data Control Language)** | `GRANT` | Concede privilégios a usuários ou roles | `GRANT SELECT, INSERT ON empresa.* TO 'usuario'@'localhost';` |
| | `REVOKE` | Revoga privilégios de usuários ou roles | `REVOKE INSERT ON empresa.* FROM 'usuario'@'localhost';` |
| **TCL (Transaction Control Language)** | `BEGIN` / `START TRANSACTION` | Inicia uma transação | `START TRANSACTION;` |
| | `COMMIT` | Confirma uma transação, tornando as alterações permanentes | `COMMIT;` |
| | `ROLLBACK` | Desfaz uma transação, revertendo as alterações | `ROLLBACK;` |
| | `SAVEPOINT` | Define um ponto dentro de uma transação para possibilitar rollback parcial | `SAVEPOINT ponto1;` |
| | `RELEASE SAVEPOINT` | Remove um savepoint definido anteriormente | `RELEASE SAVEPOINT ponto1;` |

### EXPLICAÇÕES:
- **DQL (Data Query Language):** Inclui o comando `SELECT`, utilizado para consultar dados de uma tabela ou múltiplas tabelas.
- **DML (Data Manipulation Language):** Inclui comandos para manipulação de dados, como `INSERT`, `UPDATE` e `DELETE`.
- **DDL (Data Definition Language):** Inclui comandos que definem a estrutura do banco de dados, como `CREATE TABLE`, `ALTER TABLE` e `DROP TABLE`.
- **DCL (Data Control Language):** Inclui comandos para controle de acesso ao banco de dados, como `GRANT` e `REVOKE`.
- **TCL (Transaction Control Language):** Inclui comandos para controle de transações, como `COMMIT`, `ROLLBACK`, `SAVEPOINT` e `RELEASE SAVEPOINT`.



