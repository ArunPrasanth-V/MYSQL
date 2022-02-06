# What is data base?
   - A Structured set of computerized data with accessible interface.
 # SQl : Structured query Language !
    - where SQL is a the talk to Database.
    There are different type like
        - MYSQL
        - Postgresql
        - oracle
        - etc.,
# What makes the DBMS unique ?
   - Feature they offer not the language.
   - like how faster, secure and so on.

# commands :
  > - show databases;
  > - select @@hostname;
  > - CRETATE DATABASE databaseName;
  > - DROP DATABASE Student_Management_DB;
  > - USE dbName;
  > - SELECT database();
# Table :
   - Table hold the Data( in simple word!)
   - column (header)
   - row (actual data)

# Data Types :
  In reality there is lot
  > - Varchar(size)
  > - int(size)
 # CREATE TABLE :
  > - CREATE TABLE tableName (column_name data_type, column_name data_type);
  
  > - CREATE TABLE cats2(name VARCHAR(100) NOT NULL, age INT NOT NULL);
  
  > - CREATE TABLE cats2(name VARCHAR(100) DEFAULT 'no name provided ', age INT DEFAULT 0);
  
  > - eg: CREATE TABLE tweet (name VARCHAR(20) ,message VARCHAR(20));
# other commands:

 > - show columns from tableName;  (or)  DESC tableName;  --Both are Same  DESC -describe
 > - SHOW WARNINGS;
 # Insert into table :
 eg:
 > - INSERT INTO cats(name, age) 
 > - VALUES ('charlie',10),
 > - VALUES ('sadie',2);




# Read :
  > - SELECT name, age  FROM cats;
  > - SELECT cat_id AS id FROM cats; --Alising

# Update :
  > - UPDATE cats SET breed='Shorthair' WHERE breed='Taddy';
  > - UPDATE cats SET name='British Shorthair' WHERE name='Ringo';
  
  
