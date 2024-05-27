-- its create a virtual table
-- we can't delete 
create view full_reviews as 
select title , released_year , genre , rating , first_name from reviews
join series on series.id = reviews.series_id
join reviewers on reviewers.id = reviews.reviewer_id;

-- select from this virtual one 
select * from full_reviews where genre = 'Animation';

-- we can update or insert or delete here 
-- because we don't have grouping , ordering , aggregation
create view orders_series as select * from series 
order by released_year;

insert into orders_series (title , released_year , genre)
values ('the new movie' , 2020-09-09, 'action');

create view orders_series as select * from series 
order by released_year;

create or replace  view orders_series as select * from series 
order by released_year;

create or replace view orders_series as select * from series 
order by released_year;