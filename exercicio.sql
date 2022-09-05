SQL

Exercício 1:
- Faça uma consulta que retorne a lista de filmes e suas categorias correspondentes.

SELECT * FROM film
    INNER JOIN category
    ON film.film_id = category.category_id


- Faça uma consulta que retorne a lista de todos os atores com o número filmes que cada ator
participou. Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram.

SELECT actor_id, COUNT(film_id) as numberAtuacoes FROM film_actor
GROUP BY actor_id
ORDER BY numberAtuacoes DESC



- Faça uma consulta que retorne a lista de atores que atuaram em filmes com mais de duas horas de
duração (120min). Ordene a lista pelo numero de filmes que cada ator participou.

SELECT a.actor_id, COUNT(a.film_id) as numberAtuacoes FROM film_actor a
INNER JOIN film WHERE length > 120
GROUP BY actor_id
ORDER BY numberAtuacoes DESC


Exercício 2:
Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros
encontrados pela busca

SELECT COUNT(*) FROM film
    INNER JOIN category
    ON film.film_id = category.category_id
	
	
	