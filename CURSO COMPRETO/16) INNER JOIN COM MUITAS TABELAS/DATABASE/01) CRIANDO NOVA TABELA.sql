-- Cria a tabela 'gafanho_assiste_curso' com as colunas: ID (chave primária), data, ID do gafanhoto e ID do curso.
-- Define as restrições de chave estrangeira para vincular o ID do gafanhoto à tabela 'gafanhotos' e o ID do curso à tabela 'cursos'.
-- Define o conjunto de caracteres padrão como utf16.
CREATE TABLE gafanho_assiste_curso (
    id INT NOT NULL AUTO_INCREMENT,
    data DATE,
    idgafanhoto INT,
    idcurso INT,
    PRIMARY KEY(id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(id_cursos)
) DEFAULT CHARSET = utf16;
