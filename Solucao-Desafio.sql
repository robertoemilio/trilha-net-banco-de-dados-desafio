-- 1
SELECT NOME, ANO FROM FILMES

-- 2
SELECT * FROM FILMES
ORDER BY ANO

-- 3
SELECT Nome, Ano, Duracao FROM FILMES
where Nome = 'De volta para o Futuro'

-- 4
SELECT Nome, Ano, Duracao FROM FILMES
WHERE Ano='1997'

-- 5
SELECT Nome, Ano, Duracao FROM FILMES
WHERE Ano>'2000'

-- 6
SELECT Nome, Ano, Duracao FROM FILMES
WHERE Duracao >'100' and Duracao<150
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(Ano) Quantidade FROM FILMES
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'M'

-- 9
SELECT PrimeiroNome, UltimoNome FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT Filmes.Nome, Generos.Genero FROM Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

-- 11
SELECT Filmes.Nome, Generos.Genero FROM Filmes
inner join FilmesGenero on Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
inner join ElencoFilme on Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
