-- 1
SELECT Nome, Ano 
	FROM Filmes;
-- 2
SELECT Nome, Ano 
	FROM Filmes
	ORDER BY Ano;
-- 3
SELECT Nome, Ano, Duracao
	FROM Filmes
	  WHERE nome='De volta para o futuro';
-- 4
SELECT Nome, Ano, Duracao
	FROM Filmes
    WHERE ano=1997;
-- 5
SELECT Nome, Ano, Duracao
	FROM Filmes
    WHERE ano >= 2000;
-- 6
SELECT Nome, Ano, Duracao
	FROM Filmes
    WHERE duracao > 100 AND duracao < 150
  ORDER BY duracao;
-- 7
SELECT Ano, COUNT(*) AS Quantidade
	FROM Filmes
    GROUP BY Ano
   	ORDER BY Quantidade DESC, MIN(Duracao) DESC;
-- 8
SELECT Id, PrimeiroNome, UltimoNome, Genero
	FROM Atores
    WHERE Genero='M';
-- 9
SELECT Id, PrimeiroNome, UltimoNome, Genero
	FROM Atores
    WHERE Genero='F'
    ORDER BY PrimeiroNome;
-- 10
SELECT f.Nome, g.Genero
    FROM Filmes f
	JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	JOIN Generos g ON fg.IdGenero = g.Id;
-- 11
SELECT f.Nome, g.Genero
    FROM Filmes f
	JOIN FilmesGenero fg ON f.Id = fg.IdFilme
	JOIN Generos g ON fg.IdGenero = g.Id
    WHERE g.Genero='Mistério';
-- 12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, el.Papel
    FROM Filmes f
	JOIN Atores a ON f.Id = a.Id
    JOIN ElencoFilme el ON f.Id = el.IdFilme;