# MANUAL DO MYSQL
## COMO INSTALAR O MYSQL?
Para instalar o MySQL, você pode seguir estes passos básicos:

1. **Baixar o instalador**:
   - Visite o site oficial do MySQL para baixar o instalador. Você pode encontrar o instalador em [https://dev.mysql.com/downloads/](https://dev.mysql.com/downloads/).
   - Na página de downloads, escolha a versão do MySQL que deseja instalar. Existem diferentes versões disponíveis, incluindo o MySQL Community Server (versão gratuita) e o MySQL Enterprise Edition (versão comercial com recursos adicionais).
   - Selecione o sistema operacional adequado (Windows, Linux, macOS) e clique no botão de download correspondente para baixar o instalador.

2. **Executar o instalador**:
   - Após o download ser concluído, execute o arquivo de instalação baixado.
   - Dependendo do seu sistema operacional, pode ser necessário fornecer permissões de administrador para executar o instalador.

3. **Configurar o MySQL**:
   - Durante o processo de instalação, você será guiado por uma série de etapas para configurar o MySQL.
   - Você pode optar por instalar apenas o servidor MySQL ou incluir outros componentes, como o MySQL Workbench (uma ferramenta de modelagem e administração visual) e as MySQL Shell utilities.
   - Durante a instalação, você será solicitado a configurar uma senha para o usuário root do MySQL. Certifique-se de escolher uma senha segura e lembre-se dela, pois será necessária para acessar o MySQL posteriormente.

4. **Concluir a instalação**:
   - Após configurar todas as opções desejadas, conclua o processo de instalação. Isso pode levar alguns minutos, dependendo da configuração do seu sistema.

5. **Iniciar o serviço MySQL**:
   - Após a instalação ser concluída, o serviço MySQL deve ser iniciado automaticamente.
   - Você pode verificar se o serviço MySQL está em execução acessando o painel de controle de serviços do seu sistema operacional (por exemplo, no Windows, você pode abrir o "Gerenciador de Serviços" e verificar se o serviço "MySQL" está em execução).

6. **Testar a instalação**:
   - Para testar se o MySQL foi instalado corretamente, você pode abrir um terminal ou prompt de comando e digitar o seguinte comando para acessar o MySQL Shell:

     ```
     mysql -u root -p
     ```

   - Você será solicitado a digitar a senha que configurou durante a instalação. Se tudo estiver configurado corretamente, você será conectado ao MySQL Shell.

Esses são os passos básicos para instalar o MySQL no seu sistema. Lembre-se de consultar a documentação oficial do MySQL para obter informações mais detalhadas sobre o processo de instalação e configuração, especialmente se você encontrar problemas durante a instalação.

## ADICIONANDO MYSQL.EXE AO PATH:
1. **Encontre o diretório do MySQL**:
   - Primeiro, você precisa localizar o diretório onde o executável `mysql.exe` está instalado. Por padrão, o MySQL é instalado no diretório `bin` dentro do diretório de instalação do MySQL. Por exemplo, `C:\Program Files\MySQL\MySQL Server 8.0\bin`.

2. **Copie o caminho do diretório**:
   - Após localizar o diretório `bin`, copie o caminho completo do diretório. Você pode fazer isso clicando com o botão direito do mouse no diretório e selecionando "Propriedades". Na janela de propriedades, você verá o caminho completo que pode ser copiado.

3. **Abrir Configurações do Sistema (System Properties)**:
   - Pressione `Win + R` para abrir a caixa de diálogo "Executar".
   - Digite `sysdm.cpl` e pressione Enter. Isso abrirá as Propriedades do Sistema.

4. **Acessar as Variáveis de Ambiente (Environment Variables)**:
   - Na janela Propriedades do Sistema, vá para a guia "Avançado" e clique no botão "Variáveis de Ambiente".

5. **Editar a variável PATH**:
   - Na seção "Variáveis do Sistema" (ou "Variáveis de Usuário", se você preferir instalar apenas para o usuário atual), encontre a variável chamada "Path" e clique em "Editar".

6. **Adicionar o caminho do MySQL ao PATH**:
   - Na janela de Edição de Variável de Ambiente, clique em "Novo" e cole o caminho do diretório `bin` que você copiou anteriormente.
   - Clique em "OK" para fechar todas as janelas e salvar as alterações.

7. **Verificar a configuração**:
   - Abra um novo prompt de comando e digite `mysql`. Se tudo estiver configurado corretamente, você deverá ver a saída do comando `mysql`, indicando que o `mysql.exe` foi encontrado e está disponível no PATH.

Agora você pode usar o comando `mysql` em qualquer lugar no prompt de comando sem precisar especificar o caminho completo para o executável. Certifique-se de ter cuidado ao modificar as variáveis de ambiente, pois alterações incorretas podem afetar o funcionamento do sistema.

## INICIANDO SERVIDOR MYSQL:
1. **No Windows**:

   - Se você estiver usando XAMPP, WampServer ou uma instalação independente do MySQL no Windows, geralmente há uma opção para iniciar o servidor MySQL através de uma interface gráfica ou de um painel de controle.
   - No XAMPP, por exemplo, você pode abrir o painel de controle do XAMPP, clicar no botão "Start" próximo ao serviço MySQL para iniciar o servidor.
   - Se você estiver usando uma instalação independente do MySQL, você pode iniciar o servidor executando o arquivo `mysqld` ou `mysqld.exe` no diretório de instalação do MySQL.

2. **No Linux**:

   - No Linux, você pode iniciar o servidor MySQL executando o seguinte comando no terminal:

     ```
     sudo service mysql start
     ```

   - Se você instalou o MySQL via um pacote de gerenciamento de pacotes como o apt, o serviço MySQL pode ser iniciado automaticamente após a instalação.

3. **No macOS**:

   - No macOS, você pode iniciar o servidor MySQL executando o seguinte comando no Terminal:

     ```
     sudo /usr/local/mysql/support-files/mysql.server start
     ```

   - Certifique-se de ajustar o caminho conforme necessário, dependendo de onde o MySQL está instalado no seu sistema.

Após iniciar o servidor MySQL, você pode verificar se ele está em execução verificando o status do serviço ou tentando se conectar ao servidor usando o cliente MySQL.

- Para verificar o status do serviço no Windows, Linux ou macOS, você pode usar comandos como `sudo service mysql status` (Linux) ou `sudo /usr/local/mysql/support-files/mysql.server status` (macOS).

- Para conectar-se ao servidor MySQL, você pode usar o cliente MySQL digitando `mysql -u root -p` no terminal e fornecendo a senha do usuário root quando solicitado. Se a conexão for bem-sucedida, isso indicará que o servidor MySQL está em execução corretamente.

## FAZENDO O BACKUP DO BANCO DE DADOS:
###  1) USANDO O TERMINAL:
#### EXPORTAÇÃO/BACKUP:
Passo 1: Abra o terminal ou prompt de comando e navegue até o diretório onde você deseja salvar o arquivo de backup.

Passo 2: Use o comando `mysqldump` seguido das opções `-u` para o nome de usuário, `-p` para solicitar a senha e o nome do banco de dados que você deseja exportar. Em seguida, redirecione a saída para um arquivo de backup.

Exemplo:
```bash
mysqldump -u seu_usuario -p seu_banco_de_dados > backup.sql
```
Você será solicitado a digitar a senha do usuário.

Passo 3: Aguarde até que o processo seja concluído. O arquivo `backup.sql` será gerado no diretório especificado.

#### IMPORTAÇÃO:
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
#### EXPORTAÇÃO/BACKUP:
Passo 1: Abra o MySQL Workbench e faça login em sua conexão.

Passo 2: No painel Navigator, clique com o botão direito do mouse no banco de dados que deseja exportar e selecione a opção "Export Data".

Passo 3: Na janela "Data Export", selecione as tabelas que deseja exportar ou deixe todas selecionadas para exportar o banco de dados completo.

Passo 4: Escolha o formato do arquivo de backup na seção "Output". Por exemplo, você pode selecionar "SQL" para obter um arquivo SQL contendo instruções SQL para recriar o banco de dados.

Passo 5: Escolha o diretório de destino para salvar o arquivo de backup.

Passo 6: Clique no botão "Start Export" e aguarde até que o processo de exportação seja concluído. O arquivo de backup será salvo no diretório especificado.

#### IMPORTAÇÃO:
Passo 1: Abra o MySQL Workbench e faça login em sua conexão.

Passo 2: No painel Navigator, clique com o botão direito do mouse na conexão e selecione a opção "Create Schema".

Passo 3: Digite o nome do banco de dados que você deseja criar e clique em "Apply".

Passo 4: No painel Navigator, clique com o botão direito do mouse no banco de dados recém-criado e selecione a opção "Table Data Import Wizard".

Passo 5: Na janela "Table Data Import Wizard", selecione o arquivo de backup que deseja importar.

Passo 6: Escolha as opções de importação, como "Create new table" para criar uma nova tabela ou "Append data to existing table" para adicionar os dados a uma tabela existente.

Passo 7: Siga as etapas do assistente e revise as configurações de importação.

Passo 8: Clique em "Start Import" e aguarde até que o processo de importação seja concluído. Os dados serão importados para o banco de dados especificado.

Este tutorial mostra como exportar, fazer backup e importar um banco de dados usando o MySQL Workbench, uma ferramenta gráfica fornecida pelo MySQL. Isso permite que você realize essas tarefas de forma fácil e visual, sem a necessidade de usar o terminal.