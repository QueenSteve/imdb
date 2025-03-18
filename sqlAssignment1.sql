select *
from imdbcsv;

select releaseYear, count(title) as Total_movies
from imdbcsv
group by releaseYear
order by releaseYear desc;

select genres, count(title) as Total_movies
from imdbcsv
group by genres
order by Total_movies desc
limit 3;

select *
from imdbcsv
order by numVotes desc
limit 1;

select *
from imdbcsv
order by averageRating desc
limit 5;

select averageRating, count(title) as Total_movies
from imdbcsv
group by averageRating;

select title, numVotes
from imdbcsv
where numVotes like '%__590__%';

select *
from imdbcsv
where averageRating > 8.5
order by releaseYear desc;

select *
from imdbcsv
where numVotes > 1000000 and averageRating >= 8.0;

select genres, count(title) as Total_movies,
count(title) / (select count(title) from imdbcsv) as Percentage_of_movies
from imdbcsv
group by genres;

select *
from imdbcsv;

select genres, sum(title), count(title) as Total_movies,
count(title) / (select count(title) from imdbcsv) as Percentage_of_movies
from imdbcsv
group by genres;

