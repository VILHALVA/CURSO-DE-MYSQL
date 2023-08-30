# [01) MYSQL BÁSICO](https://youtube.com/playlist?list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r)
👨‍⚖️CURSO BÁSICO DE BANCO DE DADOS MYSQL.

[![GitHub Repo stars](https://img.shields.io/badge/VILHALVA-GITHUB-03A9F4?logo=github)](https://github.com/VILHALVA) 
[![GitHub Repo stars](https://img.shields.io/badge/CURSO%20DE-MYSQL-03A9F4?logo=youtube)](https://youtube.com/playlist?list=PLHz_AreHm4dkBs-795Dsgvau_ekxg8g1r) <br>

<img src="https://www.paulligocki.com/wp-content/uploads/2022/03/MySQLLogo.png" align="center" width="280"> <br>

## 🤷‍♂️REQUESITOS:
* 💻[INSTALAR O MYSQL WORKBENCH](https://dev.mysql.com/downloads/file/?id=517975)
* 💻[INSTALAR O WAMPSERVER](https://www.wampserver.com/)

![](https://i.imgur.com/waxVImv.png)

# 💝COMANDOS:
## 💚DDL:
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

## ❤DML:
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

