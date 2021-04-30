3. Определить кто больше поставил лайков (всего) - мужчины или женщины?


desc likes;
select * from likes;
desc users;
desc profiles;

SELECT
	(SELECT gender FROM profiles WHERE user_id = likes.user_id) AS gender, 
		count(*) as total
    FROM likes
	group by gender
	order by total desc
	limit 1;
 

-- V etom zadanii stolknulsya s owibkoi (Subquery returns more than 1 row) 
-- s kotoroi ne smog spravitsa poetomu chestno spisal))))