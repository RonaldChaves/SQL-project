-- Query 1

SELECT 
	Nome,
	Ano
FROM Filmes

-- Query 2

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes 
ORDER BY Ano

--Query 3

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--Query 4

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

--Query 5

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000

--Query 6

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

--Query 7

SELECT 
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--Query 8

SELECT 
	* 
FROM Atores
WHERE Genero = 'M'

--Query 9

SELECT 
	* 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--Query 10

SELECT 
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--Query 11

SELECT 
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme 
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

--Query 12

SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
From Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
