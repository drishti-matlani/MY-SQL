#creating database.
create database 1sql ;
use 1sql;
create table 1table(                                                             #creating table 
id int primary key ,
name varchar (20),
age int , 
gender varchar(10),
phone varchar(20),
city varchar(10) );

insert into 1table (id,name,age,gender,phone,city)                               #inserting values
values (1,"Ram Kumar",19,"M","4022155","Agra"),
			(2,"Sarta kumari",21,"F","4034421","Delhi"),
			(3,"Salman Khan",20,"M","4056221","Agra"),
			(4,"Juhi Chawla",18,"F","4098621","Bhopal"),
			(5,"Anil Kapoor",22,"M","405221","Agra"),
			(6,"John  Abraham",21,"M","4013776","Delhi");	
            
Select id as "student id" , name as "student name" from 1table;
    Select id as student_id , name as student_name from 1table;
    Select name from 1table;
    Select id,name from 1table;  
    
    alter table 1table add salary varchar(200);
     Alter table 1table modify salary int after name;
	Alter table 1table add unique(name);
    
    
    
     Select* from 1table Where gender = "M";
     
 Select * from 1table Where age >= 21;
    Select*from 1table Where age<21;
    
      Select* from 1table where age between 18 and 21; 
      
     Select* from 1table where age not between 18 and 21;
	Select* from 1table where id between 2 and 5;
    
    Select *from 1table where name between "A" and "k"; 
Select* from 1table where name like "s%";    

    Select* from 1table where name like "__h%";
    
        Select* from 1table where name like "%n";
        
 Select* from 1table where name like "%a%";
    Select* from 1table where name like "%ta%";
    Select* from 1table where phone like "%21";
    
Select* from 1table where name not like "r%";

	Select* from 1table where name like "s%";
    Select* from 1table where name REGEXP "ra";

  	Select* from 1table where name REGEXP "^ra";
 
 	Select* from 1table where name REGEXP "an$";

	Select* from 1table where name REGEXP "ram|kapoor|khan";

Select* from 1table where name REGEXP "^ram|kapoor|^khan";
	Select* from 1table where name REGEXP "^ram|kapoor|khan$";

   select *from 1table order by name;  
    
   select *from 1table order by name asc;
     select *from 1table order by name desc;
      select *from 1table order by name ,city;
    select *from 1table order by city ,name;
	select *from 1table order by city ,name desc;
    
	select *from 1table where age>=19 order by name desc;

    
    select concat("Sahil","-","Bagri") as Name;
select "Sahil-17" as name;
select concat("Sahil","-",17) as Name;
select upper("Sahil-17") as name;
select ucase("Sahil-17") as name;
select upper(concat("Sahil","-",17)) as Name;
select concat_ws("-","Sahil","Bagri",17) as Name;
select concat_ws("&","Sahil","Bagri","M") as Name;
select "      Sahil Bagri         " as Name;
select ltrim("      Sahil Bagri         ") as Name;
select rtrim("      Sahil Bagri         ") as Name;
select trim("      Sahil Bagri         ") as Name;
select ("      Sahil Bagri         ") as Name;
select position("world"in "Hello world") as position;
select position("o"in "Hello world") as position;
select instr("Hello world", "ell") as instring;
select locate("ell", "Hello world") as location;
select locate("l", "Hello world",3) as location;
select locate("l", "Hello world",5) as location;
select locate("l", "Hello world",7) as location;
select locate("l", "Hello world",11) as location;
select locate("a", "Toman",1) as location;
select substring( "Hello world",3) as Substring;
select substring("Hello world",5) as substring;
select substring("Hello world",-3,1) as substring;
select substring("Neema Jha",-6,3) as substring;
select mid("Neema Jha",-6,3) as substring;
select substring("Neema Jha",2,6) as substring;
select substring_index("www.neemajha.net",".",1) as substring_indexing;
select substring_index("www.neemajha.net",".",-1) as substring_indexing;
select substring_index("www.neemajha.net","j",1) as substring_indexing;
select substring_index("www.neemajha.net","e",2) as substring_indexing;
select left("Neema jha",3) as n;
select right("Neema jha",3) as ri;
select rpad("Neema jha",20,"-") as ne;
select lpad("Neema jha",20,"&")as new;
select reverse("Neema jha");
select replace("Neema Jha","Jha","MAM");
select replace("Neema Jha neema Jha ","Jha","MAM");
select strcmp("Neema Jha","neema Jha");
#Left string is equal to right 
select strcmp("Neema Jha","neema");
#left string is greater tham right
select strcmp("Naman","Naman singh chauhan");
#left string is smaller than right 
select field ("a","X","a","k");
select field ("a","X","b","k");
select field (5,2,4,3,7,2,0,5);
select field ("a","X","a","k");
select field ("anil","Xavier","Anil","karan");
select find_in_set("anil","Xavier,anil,karan");
select hex("neema jha");
select space(100);
select format(234.343,2);
select current_date();
select curdate();
select sysdate();
select now();
select date("2019-10-15 09:03:21");
select month("2019-10-15 09:03:21");
select monthname("2019-10-15 09:03:21");
select year("2019-10-15 09:03:21");
select quarter("2019-10-15 09:03:21");
select day("2019-10-15 09:03:21");
select last_day ("2019-02-02 09:34:21");
select dayname("2019-02-02 09:34:21");
select dayofmonth("2019-02-02 09:34:21");
select dayofweek("2019-02-02 09:34:21");
select dayofyear("2019-02-02 09:34:21");
select week("2019-02-02 09:34:21");
select weekday("2019-02-02 09:34:21");
select extract(month from "2019-10-05 09:34:21");
select adddate("2019-02-02", Interval 10 day);
select adddate("2019-02-02", Interval 1 month);
select adddate("2019-02-02", Interval 5000 minute);
select makedate(2024,10);
select subdate("2019-10-15", Interval 1 day);
select current_time();
select current_timestamp();
select localtime();
select localtimestamp();
select time ("2019-10-15 09:03:21");
select minute ("2019-10-15 09:03:21");
select hour ("2019-10-15 09:03:21");
select timediff("05:01:23", "09:03:21");
#yha pr suru krte hai group functionn ek new database bna lo aur table bna lo so lets get started 
use company;
select distinct product_name from product ;
select count(distinct product_name)  from product;
#group by use krte hai column ka group bnane ke liye ki is group ke naam ki etries ek sath aa jayengi then aage aage===
select product_name, sum(quantity) as "Total Quantity" from product group by product_name;
select product_name, avg(price) from product group by product_name;
select region, count(sale_id) from product group by region;

