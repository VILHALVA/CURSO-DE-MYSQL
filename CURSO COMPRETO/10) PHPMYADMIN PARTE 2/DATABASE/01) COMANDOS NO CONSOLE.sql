-- Mostra todos os bancos de dados disponíveis.
SHOW DATABASES;

-- Usa o banco de dados "exemplo".
USE exemplo;

-- Mostra todas as tabelas presentes no banco de dados atual.
SHOW TABLES;

-- Descreve a estrutura da tabela "amigos".
DESCRIBE amigos;

-- Mostra a declaração SQL usada para criar a tabela "amigos".
SHOW CREATE TABLE amigos;

-- Mostra a declaração SQL usada para criar o banco de dados "exemplo".
SHOW CREATE DATABASE exemplo;

-- Seleciona todos os registros da tabela "amigos".
SELECT * FROM amigos;
