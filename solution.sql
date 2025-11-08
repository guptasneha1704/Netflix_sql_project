--Netflix project 
DROP TABLE IF EXISTS netflix;
CREATE TABLE  netflix
(
  show_id VARCHAR(6),
  type VARCHAR(10),
  title VARCHAR(150),
  director VARCHAR(208),
  casts VARCHAR(1000),
  country	VARCHAR(150),
  date_added VARCHAR(50),
  release_year INT,
  rating VARCHAR(10),
  duration VARCHAR(15),
  listed_in	VARCHAR(150),
  description VARCHAR(250)
);
select * from netflix;

-- count_total content
select 
       count(*) as total_content
From netflix;	   

select distinct type from netflix;
select * from netflix

--15 Business problems

--QUESTION-1
--1- Count the number of movies vs tv shows 

Select type, count(*)  as total_content
from netflix
Group By type

--2. find the most common rating for movies and Tv shows

 Select 
      type, 
	  rating,
	  COUNT(*)
 from netflix
 group by 1,2
 order by 1,3 desc

 
--3. list all movies release in 2020 --filter moviesmyear 2020

select * from netflix
where
     type='Movie'
	 AND
	 release_year = 2020

--4. find the top 5 countries  with the most content on netflix
--✅ Meaning of the query:
--This query is asking you to identify which 5 countries have the largest number of shows and movies 
--available on Netflix, and then rank them from highest to lowest based on the amount of content.

select
UNNEST(STRING_TO_ARRAY(country, ',')) as new_Country,
   count(show_id) as total_content
from netflix
Group By 1
order by 2 desc
limit 5

select 
   UNNEST(STRING_TO_ARRAY(country, ',')) as new_Country
from netflix


--5. Identify the longest Movie?

select *from netflix
where
     type='Movie' 
     and
	 duration = (select max(duration) from netflix) 


--6. find the content added in the last 5 year    

select  
    *
from netflix
where
To_Date(date_added,'Month DD,YYYY')>= current_date- Interval '5 years'

select current_date- Interval '5 years'

--7. Find all the movies/Tv shows by director 'Rajiv Chilaka'

select * from netflix
where director = 'Rajiv Chilaka'

select * from netflix
where director ILIKE '%Rajiv Chilaka%'

--8. List all the Tv shows with more than 5 seasons------again


 SELECT *
FROM netflix
WHERE 
  type = 'TV Show'
  AND split_part(duration, ' ', 1)::int > 5;

select split_part('Apple Banana Cherry',' ',1)  


--9. count the number of content items ineach genre

select 
UNNEST(string_to_array(listed_in,',')) as genre,
count(show_id)
from netflix
group by 1

--10. find each year and the average numbers of content release by india on netflix.
--return the top 5 year with highest avg content release!


SELECT
  EXTRACT(YEAR FROM TO_DATE(date_added, 'Month DD, YYYY')) AS year,
  COUNT(*) AS yearly_content,
  ROUND(
    COUNT(*)::NUMERIC /
    (SELECT COUNT(*) FROM netflix WHERE country ILIKE '%India%')::NUMERIC * 100,
    2
  ) AS avg_content_per_year
FROM netflix
WHERE country ILIKE '%India%'
  AND date_added IS NOT NULL
GROUP BY 1
ORDER BY year;


--11. list all the movies that are documentaries

select * from netflix
where
listed_in ILike '%documentaries%'

--12. find all the content without the director

select *from netflix
where director is null

--13.  find how many movies actor salman khan appeared in last 10 years!

select * from netflix
 where casts  LIKE  '%Salman Khan%'
 and 
 release_year > EXTRACT(YEAR FROM CURRENT_DATE)-10

--14. find the top 10 aactors appeared in the highest number of movies produced in india.

select 
--show_id,
--casts,
UNNEST(STRING_TO_ARRAY(casts,','))as actors,
count(*) as total_content
from netflix
where country ILIKE '%INDIA%'
group by 1
order by 2 desc
from netflix 

--15. Categorise the content based on the presenc3 of the keyboards '
--kill' and 'voilence' in the description field. label con
--content  containing these keywoards as 'Bad' and all other 
--contgent as 'good' . count how many items fall into each category

select * from netflix
where 
      description ILIKE '%kill%'
	  OR
      description ILIKE '%violence%' 

SELECT
  CASE
    WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'Bad'
    ELSE 'Good'
  END AS content_category,
  COUNT(*) AS total_content
FROM netflix
GROUP BY content_category;

	  
