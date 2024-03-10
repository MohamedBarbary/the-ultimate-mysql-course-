-- insert (order is must)
insert into cats (name , age ) values ("blue steele",3);
-- insert (change order) 
insert into cats (age , name) values (4,"red seed");
-- multi insert 
insert into cats (age , name) 
values (4,"green one"),
       (6,"yellow cat");

-- insert age value (null )
insert into cats (name ) values ("null value");

-- write quote like ali's cat
insert into cats (name,age) values ('ali\'s cat',5);

-- write double quotes like ' ali's "cat" '
insert into cats (name,age) values ('ali\'s "cat" ',5);

select * from cats ;

-- add not null constrain 
create table cat2 (name varchar(50) not null  , age int not null);

-- add default value
create table cat3 (name varchar(50) not null  default 'nancy' , age int not null default 4);

insert into cat3 () values ();
-- * using default doesn't protect us from inserting null 
create table cat4(name varchar(50)  default 'nancy' , age int default 4);

insert into cat4 (name , age) values (null , null);

-- add primary key (primary key never be null )
create table cat5 (cat_id int primary key,name varchar(50) not null  default 'nancy' , age int not null default 4);
create table cat6 (cat_id int 
                       ,name varchar(50) not null  default 'nancy' 
                       , age int not null default 4 ,
                        primary key (cat_id)
                       );

-- add auto_increment (starts primary key form 1 then increment by 1)
 create table cat7 (cat_id int auto_increment
                       ,name varchar(50) not null  default 'nancy' 
                       , age int not null default 4 ,
                        primary key (cat_id)
                       );
-- insert without adding id => id value here =1 then 2 then 3 ..etc
insert into cat7 (name ,age) values ('alina', 5);
select * from cat7;

-- create table people challenge(1) with (first-name , last-name , age)
create table people (first_name varchar(20) , last_name varchar(20) , age int);
insert into people(first_name  , last_name , age) values ('ali','mohamed',23);
insert into people(first_name  , last_name , age)
    values ('ahmed','mohamed',24),
            ('wael','ahmed',33);

select * from people;
drop table people;

-- create table employee challenge(1) with (first-name , last-name , age)
create table Employee (
	 id int auto_increment ,
     first_name varchar(20) not null ,
	 last_name varchar(20) not null ,
	middle_name varchar(20) ,
    age int not null , 
    current_status varchar(20) not null default 'employed',
    primary key (id)
);
insert into Employee (first_name,last_name,age) values('ali','ali',55);
select * from employee;