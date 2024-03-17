-- Comando para criar uma tabela chamada "pessoas" com as seguintes colunas:
-- nome: string com até 30 caracteres
-- idade: inteiro de 0 a 255
-- sexo: caractere único
-- peso: número real de precisão dupla
-- altura: número real de precisão dupla
-- nacionalidade: string com até 20 caracteres
CREATE TABLE pessoas (
    nome VARCHAR(30),
    idade TINYINT,
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacionalidade VARCHAR(20)
);

-- Comando para descrever a estrutura da tabela "pessoas"
DESCRIBE pessoas;