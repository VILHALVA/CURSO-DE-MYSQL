# QUESTÕES:
1. Uma lista com o nome de todos os gafanhotos Mulheres:
```sql
select nome from gafanhotos where sexo = 'F';
```

2. Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015:
```sql
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';
```

3. Uma lista com o nome de todos os homens que trabalham como programadores:
```sql
select select nome from gafanhotos where profissao = 'Programador' and sexo = 'M';
```

4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J:
```sql
select * from gafanhotos where nome like 'J%' and nacionalidade = 'Brasil' and sexo = 'F';
```

5. Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg:
```sql
select nome, nacionalidade, peso from gafanhotos where sexo = 'M' and nacionalidade != 'Brasil' and peso < '100' and nome like '%Silva%';
```

6. Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
```sql
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
```

7. Qual é a média de peso dos gafanhotos cadastrados?
```sql
select avg(peso) from gafanhotos;
```

8. Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
```sql
select min(peso), nome from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
```

9. Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
```sql
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';
```

