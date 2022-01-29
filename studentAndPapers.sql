CREATE TABLE students(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20)
);

CREATE TABLE papers(
  title VARCHAR(200),
  grade INT,
  student_id INT ,
    FOREIGN KEY(student_id)
    REFERENCES students(id)
    ON DELETE CASCADE
);

INSERT INTO students(name)
VALUES
('arun'),
('johnathon'),
("liza"),
('anderson'),
('hendry');


INSERT INTO papers(student_id,title,grade)
VALUES
(1,'java programming',99),
(2,'git and github',67),
(4,'the sql report',49),
(1,'other topic',60),
(2,'the great report',90);
select name, title,grade from students 
    join papers on students.id = papers.student_id;

select name, title,grade from students 
    left join papers on students.id = papers.student_id;


select name, IFNULL(title,'MISSING'),IFNULL(grade,0) from students 
    left join papers on students.id = papers.student_id;


select name, IFNULL(avg(grade),0) as average from students 
    left join papers on students.id = papers.student_id
    group by students.id order by average DESC;


select name, IFNULL(avg(grade),0) as average ,
  CASE
   WHEN  IFNULL(avg(grade),0) > 50 THEN 'PASSING'
   ELSE 'FAILING'
   END AS passing_status
    from students 
    left join papers on students.id = papers.student_id
    group by students.id order by average DESC;

case
when released_year >= 2000 then 'Modern Lit'
else '20th Century Lit'
end as genre
