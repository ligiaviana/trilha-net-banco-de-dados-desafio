-- 1
SELECT 
	Nome,
	Ano
FROM Filmes 

-- 2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;

-- 3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

-- 4
SELECT Nome
FROM Filmes
WHERE Ano = 1997;

-- 5
SELECT Nome
FROM Filmes
WHERE Ano > 2000;

-- 6
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

-- 7
SELECT Ano, COUNT(*) AS QuantidadeDeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeDeFilmes DESC;

-- 8
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.Id
JOIN Generos AS G ON FG.IdGenero = G.Id;


-- 11
SELECT F.Nome AS Nome, G.Genero AS Genero
FROM Filmes AS F
JOIN FilmesGenero AS FG ON F.Id = FG.Id
JOIN Generos AS G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mist�rio';



-- 12
SELECT F.Nome AS Nome, A.PrimeiroNome AS PrimeiroNome, A.UltimoNome AS UltimoNome, EF.Papel AS Papel
FROM Filmes AS F
JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
JOIN Atores AS A ON EF.IdAtor = A.Id;



