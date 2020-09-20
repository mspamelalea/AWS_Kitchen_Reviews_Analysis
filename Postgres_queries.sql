-- Gather aggregates from vine_table
--Having 5-star rating aggregates
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine, star_rating having star_rating = 5)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

--Having 4-star rating aggregates
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine, star_rating having star_rating = 4)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

--Having 3-star rating aggregates
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine, star_rating having star_rating = 3)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

--Having 2-star rating aggregates
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine, star_rating having star_rating = 2)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

--Having 1-star rating aggregates
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine, star_rating having star_rating = 1)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

--Overall aggregates 
with aggs as (select vine
, count(*) as number_of_reviews
, round(avg(star_rating),2) as avg_star_rating
, sum(helpful_votes)  as total_helpful_votes
, sum(total_votes) as total_votes
from vine_table 
where vine is not null 
group by vine)
select aggs.vine, aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes,
round (((sum(aggs.total_helpful_votes)/sum(aggs.total_votes))*100),1) as Percent_helpful
from aggs group by aggs.vine,aggs.number_of_reviews, aggs.total_helpful_votes, aggs.total_votes

-- Vine vs Non-Vine total counts
select vine, count(*) from vine_table group by vine;