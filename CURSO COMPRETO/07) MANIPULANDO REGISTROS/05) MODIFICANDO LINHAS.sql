 update cursos 
 set nome = 'HTML5'
 where id_cursos = '1';
 
 update cursos
 set nome = 'PHP', ano = '2015'
 where id_cursos = '4';
 
 update cursos
 set nome = 'JAVA', carga = '40', ano = '2015'
 where id_cursos = '5'
 limit 1;
