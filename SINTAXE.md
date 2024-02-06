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

## FAZENDO O BACKUP DO BANCO DE DADOS:
###  1) USANDO O TERMINAL:
#### Exportar/Fazer backup do banco de dados:
Passo 1: Abra o terminal ou prompt de comando e navegue até o diretório onde você deseja salvar o arquivo de backup.

Passo 2: Use o comando `mysqldump` seguido das opções `-u` para o nome de usuário, `-p` para solicitar a senha e o nome do banco de dados que você deseja exportar. Em seguida, redirecione a saída para um arquivo de backup.

Exemplo:
```bash
mysqldump -u seu_usuario -p seu_banco_de_dados > backup.sql
```
Você será solicitado a digitar a senha do usuário.

Passo 3: Aguarde até que o processo seja concluído. O arquivo `backup.sql` será gerado no diretório especificado.

#### Importar o banco de dados:
Passo 1: Certifique-se de ter o arquivo de backup (gerado na seção anterior) disponível em seu sistema.

Passo 2: Crie um banco de dados vazio no qual você importará os dados.

Exemplo:
```sql
CREATE DATABASE seu_banco_de_dados;
```

Passo 3: Use o comando `mysql` seguido das opções `-u` para o nome de usuário, `-p` para solicitar a senha e o nome do banco de dados no qual você deseja importar os dados. Em seguida, redirecione a entrada para o arquivo de backup.

Exemplo:
```bash
mysql -u seu_usuario -p seu_banco_de_dados < backup.sql
```
Você será solicitado a digitar a senha do usuário.

Passo 4: Aguarde até que o processo seja concluído. Os dados serão importados para o banco de dados especificado.

Lembre-se de substituir `seu_usuario` pelo nome de usuário correto e `seu_banco_de_dados` pelo nome do banco de dados apropriado.

Com esse tutorial, você poderá exportar e importar bancos de dados MySQL usando o utilitário `mysqldump` para backup e o comando `mysql` para importação. Isso permite que você proteja seus dados e restaure-os facilmente quando necessário.

### 2) USANDO O MYSQL WORKBENCH:
#### Exportar/Fazer backup do banco de dados:
Passo 1: Abra o MySQL Workbench e faça login em sua conexão.

Passo 2: No painel Navigator, clique com o botão direito do mouse no banco de dados que deseja exportar e selecione a opção "Export Data".

Passo 3: Na janela "Data Export", selecione as tabelas que deseja exportar ou deixe todas selecionadas para exportar o banco de dados completo.

Passo 4: Escolha o formato do arquivo de backup na seção "Output". Por exemplo, você pode selecionar "SQL" para obter um arquivo SQL contendo instruções SQL para recriar o banco de dados.

Passo 5: Escolha o diretório de destino para salvar o arquivo de backup.

Passo 6: Clique no botão "Start Export" e aguarde até que o processo de exportação seja concluído. O arquivo de backup será salvo no diretório especificado.

#### Importar o banco de dados:
Passo 1: Abra o MySQL Workbench e faça login em sua conexão.

Passo 2: No painel Navigator, clique com o botão direito do mouse na conexão e selecione a opção "Create Schema".

Passo 3: Digite o nome do banco de dados que você deseja criar e clique em "Apply".

Passo 4: No painel Navigator, clique com o botão direito do mouse no banco de dados recém-criado e selecione a opção "Table Data Import Wizard".

Passo 5: Na janela "Table Data Import Wizard", selecione o arquivo de backup que deseja importar.

Passo 6: Escolha as opções de importação, como "Create new table" para criar uma nova tabela ou "Append data to existing table" para adicionar os dados a uma tabela existente.

Passo 7: Siga as etapas do assistente e revise as configurações de importação.

Passo 8: Clique em "Start Import" e aguarde até que o processo de importação seja concluído. Os dados serão importados para o banco de dados especificado.

Este tutorial mostra como exportar, fazer backup e importar um banco de dados usando o MySQL Workbench, uma ferramenta gráfica fornecida pelo MySQL. Isso permite que você realize essas tarefas de forma fácil e visual, sem a necessidade de usar o terminal.