--1. Join the film to the film_actor table.
Select * from film
Inner Join film_actor 
on film.film_id = film_actor.film_id

Select film.film_id, film_actor.film_id from film
inner Join film_actor 
on film.film_id = film_actor.film_id

--Join the actor table to the film_actor table.
Select first_name, last_name, actor.actor_id,film_actor.actor_id from actor
Inner Join film_actor 
on actor.actor_id = film_actor.actor_id

--Try to join the actor, film_actor, and film table together (3 joins!)
Select actor.actor_id, film_actor.actor_id, film_actor.film_id from actor
inner join film_actor 
on actor.actor_id = film_actor.actor_id
inner join film 
on film.film_id = film_actor.film_id
