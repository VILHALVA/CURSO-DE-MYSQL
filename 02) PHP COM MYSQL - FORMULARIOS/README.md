# [02) MYSQL COM PHP - FORMULARIOS](https://www.youtube.com/playlist?list=PLRwFkczMQf9D4l2D4LY7Uwqf83pzmgdCT)
👨‍⚖️PHP, PDO E MYSQL.

[![GitHub Repo stars](https://img.shields.io/badge/VILHALVA-GITHUB-03A9F4?logo=github)](https://github.com/VILHALVA) 
[![GitHub Repo stars](https://img.shields.io/badge/CURSO%20DE-PHP-03A9F4?logo=github)](https://github.com/VILHALVA/CURSO-DE-PHP) 
[![GitHub Repo stars](https://img.shields.io/badge/CURSO%20DE-HTML%20CSS%20JS-03A9F4?logo=github)](https://github.com/VILHALVA/CURSO-DE-HTML-CSS-JS)<br>

[![GitHub Repo stars](https://img.shields.io/badge/BAIXE%20OS-CODIGOS-03A9F4?logo=github)](https://github.com/EscolaWWW) 
[![GitHub Repo stars](https://img.shields.io/badge/FORMULÁRIO%20COM-PHP%20E%20MYSQL-03A9F4?logo=youtube)](https://www.youtube.com/playlist?list=PLRwFkczMQf9D4l2D4LY7Uwqf83pzmgdCT) <br>

<img src="https://codeacademy.sarutech.com/assets/icons/php-icon.png" align="center" width="280"> <br>

## 🤷‍♂️REQUESITOS:
* 🤯[SABER PROGRAMAR EM PHP](https://github.com/VILHALVA/CURSO-DE-PHP)
* 🤯[SABER HTML E CSS](https://github.com/VILHALVA/CURSO-DE-HTML-CSS-JS)
* 💻[INSTALAR O XAMPP](https://www.apachefriends.org/pt_br/index.html)

![](https://i.imgur.com/waxVImv.png)

# 🈶PHP COM MYSQL NOS FORMULÁRIOS:
Para usar o PHP junto com o MySQL em formulários, você precisa seguir algumas etapas básicas:

1. Configuração do banco de dados:
   Certifique-se de que você tem um servidor MySQL configurado e que tenha criado um banco de dados com as tabelas necessárias para armazenar os dados do formulário.

2. Conexão com o banco de dados:
   No arquivo PHP que processará o formulário, você precisa estabelecer uma conexão com o banco de dados usando as credenciais corretas (host, usuário, senha e nome do banco de dados). Você pode usar a função `mysqli_connect()` ou PDO para fazer a conexão.

3. Criação do formulário HTML:
   Crie o formulário HTML com os campos necessários para coletar os dados do usuário. Certifique-se de usar a tag `<form>` com o atributo `method` definido como "POST" ou "GET" (dependendo de como deseja enviar os dados) e especifique a página PHP que irá processar o formulário no atributo `action`.

4. Processamento do formulário PHP:
   No arquivo PHP definido no atributo `action`, você receberá os dados enviados pelo formulário usando a variável `$_POST` (se o método for "POST") ou `$_GET` (se o método for "GET"). Em seguida, você pode inserir esses dados no banco de dados usando consultas SQL.

5. Consulta e exibição dos dados:
   Se necessário, você pode recuperar os dados do banco de dados usando consultas SQL e exibi-los no navegador, ou realizar outras operações de acordo com suas necessidades.

Aqui está um exemplo simples de como usar o PHP junto com o MySQL em um formulário de registro de usuário:

**arquivo index.html:**
```html
<!DOCTYPE html>
<html>
<head>
    <title>Formulário de Registro</title>
</head>
<body>
    <h2>Formulário de Registro</h2>
    <form action="processar_formulario.php" method="POST">
        <label>Nome:</label>
        <input type="text" name="nome" required><br>
        <label>Email:</label>
        <input type="email" name="email" required><br>
        <label>Senha:</label>
        <input type="password" name="senha" required><br>
        <input type="submit" value="Registrar">
    </form>
</body>
</html>
```
**arquivo processar_formulario.php:**
```php
<?php
// Conexão com o banco de dados
$host = "localhost";
$usuario = "seu_usuario";
$senha = "sua_senha";
$banco = "seu_banco_de_dados";
$mysqli = new mysqli($host, $usuario, $senha, $banco);

// Verificar conexão
if ($mysqli->connect_error) {
    die("Erro na conexão: " . $mysqli->connect_error);
}

// Processamento do formulário
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST["nome"];
    $email = $_POST["email"];
    $senha = $_POST["senha"];

    // Inserir os dados no banco de dados
    $sql = "INSERT INTO usuarios (nome, email, senha) VALUES ('$nome', '$email', '$senha')";

    if ($mysqli->query($sql) === TRUE) {
        echo "Registro efetuado com sucesso!";
    } else {
        echo "Erro ao registrar: " . $mysqli->error;
    }

    // Fechar a conexão com o banco de dados
    $mysqli->close();
}
?>
```
Neste exemplo, o formulário coleta informações de nome, email e senha do usuário e insere essas informações em uma tabela chamada "usuarios" no banco de dados. É importante lembrar que, em um ambiente real, você deve validar e sanitizar os dados enviados pelo formulário para evitar ataques de injeção de SQL e outros problemas de segurança. Além disso, você pode adicionar mais campos e personalizar a lógica de processamento do formulário de acordo com suas necessidades específicas.

# 🈸PHP COM MYSQL E PDO
```markdown
# Formulário PHP com MySQL e PDO

Este é um exemplo simples de um formulário PHP que coleta dados de um usuário (email e senha) e salva esses dados em um banco de dados MySQL usando PDO para uma camada de abstração do banco de dados.

## Conteúdo

- [Conteúdo](#conteúdo)
- [Instruções](#instruções)
- [Explicação do Código](#explicação-do-código)

## Instruções

1. Crie o banco de dados MySQL e a tabela utilizando os seguintes comandos SQL:

```sql
CREATE DATABASE registro;

USE registro;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL
);
```

2. Clone ou faça o download deste repositório para o diretório raiz do seu servidor web (por exemplo, XAMPP/htdocs).

3. Configure as credenciais de acesso ao banco de dados no arquivo `salvar_usuario.php`:

```php
$servername = "localhost";
$username = "seu_usuario";
$usersenha = "sua_senha";
$dbname = "registro"; // Nome do banco de dados criado
```

4. Acesse o formulário de usuário no navegador visitando `http://localhost/caminho_para_o_projeto/index.html`.

5. Preencha o formulário com um email e senha, e clique em "Cadastrar".

## Explicação do Código

O código PHP utiliza PDO para conectar-se ao banco de dados MySQL, coletar os dados do formulário, inserir os dados na tabela `clientes` e lidar com possíveis erros.

- `index.html`: Contém o formulário HTML com campos de email e senha.
- `salvar_usuario.php`: Recebe os dados do formulário e utiliza PDO para inserir os dados no banco de dados.
- `README.md`: Este arquivo, contendo instruções e explicações.

Certifique-se de validar e filtrar os dados do formulário e implementar as práticas recomendadas de segurança.
