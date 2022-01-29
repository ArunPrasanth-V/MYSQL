CREATE TABLE customer
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);


CREATE TABLE customers(
    customre_id INT  PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(20)

);




CREATE TABLE customers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    mailid varchar(20)
);




INSERT INTO customers(name,mailid)
VALUES
('arun' , 'arun@gmail.com'),
('vimal','vimal@gmail'),
('kishore' ,'kishore@gmail.com '),
('mithin' ,'mithin@gmail'),
('aswin' ,'aswin@gmail.com'),
('aswanth' ,'aswanth@gmail.com');

