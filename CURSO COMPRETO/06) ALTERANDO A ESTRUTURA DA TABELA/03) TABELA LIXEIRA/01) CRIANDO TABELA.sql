-- Criando a tabela "lixeira" se ela ainda não existir, com as colunas especificadas.
CREATE TABLE IF NOT EXISTS lixeira (
    nome VARCHAR(20) NOT NULL UNIQUE,
    descricao TEXT,
    carga INT UNSIGNED,
    totalaulas INT UNSIGNED,
    ano YEAR DEFAULT '2023'
) DEFAULT CHARSET=utf8;

-- Exibindo a estrutura da tabela "lixeira".
DESCRIBE lixeira;