# Delete :
   > - DELETE  FROM cats WHERE name='egg';
   
   > -  CONCAT(x,y,z,'add text aswell !')

   > -  SELECT CONCAT_WS('--SEPARATOR--','title','author_fname,'author_lname')FROM books;

  > -   SELECT SUBSTRING('HELLO WORLD',1,4); --Here Index Start From 1.
  > -   SELECT SUBSTRING('HELLO WORLD',4); --start with index 4


 > - SELECT SUBSTRING('HELLO WORLD',-4);
     O/P : ORLD 

> -  SELECT SUBSTRING('titlevkfjb',1,3);
     O/P : tit 

REPLACE
> -  SELECT REPLACE ('HELLO WORLD','HELL','@#$');
     O/P : @#$O WORLD



  > - SELECT REVERSE('Hello World');
     O/P : dlroW olleH
   -
   > -  SELECT CHAR_LENGTH('HELLO WORLD');
     O/P 11

   - 
   > - SELECT UPPER('hello');  --LOWER()
   O/P : HELLO  
#  DISTINCT :
  > - SELECT DISTINCT author_lname from books;
  > - SELECT DISTINCT author_fname,author_lname from books;

# ORDER BY :
> - SELECT released_year FROM books ORDER BY   released_year DESC;
> - SELECT released_year FROM books ORDER BY   released_year ASC;
> - SELECT released_year,stock_quantity ,pages FROM books ORDER BY 2 ;
> - SELECT released_year,stock_quantity ,pages FROM books ORDER BY  author_fname,author_lname  aSC;


# Limit :
> - **SELECT** released_year,stock_quantity ,pages **FROM** books **ORDER BY**   author_fname,author_lname  **LIMIT** 2;

# LIKE (BETTER SEARCHING) :
> - SELECT author_fname from books **WHERE** author_fname **LIKE '%da%'**;
> - SELECT author_fname from books **WHERE** author_fname **LIKE 'da%'**;  -- should start with **da**
> - SELECT author_fname from books  WHERE stock_quantity  LIKE '____'; --4 Underscore represent exactly 4 digit.
> - SELECT author_fname from books  WHERE title  LIKE '%\%%'; -- \ escapse char



# Aggregate Function :
    
 # Count
  > - SELECT COUNT(*) FROM books;
  > - SELECT COUNT(DISTINCT author_fname,author_lname) AS auth  FROM books;
  > - SELECT  count(*) from books WHERE title  LIKE('%the%');
  
 # Group By :
     Summarizes or aggregates identical data into single rows.
  > - SELECT concat(author_fname,' ' ,author_lname), count(*) FROM books GROUP BY author_fname,author_lname;
  > - SELECT released_year, count(*) as count FROM books GROUP BY released_year;

# MIN AND MAX :
  > - SELECT MIN(released_year) FROM books;
  > - SELECT MAX(released_year) FROM books;
  > - select title,pages from books where pages=(SELECT MAX(pages) from books); --bit show 
  > - SELECT title, pages from books order by pages desc limit 1; -- fast compare to above
  
  
 # MIN/ MAX With Group By
  > - SELECT concat(author_fname," ",author_lname, ' ',min(released_year)) as " author first book released date" from books group by author_fname,author_lname;
  > - SELECT concat(author_fname," ",author_lname, ' ',max(pages)) from books  group by author_fname,author_lname;
  
 # SUM
  > - SELECT SUM(pages) from books group by author_fname , author_lname;
  > - SELECT concat(author_fname,' ',author_lname),SUM(pages) from books group by author_fname , author_lname;
  
 # AVG 
  > - SELECT avg(pages) from books group by author_fname,author_lname;
  > - SELECT concat(author_fname,' ',author_lname) as author, avg(pages) as AVG from books group by author_fname,author_lname;
  > - SELECT released_year,AVG(stock_quantity) from books group by released_year;
    
 # More DataTypes :
   > -  char ,
   > -  DECIMAL -> DECIMAL(13,2) 999.99 total 5 digit
   > -  Float
   > -  Double
   
  # Date :
   > - 'YYYY-MM-DD' -- '2002-05-25'
  # Time :
   > - 'HH:MM:SS'  --'10:07:35'
  # DATATIME :
   > -  'YYYY-MM-DD HH:MM:SS' --'2002-05-25 10:07:35'
   # CURDATE() -- gives current data
 
   # CURTIME()  -- gives current time
   
   # NOW()   -- gives current datetime
   
# Formatting Dates :
  > -  DATE = YYYY-MM-DD
  > - DAY(DATE)
  > - DAYNAME(DATE )
  > - DAYOFWEEK(DATE )
  > - DAYOFAR(DATE )
  > - Hour(time)
  > - minitue(time)
 # --- DATA_FORMAT ---
  > - select date_format('2002-05-25 10:07:35','%d-%m-%Y') from people;
 
 
 # Timestamp :
   > - create table commit( content varchar(100),time_st TIMESTAMP DEFAULT NOW());
   > - select * from commit order by time_st desc;
   > - INSERT INTO commit(content) VALUE ('He will go to canada one day that will be true');
  
  
  # ----Here when we update the the time aswell get change.--
  > -CREATE TABLE command2( content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW()  ON UPDATE NOW() );
  > - select concat(monthname(now()),' ',date_format(now(),'%D'),' ',date_format(now(),'%h:%m')) as date;
  > - O/P : January 27th 09:01



# LOGICAL OPERATORS :
  > - SELECT title,released_year from books where released_year **!=** 2013 
  > - select title from books where title **not like** '% %';
  > - select title,released_year from books where released_year **>=** 2000;
  > - select 99>1 | 29 |1 ;
  > - select 'a'>='A';  -- 0
  > - select 'A'>='a';  -- 1
  > - select 'A'>'a';   --0
  > - select 'b'> 'a';  --1
  > - select author_fname,author_lname,released_year from books where author_fname='dave' **&&** author_lname='eggers' **&&** released_year>2010 ;
  
  > - select title, author_fname,author_lname,released_year from books where released_year>2010 **||** author_fname='dave'&&author_lname='eggers'
  > - select title , released_year from books where released_year  **between** 2000 **and** 2013;
  > - select title , released_year from books where released_year  **not between** 2000 **and** 2013;
  > - select **cast**('2022-01-28' as datetime);
  > - Select title,author_lname from books where author_lname **in** ('carver','lahiri');
  > - Select title,author_lname from books where author_lname **not in** ('carver','lahiri');
  > - select released_year from books where  released_year **%** 2 **!=** 0 ;



# Case Statement :
  > - select title , released_year
  > - **case**
  > - **when** released_year >= 2000 **then** 'Modern Lit'
  > - **else** '20th Century Lit'
  > - **end** as genre
  > - from books;
    
    
   > - select title,stock_quantity , 
   > - case when stock_quantity <=50 then'1*' 
   > - when stock_quantity <=100 then "2*" 
   > - else '3*' end as Stock from books; 





# Relationship and joins :
         1) one to one 
         2) one to many
         3) manu t0 one
         
  # 1: MANY:
     eg: customers & orders
      - > cutomers have many order but that many order belong to one customer.
      
      
      
  # Customers and orders
     > - CREATE TABLE customer
    (
      id INT AUTO_INCREMENT PRIMARY KEY,
      first_name VARCHAR(20),
     last_name VARCHAR(20),
      email VARCHAR(50)
     );



  > -   CREATE TABLE orders(
   id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(id)
    );
  
  
  
  > - SELECT * from orders where customer_id= (select id from customer where last_name="George");
  
  
  
  # Join :
   ### 1) Implicit join :
   > - select * from customer,orders; --  >>>**cross joint**<<< 
   > - select * from customer,orders where **orders.customer_id=customer.id**;   -->>>arbitary join<<<
   > -  select first_name, sum(amount) from customers JOIN orders where first_name="arun";
   
   ### 2) Implicit inner joint : 
   > - select first_name,order_date,amount from customer,orders where orders.customer_id=customer.id;
   
   ### 2) EXPLICIT inner join :  
   > - SELECT * FROM customer **JOIN** orders **ON** customer.id=orders.id;
   > - select concat(first_name,' ',last_name) as Name,order_date,amount from customer JOIN orders ON customer.id=orders.id;
   > - select first_name,sum(amount) as "Total_Amount" from customers **JOIN** orders **on** customre_id=c_id **group by** c_id **order by** Total_Amount ;


 ### 2) Left join: 
   > - select distinct  first_name from customers JOIN orders ON customre_id= c_id;   
   > - SELECT 
   > -    first_name,
   > -    IFNULL(SUM(amount),0)
   > -    from
   > -    customers
   > -    JOIN
   > -    orders
   > -    on
   > -    c_id = customer_id;

  ### 3) Right join :
   > - SELECT c_id,name,max(order_date) last_buy ,sum(price)as Price from customers **RIGHT JOIN** orders  on c_id= customers.id group by c_id;

