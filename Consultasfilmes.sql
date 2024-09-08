SELECT Nome ,Ano FROM Filmes f 

SELECT Nome, Ano, Duracao 
FROM Filmes f 
ORDER BY Ano 


SELECT Nome, Ano, Duracao 
FROM Filmes f 
WHERE  Nome  = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao 
FROM Filmes f 
WHERE  Ano  = 1997

SELECT Nome, Ano, Duracao 
FROM Filmes f 
WHERE  Ano  > 2000


SELECT Nome, Ano , Duracao 
FROM Filmes f 
WHERE  100 < Duracao AND Duracao  < 150
ORDER BY Duracao  

SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes f 
GROUP BY Ano 
ORDER BY SUM(Duracao) DESC;



SELECT  PrimeiroNome , UltimoNome 
FROM Atores a 
WHERE  Genero  = 'M'

SELECT  PrimeiroNome , UltimoNome, Genero 
FROM Atores a 
WHERE  Genero  = 'F'
ORDER BY PrimeiroNome 


SELECT f.Nome, g.Genero 
FROM FilmesGenero fg 
JOIN Generos g  ON fg.IdGenero = g.Id 
JOIN Filmes f  ON fg.Idfilme = f.Id

SELECT  f.Nome, g.Genero
FROM FilmesGenero fg 
JOIN Generos g  ON fg.IdGenero  = g.Id 
JOIN Filmes f ON fg.IdFilme = f.Id 
WHERE g.Genero = 'Mistério'


SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome ,ef.Papel 
FROM ElencoFilme ef
JOIN Atores a ON ef.IdAtor = a.Id
JOIN Filmes f ON ef.IdFilme = f.Id
