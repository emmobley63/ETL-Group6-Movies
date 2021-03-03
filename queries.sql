select t.title, i.imdb_rating 
from title as t
join imdb_rating as i
on t.rating_id = i.rating_id;

select t.title, i.imdb_rating
from title as t
join imdb_rating as i
on t.rating_id = i.rating_id
where t.netflix = TRUE; 

select t. title, y.release_year
from title as t
join release_year as y
on t.year_id = y.year_id
where y.release_year = 2000;