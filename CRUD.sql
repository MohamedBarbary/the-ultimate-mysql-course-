-- select attributes
select name from cats ;
select age from cats;
select name , age from cats;
select  name , breed from cats ;

-- using where 
select * from cats where age = 4;
select name , age from cats  where age = 4; 
select name from cats  where age = 4; 
select age from cats where name = 'Egg';
select age from cats where name = 'egg';

-- aliases change row name in query 
select cat_id as id from cats ; 

-- update  
-- RULE : Select Before Update
update cats set breed ='shorthair' where breed ='tabby';
update cats set age=1 where name = 'misty'; 

-- delete  
-- RULE : Select Before delete
delete from cats where name = 'egg';
-- first challenge 
select cat_id from cats ;
select name , breed from cats ;
select name , age from cats where breed = 'tabby';
select cat_id , age from cats where age = cat_id;

-- second challenge 
update cats set name ='jack' where name ='jackson';
update cats set breed ='Britch shorthair' where name ='ringo';
update cats set  age = 12 where breed ='Maine Coon';

select * from cats;

-- thrid challenge 
delete from cats where age = 4;
delete from cats where age = cat_id;
select * from cats ; 