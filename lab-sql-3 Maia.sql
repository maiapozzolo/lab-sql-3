select count(distinct(last_name)) from sakila.actor;

select count(language_id) from sakila.film;

select count(film_id) from sakila.film
where rating = 'PG-13';

select title, max(sec_to_time(length*60)) from sakila.film
where release_year = '2006';


select *, EXTRACT(MONTH from CAST(rental_date as date)) AS month, weekday(CAST(rental_date as date)) as weekday
from sakila.rental 
limit 20;

select *, case
when weekday(CAST(rental_date as date)) in ('0','1','2','3','4') then 'workday'
else 'weekend'
end as day_type
from sakila.rental;

select count(rental_id) from sakila.rental
where CAST(rental_date as date) between '2006-01-14' and '2006-02-14';