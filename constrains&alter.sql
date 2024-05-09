-- unique constraints
create table contacts (
		name varchar(100) not null , 
        phone varchar(15) not null unique
);

insert into contacts (name , phone ) 
values ('mohamed nabil','0112233444');

insert into contacts (name , phone ) 
values ('mohamed nabil','01233444');

-- check constraints 
create table users (
        name varchar(100) not null , 
        age  int check (age>18) not null 
);
insert into users (name,age) values('mohamed' , 12);

-- named constraints 
create table partiers (
  name varchar(50),
  age int  , 
  constraint age_not_negative check (age>=0)
);

insert into partiers (name,age) values('mohamed' , 2);

-- multiple coumn constraints 

create table companies (
  name varchar(255) not null ,
  address varchar(255) not null , 
  constraint name_address unique(name , address)
);

insert into companies(name ,address) 
values ('blackbird','123 abc'); 
insert into companies(name ,address) 
values ('blackbird','123 abc');  -- x
insert into companies(name ,address) 
values ('redCard','123 abc');

create table houses (
		purchase_price int not null , 
		sale_price int not null , 
        constraint sprice_gt_pprice check (sale_price>=purchase_price)
);

insert into houses (purchase_price,sale_price) 
values (60,50); -- x

-- alter table (add)
alter table companies 
add column phone varchar (15);
alter table companies 
add column employee_count int not null default  1;
select * from companies ;

-- alter table (drop)
alter table companies 
drop column employee_count;

-- alter  (rename)
rename table companies to suppliers;
alter table suppliers 
rename column name to company_name;

-- alter table (modify)
alter table suppliers 
modify column company_name varchar(100) default '';

-- alter table constraint
alter table houses add constraint postive_price check (sale_price);
alter table houses drop constraint postive_price ;