### If the record in the customer get deleted then orders(perticular customer) aswell to be deleted mean
  the table creation is like in orders table :
  
   > - CREATE TABLE orders(
   > - id INT AUTO_INCREMENT PRIMARY KEY,
   > - order_date DATE,
   > - amount DECIMAL(8,2),
   > - customer_id INT,
   > - **FOREIGN KEY(customer_id) 
   > -  REFERENCES customer(id)
   > -  ON DELETE CASCADE**
   > - );

# MANY : MANY
   > - eg :
   >  -  Books <-> Authors
   >  - Students <-> Classes (in foreign)
   >  - Blog Post <-> Tags 
#  reviewers 
> CREATE TABLE reviewers  <br /> 
> (<br /> 
>    id INT AUTO_INCREMENT PRIMARY KEY,<br /> 
>    first_name VARCHAR(20),<br /> 
>    last_name VARCHAR(20)<br /> 
>)<br /> 
# series
>CREATE TABLE series <br />  
>(<br /> 
 >   id INT PRIMARY KEY AUTO_INCREMENT,<br /> 
 >  title VARCHAR(100),<br /> 
 >   released_year year(4),<br /> 
 >   genre VARCHAR(20)<br /> 
>)<br /> 
# reviews
>CREATE TABLE reviews<br /> 
>(<br /> 
  >  id INT PRIMARY KEY AUTO_INCREMENT,<br /> 
  >  rating DECIMAL(2,1),<br /> 
  >  reviewer_id INT,<br /> 
  >  series_id INT,<br /> 
  >  FOREIGN KEY(reviewer_id )    REFERENCES reviewers (id),<br /> 
  >  FOREIGN KEY(series_id)    REFERENCES series(id)<br /> 
>)

     
   
 ### query 
  >  select genre,ROUND(avg(rating),2) as rating from series <br /> 
  >  join reviews on series.id=series_id <br /> 
  >  group by genre;<br/> 

<br/> 


> - select 
> - title, concat(first_name,' ',last_name),rating
> -   from reviews
> -    join reviewers
> -      on reviewers.id= reviews.reviewer_id
> - join series
> -      on reviews.series_id = series.id
> - order by title;




> - select username,
> -        count(*) as num_like 
> -from users
> - join likes 
> -      on likes.user_id =users.id
> - group by user_id
> - HAVING num_like =(select count(*) from photo);




# Window Function :
