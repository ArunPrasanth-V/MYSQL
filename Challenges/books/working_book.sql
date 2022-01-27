CREATE TABLE books
(
    book_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT
);

INSERT INTO books(title , author_fname,author_lname,released_year,stock_quantity ,pages)
VALUES
 ('The Namesmake', 'jhumpa', 'Lahiri',2003,32,291),
 ('Norse Mythology','Neil','Gaiman',2016,43,304),
 ('Amweican Gods','Neil','Gaiman',2001,12,465),
 ('Interpreter of Maladies','Jhumpa','Lahiri',1996,97,198),
 ('A Hologram for the King: a Novel','Dave','Eggers',2012,154,352),
 ('The Circle','Dave','Eggers',2013,26,504),
 ('The Amazing Adventures of Kavalier & Clay','Michael','Chabon',200,68,634),
 ('Just Kids','Patti','Smith',2010,55,304),
 ('A Heartbreaking Work of Staggering Genius','Dave','Eggers',2001,105,437),
 ('Coraline','Neil','Gaiman',2003,100,208),
 ('What we talk about when we talk about love: stories','Raymond','Caarver',1981,23,454),
 ('Cannery Row','John','Steinbeck',1945,95,181),
 ('Oblivion the Lobster','David','Foster Wallace',2005,92,343),
 ('10%  Happier','Dan','Harris',2014,29,256),
 ('fake_book','freida','Harris',2001,207,420),
 ('Lincoin in the Bardo','George','Saunders',2017,1000,367);

