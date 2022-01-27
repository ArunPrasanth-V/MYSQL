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
   # CURDAT() -- gives current data
 
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
 #  select date_format('2002-05-25 10:07:35','%d-%m-%Y') from people;
 
 
 # Timestamp :
   > - create table commit( content varchar(100),time_st TIMESTAMP DEFAULT NOW());
   > - select * from commit order by time_st desc;
   > - INSERT INTO commit(content) VALUE ('He will go to canada one day that will be true');
   
  # CREATE TABLE command2( content VARCHAR(100), changed_at TIMESTAMP DEFAULT NOW()  ON UPDATE NOW() );
  // here when we update the the time aswell get change.
