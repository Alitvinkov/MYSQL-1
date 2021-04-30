4. ѕодсчитать количество лайков которые получили 10 самых молодых пользователей. 

select 
	(select count(*) from likes where target_id = profiles.user_id and target_type = 'users') as likes_total
	from profiles
	order by birthday
	desc limit 10;

SELECT COUNT(*) FROM likes 
  WHERE target_type = 'users'
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthday DESC LIMIT 10
    ) AS sorted_profiles ) 
;

	



desc likes;
select * from likes;