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
 # CREATE TALE :
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
   
# CONCAT(x,y,z,'add text aswell !')

# SELECT CONCAT_WS('--SEPARATOR--','title','author_fname,'author_lname')FROM books;

# SELECT SUBSTRING('HELLO WORLD',1,4); --Here Index Start From 1.
# SELECT SUBSTRING('HELLO WORLD',4); --start with index 4


# SELECT SUBSTRING('HELLO WORLD',-4);
+-----------------------------+
| SUBSTRING('HELLO WORLD',-4) |
+-----------------------------+
| ORLD                        |
+-----------------------------+

#  SELECT SUBSTRING('titlevkfjb',1,3);
+-----------------------------+
| SUBSTRING('titlevkfjb',1,3) |
+-----------------------------+
| tit                         |
+-----------------------------+
1 row in set (0.00 sec)
  
 # REPLACE
   SELECT REPLACE ('HELLO WORLD','HELL','@#$');
+--------------------------------------+
| REPLACE ('HELLO WORLD','HELL','@#$') |
+--------------------------------------+
| @#$O WORLD                           |
+--------------------------------------+
1 row in set (0.01 sec)



# SELECT REVERSE('Hello World');
+------------------------+
| REVERSE('Hello World') |
+------------------------+
| dlroW olleH            |
+------------------------+
1 row in set (0.00 sec)

# SELECT CHAR_LENGTH('HELLO WORLD');
+----------------------------+
| CHAR_LENGTH('HELLO WORLD') |
+----------------------------+
|                         11 |
+----------------------------+


# SELECT UPPER('hello');  --LOWER()
+----------------+
| UPPER('hello') |
+----------------+
| HELLO          |
+----------------+



