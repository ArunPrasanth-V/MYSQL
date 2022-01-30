INSERT INTO users(username) VALUES
('aruncanada'),
('jhonathon'),
('anderson'),
('lina');


INSERT INTO photo (image_url,user_id)
VALUES
('/eebrd4tge',2),
('/hrhabw53et',1),
('/gry5y542g',3),
('/rgreqqy5y',2),
('/jmumdbdvg',3);

INSERT INTO  comments(commen_text,user_id,photo_id)
VALUES
('work deep hard',1,2),
('Amazing keep going',3,2),
('I <3 this',2,1);


INSERT INTO likes(user_id,photo_id) VALUES
(1,1),
(2,1),
(1,2),
(1,3),
(3,3);

INSERT INTO follows(follower_id,followee_id)
VALUES
(1,2),
(1,3),
(3,1);

INSERT INTO tag(tag_name)
VALUES
('programming'),
('Devops'),
('cloud');

INSERT INTO photo_tag(photo_id,tag_id)
VALUES
(1,1),
(1,2),
(2,3),
(3,2);

