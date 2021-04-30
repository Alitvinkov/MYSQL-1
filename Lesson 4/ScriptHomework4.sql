-- CRUD

-- C INSERT
-- R select 
-- U UPDATE
-- D DELETE

use vk;

show TABLES;

desc users;
select * from  users limit 10;

update users set updated_at = now() where updated_at < created_at;

desc profiles;

select * from profiles limit 10;

desc messages;
select * from messages limit 10;

select rand();
select floor(1 + rand() * 100);

update messages set
	from_user_id = FLOOR(1 + rand() * 100),
	to_user_id = floor(1 + rand() * 100);
	
desc media;
select * from media limit 10;

update media set
	user_id = FLOOR(1 + rand() * 100);

-- http://dropbox.net/vk/filename.ext
 create temporary table extensions (name varchar(10));
insert into extensions values ('jpeg'), ('avi'), ('mp3'), ('mp4');
select * from extensions;

select name from extensions order by rand() limit 1;



update media set filename = concat(
	'http://dropbox.net/vk',
	filename,
	'.',
	(select name from extensions order by rand() limit 1));

select * from media_types;

update media set size = FLOOR(100000 + rand() * 10000000) where size < 1000;

-- '{"owner":"user_id"}'

update media set metadata = CONCAT(
	'{"owner":"',
	(select CONCAT (first_name, ' ', last_name) from users where id = user_id),
	'"}');

select concat first_name, ' ', last_name from users where id = 4;

select * from media;

delete from media_types;

select * from media_types;

insert into media_types (name) values
	('photo'), 
	('image'), 
	('video');

truncate media_types; 

update media set
	media_type_id = floor(1 + rand() * 100);
select * from media;
desc media;

alter table media modify column metadata json;

alter table profiles modify column gender ENUM('m', 'f');
desc profiles;

desc friendship;
select * from friendship limit 10;

alter table friendship drop column requested_at;

update friendship set
	user_id = FLOOR(1 + rand() * 100),
	friend_id = floor(1 + rand() * 100);
	

select * from friendship_statuses;
truncate friendship_statuses;
insert into friendship_statuses (name) values
('Requested'),
('Confirmed'),
('Rejected');

update friendship set
	friendship_status_id = floor(1 + rand() * 3);


desc communities;
select * from communities;
delete from communities  where id > 13;

select * from communities_users;
truncate communities_users;

insert into communities_users
	select floor(1 + rand() * 30), floor(1 + rand() * 100), now()
	from messages;