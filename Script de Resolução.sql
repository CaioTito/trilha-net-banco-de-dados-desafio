--1

SELECT [Nome]
      ,[Ano]
FROM [Filmes].[dbo].[Filmes]

--2

SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
ORDER BY [Ano] ASC

--3

SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE [Nome] = 'De Volta para o Futuro'

--4

SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE [Ano] = 1997

--5

SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE [Ano] > 2000

--6

SELECT [Nome]
      ,[Ano]
	  ,[Duracao]
FROM [Filmes].[dbo].[Filmes]
WHERE [Duracao] > 100 AND [Duracao] < 150
ORDER BY [Duracao] ASC

--7

SELECT  [Ano],
		COUNT([Ano]) Quantidade
FROM [Filmes].[dbo].[Filmes]
GROUP BY [Ano]
ORDER BY Quantidade DESC

--8

SELECT [Id]
	  ,[PrimeiroNome]
      ,[UltimoNome]
	  ,[Genero]
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'M'

--9

SELECT [Id]
	  ,[PrimeiroNome]
      ,[UltimoNome]
	  ,[Genero]
FROM [Filmes].[dbo].[Atores]
WHERE [Genero] = 'F'
ORDER BY [PrimeiroNome] ASC

--10

SELECT F.[Nome]
	  ,G.[Genero]
FROM [Filmes].[dbo].[FilmesGenero] FG
INNER JOIN Filmes F ON F.[Id] = FG.[IdFilme]
INNER JOIN Generos G ON G.[Id] = FG.[IdGenero]

--11

SELECT F.[Nome]
	  ,G.[Genero]
FROM [Filmes].[dbo].[FilmesGenero] FG
INNER JOIN Filmes F ON F.[Id] = FG.[IdFilme]
INNER JOIN Generos G ON G.[Id] = FG.[IdGenero]
WHERE G.[Genero] = 'Mistério'

--12

SELECT F.[Nome]
	  ,A.[PrimeiroNome]
	  ,A.[UltimoNome]
	  ,E.[Papel]
FROM [Filmes].[dbo].[ElencoFilme] E-
INNER JOIN Filmes F ON F.[Id] = E.[IdFilme]
INNER JOIN Atores A ON A.[Id] = E.[IdAtor]
