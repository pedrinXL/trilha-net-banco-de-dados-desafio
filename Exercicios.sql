select *from Atores
select * from Filmes
select * from FilmesGenero
select * from Generos

/*1) Buscar nome e ano dos filmes*/
select Nome, Ano from Filmes

/*2) Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano*/
select Nome, Ano from Filmes
order by Ano asc

/*3) buscar pelo filme de volta pro futuro, trazendo o nome, ano e duração*/
select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro'

/*4)Buscar os filmes lançados em 1997*/
select Nome, Ano, Duracao from Filmes
where Ano = '1997'

/*5)Buscar os filmes lançados apos o ano 2000*/
select * from Filmes
where Ano >= '2000'

/*6) Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente*/
select * from Filmes
where duracao > 100 AND duracao < 150
order by duracao asc

/*7)Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente*/
select ano, count(*) as quantidade_de_filmes
from filmes
group by ano
order by quantidade_de_filmes desc;

/*8)Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome*/
select * from Atores
where Genero = 'M'

/*9)Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome*/
select * from Atores
where Genero = 'F'
order by PrimeiroNome asc

/*10)Buscar o nome do filme e o gênero*/
select filmes.nome as nome, generos.Genero as genero
from filmes
inner join generos on filmes.Id = generos.id
order by genero asc

/*11)Buscar o nome do filme e o gênero do tipo "Mistério"*/
select filmes.nome as nome, generos.Genero as genero
from Filmes
inner join generos on filmes.Id = generos.id
where genero = 'misterios'

/*12)Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel*/
select filmes.nome as nome_do_filme, atores.PrimeiroNome, atores.UltimoNome, Papel
from filmes
inner join ElencoFilme on filmes.id = IdFilme
inner join atores on IdAtor = atores.id
