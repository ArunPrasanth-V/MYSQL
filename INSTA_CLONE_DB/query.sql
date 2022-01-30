-- 1) we want to reward out users who have been 
-- around the longest. Find the 5 oldest users.
select username from users order by created_at limit 5;

-- 2) what day of the week do most user register on?
select DAYNAME(created_at)as day,
       count(*) as total
 from users 
group by day
order by total DESC limit 1;

-- 3) list user that never post photo
select username from users left join photo 
on  users.id=photo.user_id
where user_id is null;


-- 4)find the photo get most like
 

-- 5)what are the top 5 most commonly used hashtag?
select tag_name,count(*) as total from tag
join photo_tag
  on photo_tag.tag_id=tag.id
group by  tag_id
order by total desc limit 5;

-- 6) Find the user who have liked every single photo    
  select username,
        count(*) as num_like 
from users
 join likes 
      on likes.user_id =users.id
 group by user_id
 HAVING num_like =(select count(*) from photo);
 
 
 
select username,users.created_at,image_url
from users left join photo on   photo.user_id=users.id;


select username,count(image_url) from photo
join users on photo.user_id=users.id
where username = 'jhonathon';


select username,count(image_url) from photo
left join users on photo.user_id=users.id
group by users.id;

select username from users
join photo on photo.user_id=users.id
where photo.image_url = '/gry5y542g';


select username,count(photo.image_url) as counts from photo
left join users on photo.user_id=users.id
where count(photo.image_url)>1
group by photo.user_id;