select region, sum(quantity) from product group by region;
select region, sum(quantity) from product group by region having sum(quantity)>10;
Select product_name, sum(quantity*price) as"Total sales" from product group by product_name;
Select region, sum(quantity*price) as"Total sales" from product group by region having sum(quantity*price);
select product_name, avg(quantity) as "Average Quantity" from product group by product_name having avg(quantity)>4;
select region , count(distinct product_name) from product group by region;
select product_name, sum(quantity*price) as "Total sales" from product group by product_name having sum(quantity*price) limit 1;

create database teacher;
use teacher;
create table nahi (
student_id int primary key,
course_name varchar(20)
);

insert into nahi(student_id,course_name)
values(102,"English"),
       (103,"Math"),
       (104,"Science"),
       (105,"CS");
       
create table sahi (
student_id int primary key,
student_name  varchar(20)
);
 insert into sahi (student_id,student_name)
 values(101,"sunit"),
	   (102,"sahil"),
       (103,"aman");

use teacher;
select nahi.student_id,student_name,course_name from sahi Inner Join nahi on sahi.student_id = nahi.student_id;

select nahi.student_id,student_name,course_name from sahi Left Join nahi on sahi.student_id = nahi.student_id;

select nahi.student_id,student_name,course_name from sahi right Join nahi on sahi.student_id = nahi.student_id;

create database joins;
use joins;
drop database joins;
create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50),
dept_id int,
salary int);

insert into employee(emp_name,dept_id,salary)
values("Alice",101,6000),
      ("Bob",102,7000),
      ("Charlie",103,8000),
      ("David",101,7500),
      ("Eve",102,8500);

create table departments(
dept_id int,
dept_name varchar(50));

insert into departments(dept_id,dept_name)
values(101,"HR"),
      (102,"Sales"),
      (103,"IT"),
      (104,"Marketing");
      
create table projects(
project_id int,
project_name varchar(30),
dept_id int);

insert into projects(project_id,project_name,dept_id)
values(1,"Project A", 101),
      (2,"Project B",102),
      (3,"Project C",103),
      (4,"Project D",104);

      
select employee.emp_name,dept_name from departments Inner Join employee on departments.dept_id = employee.dept_id;
#select column from table inner/left/right join table2 on coulmns;

select employee.emp_name,departments.dept_name from departments Left Join employee on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name from employee Left Join departments on departments.dept_id = employee.dept_id;

select employee.emp_name as "employee name",departments.dept_name as "department name" from employee Inner Join departments on departments.dept_id = employee.dept_id;

select employee.emp_name,departments.dept_name from employee inner join departments on employee.dept_id = departments.dept_id  where dept_name="IT"and salary>7500;

select count(emp_id),departments.dept_name as"dept_name"  from employee Inner Join departments on employee.dept_id = departments.dept_id group by dept_name;

select sum(salary),departments.dept_name as"dept_name"  from employee Inner Join departments on employee.dept_id = departments.dept_id group by dept_name;
 
 SELECT departments.dept_id, departments.dept_name FROM departments LEFT JOIN employee ON departments.dept_id = employee.dept_id WHERE Employee.dept_id IS NULL;
 
 select employee.emp_name,projects.project_name from employee inner join projects on employee.dept_id=projects.dept_id;
 
 select employee.emp_name,projects.project_name from employee inner join  departments on departments.dept_id = employee.dept_id inner join projects on employee.dept_id=projects.dept_id where departments.dept_name="HR";
 
 
    
    
    
    
    
    
    
    
    
    
    

            


