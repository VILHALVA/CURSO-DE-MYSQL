# QUESTÕES
1. Faça um comando que: Ele seleciona os valores da coluna "profissao" da tabela "gafanhotos". Em seguida, ele conta o número de ocorrências de cada valor único na coluna "profissao". Exibe os resultados agrupados com base nos valores da coluna "profissao", usando a cláusula GROUP BY.
```sql
Select profissao, count(*) from gafanhotos Group by profissao;
```

2. Faça um comando que: Filtra os registros da tabela "gafanhotos" para incluir apenas aqueles em que a data de nascimento é posterior a 1º de janeiro de 2015.
```sql
Where nascimento > ‘2015-01-01’ Group by sexo;
```

3. Faça um comando que: Seleciona os valores das colunas "nacionalidade" da tabela "gafanhotos". Filtra os registros para incluir apenas aqueles em que a nacionalidade não é igual a "Brasil". Os registros resultantes são agrupados com base nos valores da coluna "nacionalidade" usando a cláusula GROUP BY. E a cláusula HAVING é usada para filtrar os grupos resultantes, mantendo apenas aqueles em que o número de membros no grupo (contagem de registros) é maior que 3.
```sql
Select nacionalidade, count(*) from gafanhotos Where nacionalidade != ‘Brasil’ Group by nacionalidade Having count(*) > 3;
```

4. Crie um comando que: Seleciona os valores da coluna "altura" da tabela "gafanhotos". Filtra os registros para incluir apenas aqueles em que o valor da coluna "peso" seja maior que 100. Os registros resultantes são agrupados com base nos valores da coluna "altura" usando a cláusula GROUP BY. A cláusula HAVING é usada para filtrar os grupos resultantes, mantendo apenas aqueles em que a altura seja maior do que a média da altura de todos os registros na tabela "gafanhotos" (calculada com a subconsulta select avg(altura) from gafanhotos).
```sql
Select altura, count(*) from gafanhotos Where peso > ‘100’ Group by altura Having altura > (select avg(altura) from gafanhotos);
```