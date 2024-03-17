-- Comando para criar um banco de dados chamado "cadastro" com o conjunto de caracteres padrão UTF-8 e a colação padrão utf8_general_ci.
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

-- Comando para criar uma tabela chamada "pessoas" com as seguintes colunas:
-- id: inteiro auto-incremento, chave primária
-- nome: string com até 30 caracteres, não nula
-- nascimento: data
-- sexo: enumeração com valores 'M' (masculino) ou 'F' (feminino)
-- peso: número decimal com 5 dígitos, dos quais 2 são decimais
-- altura: número decimal com 3 dígitos, dos quais 2 são decimais
-- nacionalidade: string com até 20 caracteres, padrão 'BRAZIL'
-- A tabela utiliza o conjunto de caracteres utf8
CREATE TABLE `pessoas` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nome` VARCHAR(30) NOT NULL,
    `nascimento` DATE,
    `sexo` ENUM('M', 'F'),
    `peso` DECIMAL(5,2),
    `altura` DECIMAL(3,2),
    `nacionalidade` VARCHAR(20) DEFAULT 'BRAZIL',
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8;