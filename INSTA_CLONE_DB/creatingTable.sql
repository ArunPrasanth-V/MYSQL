DROP DATABASE ig_clone;
CREATE DATABASE ig_clone;
USE ig_clone;

CREATE TABLE users
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);


CREATE TABLE photo
(
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  user_id INTEGER NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY(user_id) REFERENCES users(id)  
);

CREATE TABLE comments
(
 id int PRIMARY KEY AUTO_INCREMENT,
 commen_text  VARCHAR(250) NOT NULL,
 user_id INT NOT NULL,
 photo_id INT NOT NULL,
 created_at TIMESTAMP DEFAULT NOW(),
 FOREIGN KEY (user_id) REFERENCES users(id),
 FOREIGN KEY (photo_id) REFERENCES photo(id)
 );

 CREATE TABLE likes
 (
  created_at TIMESTAMP DEFAULT NOW(),
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (photo_id) REFERENCES photo(id),
  PRIMARY KEY(user_id, photo_id)
 );
 


 CREATE TABLE follows(
     follower_id INT NOT NULL,
     followee_id INT NOT NULL,
     created_at TIMESTAMP DEFAULT NOW(),
     FOREIGN KEY (follower_id) REFERENCES users(id),
  FOREIGN KEY (followee_id) REFERENCES users(id),
  PRIMARY KEY(follower_id,followee_id)
 );

 CREATE TABLE tag (
   id INT AUTO_INCREMENT PRIMARY KEY,
   tag_name VARCHAR(255) unique,
    created_at TIMESTAMP DEFAULT NOW()
 );
 CREATE TABLE photo_tag(
   photo_id INTEGER NOT NULL,
   tag_id INTEGER NOT NULL,
   FOREIGN KEY (tag_id) REFERENCES tag(id),
  FOREIGN KEY (photo_id) REFERENCES photo(id),
  PRIMARY KEY(photo_id ,tag_id)
 );
