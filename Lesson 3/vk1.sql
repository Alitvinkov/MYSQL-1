#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Queen merely remarking as it left no mark on the twelfth?\' Alice went on in the pool rippling to the shore, and then keep tight hold of its right paw ', '2020-02-24 23:59:20', '2013-12-18 23:50:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Rabbit asked. \'No, I didn\'t,\' said Alice: \'allow me to introduce it.\' \'I don\'t know what \"it\" means.\' \'I know what \"it\" means well enough, when I slee', '2013-10-02 08:58:42', '2013-03-12 18:06:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Alice did not look at them--\'I wish they\'d get the trial one way up as the doubled-up soldiers were always getting up and walking off to trouble mysel', '2018-09-15 03:04:06', '2012-12-01 12:10:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'How queer everything is queer to-day.\' Just then she noticed a curious dream, dear, certainly: but now run in to your little boy, And beat him when he', '2021-03-25 03:05:06', '2015-11-06 06:48:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Cheshire Cat, she was a paper label, with the bread-knife.\' The March Hare and the little dears came jumping merrily along hand in hand, in couples: t', '2019-08-07 17:06:20', '2013-02-26 06:13:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Why, she\'ll eat a bat?\' when suddenly, thump! thump! down she came upon a low voice. \'Not at first, the two creatures, who had not long to doubt, for ', '2014-10-13 23:36:24', '2017-12-17 04:37:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Dormouse shall!\' they both bowed low, and their slates and pencils had been (Before she had to do this, so she turned away. \'Come back!\' the Caterpill', '2020-02-08 01:56:26', '2015-09-01 20:45:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'I\'m never sure what I\'m going to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself, \'after such a thing before, and behind it, it occurred ', '2011-09-06 17:11:28', '2019-10-19 08:37:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Alice, a good deal on where you want to get through the air! Do you think I should think you could manage it?) \'And what are they doing?\' Alice whispe', '2021-01-09 03:10:30', '2012-06-11 10:55:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'What happened to you? Tell us all about for a minute or two. \'They couldn\'t have done that?\' she thought. \'But everything\'s curious today. I think I c', '2014-04-04 15:45:48', '2016-11-26 20:22:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'But here, to Alice\'s great surprise, the Duchess\'s voice died away, even in the direction in which case it would all come wrong, and she looked up eag', '2020-05-10 15:06:42', '2012-03-24 18:00:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Rabbit came up to the law, And argued each case with my wife; And the executioner went off like an arrow. The Cat\'s head with great emphasis, looking ', '2021-02-17 23:26:16', '2014-05-22 17:56:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Alice would not stoop? Soup of the thing Mock Turtle a little now and then, and holding it to be seen--everything seemed to follow, except a little ne', '2013-04-10 21:23:26', '2017-09-09 21:00:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Alice, \'a great girl like you,\' (she might well say this), \'to go on crying in this way! Stop this moment, I tell you!\' said Alice. \'Why, there they l', '2013-03-07 12:58:52', '2017-10-08 18:17:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'He says it kills all the players, except the King, and he hurried off. Alice thought this a very respectful tone, but frowning and making faces at him', '2018-08-17 09:20:14', '2015-04-02 09:10:41');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2016-09-06 18:30:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 16, '2012-05-24 12:44:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2012-03-15 19:51:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 46, '2020-12-02 18:29:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2012-05-12 11:37:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 76, '2020-11-08 06:49:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2011-08-02 12:15:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2018-10-09 06:02:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 17, '2019-05-08 03:04:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2020-09-20 13:18:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 47, '2019-10-24 03:32:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2017-05-13 05:49:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 77, '2012-08-09 18:16:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2014-02-26 21:54:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2020-09-05 03:21:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 18, '2019-02-01 13:44:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2020-08-15 03:57:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 48, '2013-04-04 04:02:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2013-06-21 07:40:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 78, '2019-08-04 02:15:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2017-01-12 19:45:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2017-01-03 14:32:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 19, '2013-02-19 03:09:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2020-12-29 08:33:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 49, '2017-10-23 19:36:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2020-12-28 09:40:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 79, '2019-05-14 04:44:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2015-01-09 15:21:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2017-08-04 23:34:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 20, '2013-12-06 02:40:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2011-09-22 01:55:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 50, '2019-12-21 20:28:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2017-01-08 11:45:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 80, '2020-08-27 19:45:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2018-12-13 17:39:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2015-01-18 09:23:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 21, '2013-09-12 15:59:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2019-08-11 09:27:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 51, '2018-03-30 04:44:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2015-03-25 09:14:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 81, '2020-01-05 18:45:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2013-02-06 10:02:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2011-10-19 02:29:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 22, '2015-02-19 12:01:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2017-10-12 17:56:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 52, '2016-08-02 00:43:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2019-05-01 08:06:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 82, '2012-06-16 21:43:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2017-09-01 23:55:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2018-06-17 11:17:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 23, '2020-12-31 05:23:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2016-04-01 21:04:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 53, '2020-06-10 17:22:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2015-12-05 12:09:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 83, '2014-11-01 09:40:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2017-08-05 06:32:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2017-02-15 01:40:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 24, '2018-09-03 07:19:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2017-01-09 03:47:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 54, '2014-01-21 08:08:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2016-08-26 18:41:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 84, '2015-03-12 15:31:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2014-01-09 01:24:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2013-09-08 08:46:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 25, '2020-06-10 18:42:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2021-02-26 05:30:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 55, '2020-10-01 21:32:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2019-10-17 18:01:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 85, '2014-11-17 22:57:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2021-02-10 10:57:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2020-10-09 14:38:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 26, '2016-05-27 06:52:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 41, '2018-01-27 08:02:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 56, '2014-09-24 07:46:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 71, '2017-12-10 14:01:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 86, '2020-03-14 02:43:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2013-10-04 07:44:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 27, '2015-05-23 21:04:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 42, '2019-03-05 04:04:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 57, '2019-10-27 10:46:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 72, '2011-09-12 02:39:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 87, '2014-12-11 21:54:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2016-07-18 01:57:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 28, '2013-09-15 04:28:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 43, '2015-10-05 04:39:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 58, '2019-11-12 21:28:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 73, '2012-06-05 18:56:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 88, '2014-05-22 00:58:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '2019-07-02 07:43:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 29, '2020-01-02 13:11:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 44, '2019-02-26 14:11:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 59, '2019-10-06 13:15:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 74, '2016-03-05 02:09:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 89, '2020-02-06 03:54:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2020-07-16 18:03:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 30, '2017-09-15 21:54:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 45, '2020-07-06 10:17:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 60, '2015-10-16 15:48:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 75, '2015-07-28 07:25:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 90, '2012-02-04 20:29:05');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2016-08-09 13:34:14', '2012-06-11 13:52:45', '2013-02-28 19:38:41', '2019-10-15 12:18:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2019-12-29 09:50:48', '2013-11-01 21:58:36', '2020-01-19 21:26:10', '2018-05-30 04:19:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '2021-03-09 18:31:31', '2019-05-22 13:53:46', '2020-07-19 21:56:16', '2015-06-20 00:41:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 4, '2016-10-22 23:11:59', '2014-07-04 08:04:38', '2019-03-29 13:47:37', '2016-10-02 22:42:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 5, '2013-10-06 20:12:27', '2018-02-12 20:34:47', '2012-01-16 09:00:54', '2019-12-30 11:47:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 1, '2020-07-29 22:44:10', '2012-01-09 21:17:41', '2014-03-10 09:24:11', '2011-12-06 18:01:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 2, '2019-03-31 10:25:06', '2015-12-07 00:20:51', '2017-08-10 21:07:30', '2011-09-30 18:55:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 3, '2012-09-19 07:38:58', '2018-02-13 23:26:09', '2013-07-30 18:30:12', '2014-06-15 06:11:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 4, '2020-02-10 17:36:14', '2015-01-26 18:07:30', '2013-07-23 15:05:44', '2019-03-17 03:52:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 5, '2013-12-21 14:00:37', '2018-12-25 19:35:31', '2017-09-13 13:40:52', '2018-02-25 01:33:34');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'repellat', '2020-01-17 07:17:18', '2013-03-14 21:14:36');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'dicta', '2020-04-12 08:06:47', '2019-01-20 03:45:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'illum', '2017-08-24 09:49:08', '2011-08-10 09:14:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'cum', '2017-12-06 10:51:15', '2019-10-26 02:21:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'quibusdam', '2013-01-29 12:43:30', '2020-04-15 04:50:52');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 2, 'http://mccullough.com/', 5, '9', 0, '2018-11-01 16:46:48', '2012-04-15 22:21:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 3, '', 9, '1', 0, '2013-08-23 11:05:15', '2014-10-01 13:28:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 4, 'http://www.halvorson.com/', 0, '7', 0, '2019-03-29 10:02:34', '2011-09-05 10:49:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 5, '', 5, '1', 0, '2018-10-21 10:43:51', '2014-01-02 17:27:16');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ernserbeatty', '2020-02-11 02:13:23', '2016-03-20 17:30:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'kovacek', '2018-03-03 22:53:00', '2013-12-18 16:26:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'wunschglover', '2013-06-01 21:29:22', '2014-11-30 06:32:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'spinka', '2016-03-01 07:14:32', '2012-11-29 13:39:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'funkweber', '2017-01-07 23:36:40', '2018-04-04 12:01:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'cummings', '2013-02-16 07:21:53', '2016-06-06 06:07:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'leannonbogisich', '2016-03-08 22:26:42', '2018-10-28 23:52:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'monahanarmstrong', '2014-04-15 22:38:26', '2017-08-05 09:49:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'boyer', '2019-01-12 06:31:04', '2015-07-27 05:17:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'hoppewest', '2013-02-21 08:19:00', '2011-09-05 12:08:04');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'oconnell', '2019-05-27 13:13:23', '2020-03-20 10:12:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'hintzwehner', '2015-03-13 10:27:06', '2015-11-23 00:55:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'schuppe', '2017-04-13 15:36:38', '2016-05-29 01:51:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'johnstondicki', '2015-03-22 16:08:42', '2015-01-28 17:56:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'ornschaden', '2011-11-15 23:53:17', '2011-05-30 13:06:45');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Perferendis enim eos autem quia nihil. Et repellendus excepturi est aliquam id. Occaecati saepe nam nesciunt sunt. Qui similique beatae distinctio.', 1, 1, '2019-03-23 22:27:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Sequi est quia maxime quia nihil. Reprehenderit harum quia corporis nulla. Soluta occaecati et reprehenderit dolorum numquam. Et quia aperiam quidem odit beatae distinctio accusamus aut. Dolores itaque doloribus dolor sunt magnam sed autem quia.', 1, 1, '2012-07-24 00:43:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Voluptate eveniet quam temporibus nesciunt. Adipisci quam sunt molestias iusto. Numquam sunt adipisci voluptatum possimus. Provident blanditiis sint quis et molestias libero sunt.', 1, 0, '2019-09-30 01:37:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Aut libero ut veritatis cupiditate inventore. Minima ipsum corrupti ex rerum omnis repellendus fugiat assumenda. Minus est vel id voluptates dolores occaecati non. Est quae et aut est est laudantium illum. Vitae vel ducimus voluptatem dolore pariatur.', 1, 1, '2017-07-31 17:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Ut non qui ut ut voluptatem occaecati. Necessitatibus enim quia corrupti maxime qui. Incidunt libero id ipsam voluptates nam. Ea et sint vel velit ab laudantium. Et ea excepturi reprehenderit dolores ratione molestiae odit.', 1, 0, '2016-12-26 03:02:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Facere iste sint libero saepe consequuntur. Dolore quisquam ducimus voluptates optio assumenda. Doloremque tempora omnis omnis sunt minus cupiditate hic.', 0, 0, '2020-07-16 01:44:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Qui natus hic ipsa inventore voluptatem iure ea. Officiis magni optio cum sint. Eligendi eum occaecati nesciunt et repudiandae incidunt. Esse in aliquam dicta fuga minima possimus.', 0, 1, '2018-02-01 05:27:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'A ab voluptatem doloribus. Sit voluptatum ut sed. Et ut assumenda ipsa sit commodi. Maiores nulla non sunt repellat eum.', 1, 0, '2014-06-08 16:41:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Omnis et animi ex architecto et tempore at. Ex non accusamus in illo. Quos eos id ea dolorem.', 0, 1, '2011-12-19 23:22:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Adipisci animi in dolorum assumenda ut velit. Placeat quidem dicta blanditiis qui porro a cum.', 0, 1, '2011-10-06 12:01:53');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `last_login` datetime DEFAULT NULL COMMENT 'Последний вход в систему',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (1, 'M', '2017-04-14', 'South Sophieside', 'San Marino', '2021-04-10 13:59:45', '2019-04-16 08:00:39', '2016-03-07 13:40:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (2, 'M', '1985-06-09', 'New Katheryn', 'Honduras', '2021-04-10 01:09:23', '2021-01-29 13:49:41', '2011-09-23 13:58:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (3, 'M', '1998-06-29', 'Greenfelderborough', 'Suriname', '2021-04-04 01:45:17', '2018-10-11 13:57:20', '2012-09-07 01:30:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (4, 'M', '2005-06-07', 'East Stellamouth', 'San Marino', '2021-04-15 09:28:25', '2017-06-27 14:49:38', '2015-12-10 11:08:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (5, '', '1979-11-29', 'Greenholtfort', 'French Southern Territories', '2021-03-22 19:14:55', '2019-08-11 06:51:58', '2014-10-06 19:27:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (6, 'M', '1974-11-13', 'Wehnerfurt', 'Moldova', '2021-03-22 08:36:48', '2018-09-15 04:30:54', '2020-04-23 05:54:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (7, '', '2016-01-28', 'East Orville', 'Gabon', '2021-04-13 19:15:11', '2013-02-25 14:30:02', '2019-11-26 22:12:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (8, '', '1976-08-18', 'Lake Kyleigh', 'Slovenia', '2021-04-01 18:16:58', '2018-02-10 04:21:30', '2020-04-09 23:08:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (9, 'M', '1994-11-30', 'North Watson', 'Kuwait', '2021-03-28 15:54:58', '2014-07-14 23:43:18', '2015-06-02 05:41:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (10, 'M', '2020-10-10', 'Baumbachmouth', 'Rwanda', '2021-03-29 01:55:42', '2011-12-23 14:37:17', '2013-10-24 06:21:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (11, 'M', '1986-05-22', 'Port Germanbury', 'Gibraltar', '2021-04-02 00:04:33', '2014-08-05 22:55:51', '2019-05-24 02:04:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (12, 'M', '2011-04-18', 'South Sanford', 'Serbia', '2021-03-23 08:54:00', '2014-08-16 00:51:50', '2015-09-29 15:21:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (13, 'M', '2007-12-05', 'Schuylerstad', 'Cambodia', '2021-03-27 23:31:00', '2017-05-21 03:22:30', '2017-07-06 00:45:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (14, '', '2017-12-14', 'South Jermey', 'Senegal', '2021-04-06 23:46:50', '2020-09-29 14:37:12', '2018-02-11 11:52:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (15, 'M', '1978-01-12', 'Estelton', 'British Indian Ocean Territory (Chagos Archipelago)', '2021-04-04 10:16:20', '2018-07-17 23:48:28', '2015-03-22 19:11:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (16, 'M', '2014-10-02', 'East Christyburgh', 'Mauritania', '2021-04-10 15:50:52', '2012-12-03 01:07:37', '2017-04-17 12:26:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (17, '', '2005-12-21', 'Torpmouth', 'Antarctica (the territory South of 60 deg S)', '2021-04-05 10:49:01', '2012-08-08 14:21:22', '2017-06-15 20:00:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (18, 'M', '1985-07-06', 'Lake Damion', 'Botswana', '2021-03-19 22:55:55', '2013-10-16 12:22:31', '2016-05-13 19:22:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (19, '', '1979-03-19', 'Steveland', 'Ecuador', '2021-03-26 04:06:22', '2020-03-26 08:45:55', '2016-05-27 18:46:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (20, '', '2002-08-20', 'New Marlon', 'Turkey', '2021-04-16 15:44:16', '2017-09-15 09:12:52', '2019-01-16 01:34:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (21, 'M', '2000-06-21', 'South Kennedyton', 'Tajikistan', '2021-04-09 13:41:37', '2011-08-25 14:00:03', '2012-03-22 06:32:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (22, '', '1974-09-14', 'Zaneburgh', 'Barbados', '2021-04-04 13:13:47', '2013-10-31 03:25:04', '2013-09-09 07:32:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (23, 'M', '1983-04-30', 'Lake Lynn', 'Algeria', '2021-04-07 08:05:13', '2020-10-30 01:37:01', '2019-01-01 17:35:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (24, '', '2002-11-27', 'Lake Carlieton', 'San Marino', '2021-04-17 12:34:36', '2015-11-29 11:45:38', '2016-01-27 01:24:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (25, '', '1997-04-16', 'South Calebville', 'Germany', '2021-03-31 23:56:14', '2012-09-27 11:34:53', '2017-01-02 03:23:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (26, '', '1980-09-29', 'Stoltenbergside', 'Thailand', '2021-04-11 04:24:07', '2012-08-31 10:43:25', '2020-10-29 12:22:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (27, '', '2018-09-03', 'North Leonie', 'Antarctica (the territory South of 60 deg S)', '2021-03-22 01:40:52', '2016-09-06 18:19:34', '2020-01-24 05:11:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (28, '', '1979-09-30', 'Gerholdton', 'Philippines', '2021-03-25 12:22:59', '2011-10-01 13:20:09', '2019-04-07 10:52:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (29, '', '1973-01-23', 'North Della', 'Taiwan', '2021-04-11 07:39:36', '2018-07-11 10:39:04', '2011-11-26 22:48:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (30, 'M', '2017-01-21', 'Jacobsfort', 'Nepal', '2021-04-01 16:05:22', '2018-05-12 13:23:50', '2020-09-27 19:25:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (31, 'M', '1973-10-29', 'Lake Lelia', 'Poland', '2021-04-07 22:33:18', '2016-03-28 22:38:47', '2016-03-06 13:05:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (32, 'M', '2013-02-03', 'West Benedict', 'Slovakia (Slovak Republic)', '2021-03-23 14:04:57', '2011-05-10 09:33:24', '2018-11-09 23:21:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (33, 'M', '1974-07-29', 'Grayceberg', 'British Indian Ocean Territory (Chagos Archipelago)', '2021-04-02 05:05:18', '2017-08-03 02:37:44', '2020-05-17 11:26:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (34, '', '1970-06-12', 'Considinetown', 'Montenegro', '2021-03-20 01:16:33', '2013-06-27 01:28:41', '2019-02-24 05:17:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (35, 'M', '2005-03-29', 'North Ciara', 'Bangladesh', '2021-03-22 09:59:41', '2017-12-17 01:40:52', '2017-09-30 12:07:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (36, 'M', '2011-12-17', 'O\'Connelltown', 'Armenia', '2021-04-05 20:11:20', '2020-12-31 12:34:33', '2014-02-08 23:00:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (37, '', '2008-03-18', 'Leschview', 'Falkland Islands (Malvinas)', '2021-03-22 10:15:50', '2021-04-05 11:24:45', '2011-09-15 07:33:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (38, '', '1976-09-22', 'New Lauriemouth', 'Ukraine', '2021-04-11 10:43:02', '2011-05-19 12:50:13', '2020-04-04 22:50:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (39, 'M', '2007-08-21', 'Gracieview', 'Mauritius', '2021-04-06 16:41:25', '2013-04-15 20:16:47', '2019-09-03 18:33:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (40, 'M', '2016-04-10', 'Lake Clevemouth', 'Nicaragua', '2021-03-21 14:02:28', '2015-04-16 11:41:22', '2016-06-05 03:28:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (41, '', '2007-02-17', 'New Kearamouth', 'El Salvador', '2021-04-06 03:34:58', '2015-11-25 03:55:45', '2020-09-04 06:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (42, 'M', '1992-08-03', 'Makaylamouth', 'Indonesia', '2021-04-06 07:41:36', '2012-04-19 16:43:24', '2021-03-13 16:46:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (43, '', '1976-02-09', 'Bechtelarfort', 'American Samoa', '2021-03-22 17:36:32', '2017-02-25 21:00:33', '2020-05-06 23:11:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (44, '', '1972-03-26', 'North Skyeberg', 'Malta', '2021-04-11 00:31:01', '2012-11-27 15:29:22', '2012-03-24 03:35:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (45, '', '1989-02-01', 'Rosemariestad', 'Hong Kong', '2021-03-25 16:40:22', '2014-08-14 07:19:15', '2013-02-16 16:27:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (46, 'M', '2005-09-11', 'New Ramiro', 'Portugal', '2021-03-31 17:49:24', '2014-05-07 19:16:02', '2012-10-19 20:32:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (47, 'M', '1995-07-07', 'Makennamouth', 'Croatia', '2021-03-27 13:41:17', '2012-07-29 03:14:55', '2016-01-12 12:09:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (48, '', '2012-12-21', 'North Chyna', 'Saint Lucia', '2021-04-05 23:15:20', '2016-02-29 14:04:43', '2021-01-29 11:08:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (49, '', '2016-09-15', 'Haagbury', 'China', '2021-04-01 07:27:14', '2014-06-13 19:19:05', '2015-11-03 07:27:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (50, 'M', '2000-10-28', 'Lake Kamrenmouth', 'India', '2021-04-13 05:59:50', '2019-04-05 12:58:33', '2011-09-27 20:00:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (51, 'M', '2001-05-05', 'North Thelmaville', 'Christmas Island', '2021-04-10 18:08:23', '2012-05-28 00:50:18', '2016-02-04 09:07:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (52, '', '1980-09-06', 'West Ebony', 'Saint Pierre and Miquelon', '2021-04-03 02:04:21', '2012-07-09 17:13:42', '2013-07-28 21:35:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (53, 'M', '2016-05-29', 'North Baylee', 'Niue', '2021-04-02 07:34:46', '2012-01-06 01:51:57', '2013-03-01 22:15:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (54, '', '2020-05-21', 'West Angieland', 'Egypt', '2021-04-13 12:51:28', '2013-05-22 17:44:06', '2016-01-12 22:25:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (55, 'M', '1985-09-06', 'Croninfurt', 'Monaco', '2021-04-18 10:25:29', '2016-06-23 08:46:35', '2011-05-25 01:37:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (56, '', '2000-02-25', 'Port Haydenmouth', 'Mauritania', '2021-04-16 02:13:54', '2014-05-16 05:27:53', '2011-09-03 06:55:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (57, 'M', '1972-08-02', 'North Bertha', 'Zimbabwe', '2021-04-16 23:49:10', '2017-06-21 14:48:56', '2014-10-16 15:01:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (58, 'M', '1987-02-03', 'Powlowskichester', 'Mayotte', '2021-03-31 10:24:50', '2015-03-07 00:53:12', '2021-03-31 18:24:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (59, 'M', '1989-06-15', 'Cyrilside', 'Latvia', '2021-03-30 18:18:47', '2017-06-01 15:45:40', '2021-02-06 02:42:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (60, 'M', '1997-03-01', 'West Pierre', 'Martinique', '2021-04-18 20:11:23', '2012-03-27 11:38:36', '2015-07-21 04:47:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (61, 'M', '2005-07-11', 'New Jasenfurt', 'Mongolia', '2021-04-17 22:48:31', '2017-01-20 14:22:32', '2015-04-10 00:38:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (62, 'M', '1997-06-12', 'Juanaside', 'Pitcairn Islands', '2021-04-16 14:26:00', '2015-04-07 18:14:05', '2016-12-15 13:03:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (63, '', '2009-01-07', 'Lake Johnmouth', 'Egypt', '2021-04-14 14:13:30', '2012-08-12 16:10:35', '2013-07-18 03:45:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (64, 'M', '2019-12-20', 'Libbieview', 'Bahrain', '2021-03-30 18:04:07', '2014-01-15 17:25:18', '2020-04-30 22:55:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (65, '', '1995-07-25', 'South Drew', 'Ireland', '2021-04-16 19:27:49', '2014-08-01 14:23:26', '2017-05-17 19:57:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (66, '', '1981-11-04', 'New Cleveland', 'Iraq', '2021-04-09 07:46:04', '2013-01-20 06:58:24', '2019-05-01 16:27:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (67, '', '2009-03-12', 'Port Adrienborough', 'Puerto Rico', '2021-04-09 06:55:22', '2012-10-05 16:32:35', '2017-09-14 18:16:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (68, 'M', '2003-07-24', 'Miaville', 'Uganda', '2021-04-19 14:17:33', '2017-11-13 21:01:16', '2017-05-13 14:22:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (69, 'M', '2011-04-27', 'Port Daynaside', 'Guatemala', '2021-04-14 20:21:30', '2013-09-27 07:22:41', '2015-11-20 18:19:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (70, 'M', '1986-10-19', 'Port Macy', 'Heard Island and McDonald Islands', '2021-04-10 19:34:43', '2011-09-24 19:36:10', '2012-11-13 22:04:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (71, 'M', '2002-02-05', 'East Dannieshire', 'French Southern Territories', '2021-04-15 14:16:46', '2017-03-14 16:58:43', '2011-12-23 18:26:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (72, '', '1981-06-09', 'Alexandreafurt', 'New Zealand', '2021-03-21 07:22:06', '2014-08-25 06:08:03', '2015-08-01 15:56:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (73, '', '2001-08-29', 'South Jermain', 'Comoros', '2021-04-09 17:47:40', '2014-02-02 21:01:47', '2013-05-02 08:13:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (74, '', '1987-08-16', 'South Donatoport', 'Paraguay', '2021-04-07 17:57:57', '2012-10-07 16:07:27', '2013-07-19 06:51:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (75, '', '2003-12-01', 'Ianstad', 'Tokelau', '2021-04-06 09:47:45', '2016-07-12 12:37:45', '2013-02-23 16:20:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (76, '', '1990-12-13', 'Bertaville', 'Cote d\'Ivoire', '2021-04-11 15:36:25', '2018-06-20 22:27:34', '2011-05-18 16:02:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (77, '', '2001-05-24', 'Port Eleanora', 'Spain', '2021-03-26 23:13:12', '2016-05-19 08:26:29', '2012-02-11 02:54:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (78, 'M', '2009-03-09', 'Lake Colbyborough', 'Namibia', '2021-04-09 07:20:01', '2011-10-28 04:04:32', '2014-08-18 18:06:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (79, 'M', '1975-09-21', 'West Brigittefort', 'Uganda', '2021-04-11 20:30:38', '2016-10-03 16:52:42', '2014-10-18 16:35:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (80, '', '1987-03-27', 'Mantestad', 'French Guiana', '2021-04-15 19:04:49', '2014-02-08 08:42:17', '2013-07-29 18:32:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (81, '', '2001-03-13', 'Pfefferton', 'Saudi Arabia', '2021-04-18 17:06:39', '2011-10-28 03:23:28', '2014-12-03 10:10:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (82, 'M', '2004-10-04', 'South Moriahmouth', 'Algeria', '2021-04-12 22:39:24', '2021-02-01 15:42:40', '2013-11-01 16:13:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (83, '', '1982-03-05', 'Emardport', 'United States Minor Outlying Islands', '2021-03-23 06:44:11', '2012-04-01 00:11:59', '2016-12-28 06:11:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (84, '', '1972-04-21', 'Estellville', 'Ukraine', '2021-03-20 06:27:35', '2012-02-16 18:21:32', '2011-11-01 05:58:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (85, 'M', '1971-07-19', 'Gibsonview', 'Turkmenistan', '2021-04-03 07:55:23', '2017-09-09 16:12:46', '2017-09-12 15:10:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (86, 'M', '2016-01-08', 'Port Araport', 'Eritrea', '2021-03-21 10:32:31', '2015-05-14 00:54:48', '2020-10-19 05:40:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (87, 'M', '1989-04-04', 'Port Jeremie', 'Venezuela', '2021-03-20 09:19:19', '2014-08-06 21:50:57', '2012-09-19 12:16:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (88, 'M', '1993-10-10', 'Luciousfurt', 'New Zealand', '2021-04-07 04:03:40', '2012-06-27 04:32:18', '2017-02-12 17:15:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (89, 'M', '2002-10-06', 'North Carmela', 'South Africa', '2021-03-28 19:22:04', '2011-12-04 22:16:29', '2016-03-11 03:20:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (90, 'M', '2001-03-31', 'South Araceli', 'United States Virgin Islands', '2021-03-29 00:10:51', '2018-12-30 19:11:19', '2016-10-09 07:24:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (91, '', '1988-07-13', 'Barryside', 'Chile', '2021-04-03 02:24:36', '2012-09-22 10:41:16', '2013-03-13 13:29:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (92, 'M', '1982-10-07', 'Candicemouth', 'Iraq', '2021-04-16 03:33:52', '2014-03-11 12:04:27', '2020-12-31 11:04:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (93, 'M', '1978-08-28', 'Danialview', 'Poland', '2021-04-02 12:09:07', '2020-11-10 00:09:21', '2013-05-21 15:37:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (94, 'M', '2003-02-03', 'East Modestoview', 'Montenegro', '2021-04-02 03:29:44', '2019-04-16 10:53:12', '2017-03-31 13:53:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (95, 'M', '2000-05-04', 'Cydneymouth', 'Anguilla', '2021-04-06 09:03:36', '2015-09-29 01:00:24', '2015-05-16 12:38:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (96, 'M', '2016-09-05', 'New Orlando', 'British Virgin Islands', '2021-04-01 06:13:04', '2015-06-26 13:57:16', '2021-04-08 09:46:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (97, '', '1988-01-19', 'Port Verlaland', 'Bahrain', '2021-04-18 11:48:35', '2013-06-24 10:06:58', '2021-02-22 11:05:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (98, 'M', '2006-08-21', 'East Jazlyn', 'Algeria', '2021-03-22 18:58:39', '2018-05-24 03:43:57', '2016-08-03 21:53:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (99, '', '1993-04-13', 'Nolanfort', 'Reunion', '2021-03-29 12:30:18', '2021-02-02 01:40:16', '2012-10-05 13:51:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `last_login`, `created_at`, `updated_at`) VALUES (100, 'M', '1997-12-15', 'Port Garret', 'Macao', '2021-04-11 22:34:13', '2019-09-17 20:39:22', '2013-12-29 02:26:28');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Celia', 'Erdman', 'sid.o\'conner@example.org', '1-561-328-8885', '2014-10-12 15:30:32', '2017-06-07 14:01:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'German', 'Barton', 'kub.uriel@example.org', '(807)751-4126x342', '2013-04-07 14:20:44', '2015-06-14 14:49:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Seamus', 'Dietrich', 'kvandervort@example.net', '094.313.5001', '2012-12-10 12:44:58', '2015-03-13 17:00:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Itzel', 'Denesik', 'nelda19@example.com', '+04(9)9115496719', '2017-06-27 13:25:27', '2016-12-08 00:21:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Brian', 'McClure', 'raul27@example.org', '985.319.7031', '2019-07-28 14:44:41', '2015-06-19 15:29:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Cletus', 'Parisian', 'constantin.cummerata@example.com', '(930)845-3234x1660', '2017-06-06 18:37:27', '2014-02-26 11:33:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Dereck', 'Dicki', 'jamel.kuhlman@example.com', '(970)130-6257', '2012-10-31 01:31:36', '2017-12-27 04:04:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Vinnie', 'Miller', 'gwisoky@example.net', '285.863.6078', '2020-11-12 03:26:23', '2017-10-31 12:52:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Kadin', 'Langosh', 'runte.wiley@example.com', '900.759.9668x1136', '2020-12-14 07:07:38', '2020-09-01 23:59:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Clifford', 'Purdy', 'lherman@example.com', '1-317-988-9947x91608', '2012-06-14 22:30:58', '2013-11-17 19:35:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Bertram', 'Langosh', 'zkihn@example.org', '1-088-849-2357x451', '2012-01-26 18:26:46', '2012-03-07 10:14:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Johnathan', 'Quigley', 'crunolfsson@example.org', '559-389-1500x6764', '2012-10-11 16:19:52', '2018-11-16 12:47:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Immanuel', 'Rogahn', 'jordyn05@example.org', '1-912-813-8844', '2014-12-27 23:34:30', '2012-03-13 07:04:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Casper', 'Reinger', 'weimann.harvey@example.org', '1-444-718-3807x38679', '2019-11-22 20:51:30', '2014-04-07 07:39:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Ambrose', 'Lehner', 'chandler.volkman@example.com', '102.737.4261x54447', '2016-08-17 16:15:51', '2012-12-04 09:47:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Orpha', 'Welch', 'brannon.jacobs@example.org', '(175)985-5085', '2020-03-05 04:08:19', '2014-05-04 05:00:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Eloy', 'Auer', 'noelia43@example.net', '1-058-877-1165', '2019-05-15 17:08:41', '2013-04-23 17:10:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Jordane', 'McLaughlin', 'ohaley@example.org', '07117728988', '2012-11-19 16:37:26', '2015-08-30 15:28:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Bartholome', 'Sporer', 'adonnelly@example.net', '04577863903', '2016-08-15 21:33:17', '2017-12-13 22:25:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Davonte', 'Rodriguez', 'hartmann.reymundo@example.net', '(327)112-0673x86458', '2014-07-08 07:25:28', '2016-02-12 11:24:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Alexandrine', 'Crona', 'tillman.buster@example.net', '1-537-802-6815', '2018-10-07 12:20:42', '2014-03-13 15:12:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Marcelino', 'Erdman', 'thompson.leonel@example.com', '697.908.1415x24760', '2014-06-21 08:38:47', '2017-09-09 02:51:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Izaiah', 'Kuhic', 'qkutch@example.org', '+63(7)7729252565', '2016-01-04 15:00:02', '2016-08-05 22:06:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Cedrick', 'Doyle', 'virgie.tillman@example.net', '515.181.3219', '2018-04-30 22:29:29', '2017-01-23 06:02:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Maximillia', 'Zulauf', 'cristina.oberbrunner@example.org', '(040)913-7712', '2016-07-18 04:49:33', '2012-03-30 08:40:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Leola', 'Satterfield', 'henri.armstrong@example.com', '1-225-185-5894x4740', '2020-07-25 07:58:25', '2019-06-30 23:37:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Abel', 'Harber', 'jaime.medhurst@example.net', '459-871-1395x65467', '2017-02-24 01:11:30', '2017-05-30 23:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Rasheed', 'Kuvalis', 'gutmann.guiseppe@example.org', '1-168-278-5846', '2016-09-03 17:56:14', '2013-07-05 02:32:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Werner', 'Schneider', 'jaunita.bednar@example.net', '1-501-458-8430x16442', '2016-02-29 11:08:49', '2016-08-28 02:33:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Selmer', 'Lesch', 'heller.clara@example.net', '631-324-6687x2145', '2018-02-03 03:07:45', '2014-04-12 13:26:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Bertram', 'Carter', 'virgie.balistreri@example.net', '613-800-4801x3541', '2014-08-21 02:38:11', '2013-09-27 13:05:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Brayan', 'Langosh', 'emmerich.neoma@example.com', '398.671.6603', '2016-04-17 21:35:57', '2016-10-02 15:33:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Stacey', 'Hodkiewicz', 'oo\'kon@example.com', '1-783-224-5152x0407', '2011-06-27 18:58:29', '2013-10-17 03:00:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Savion', 'Corkery', 'tdibbert@example.org', '+25(6)2195544219', '2013-08-28 02:38:32', '2019-04-28 21:35:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Prudence', 'Parisian', 'felicia13@example.net', '239-802-8644x7993', '2012-10-07 18:49:59', '2011-12-17 10:54:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Moses', 'Romaguera', 'flesch@example.net', '786-124-6776', '2020-10-18 16:16:08', '2013-06-09 06:23:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Megane', 'Haley', 'dlangosh@example.com', '733-249-9894x620', '2013-08-12 20:48:27', '2018-09-22 16:31:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Cortney', 'Denesik', 'verlie13@example.org', '194-686-6561', '2019-03-02 12:15:58', '2014-03-28 12:31:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Emmett', 'Walker', 'lsmitham@example.org', '1-500-155-9317', '2014-02-03 15:46:27', '2015-08-25 20:34:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Janie', 'Boehm', 'melvin.watsica@example.com', '917-609-7725x256', '2017-05-03 20:04:24', '2014-12-26 12:30:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Watson', 'Emmerich', 'alberto50@example.net', '538-744-5642', '2014-01-30 14:29:47', '2016-07-31 11:30:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Sebastian', 'Kirlin', 'stroman.dee@example.com', '+47(7)3013231896', '2020-08-22 16:26:54', '2015-08-16 06:07:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Karianne', 'Russel', 'dakota.franecki@example.org', '277-494-2030x682', '2020-02-19 00:04:46', '2015-07-14 19:44:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Melyna', 'Marvin', 'ortiz.hermann@example.org', '+07(4)7530923360', '2015-02-22 12:16:12', '2017-12-28 20:09:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Clementina', 'Yundt', 'daniel.dulce@example.com', '1-598-541-6192', '2017-12-29 17:48:23', '2011-07-07 00:28:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Beth', 'Beier', 'juana54@example.com', '1-533-364-2160', '2017-12-23 14:57:11', '2014-12-13 19:49:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Muhammad', 'Hodkiewicz', 'elissa.kautzer@example.org', '133.607.5633x2771', '2018-04-23 03:43:36', '2011-08-09 04:24:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Grady', 'Greenholt', 'reilly.tatyana@example.org', '604-056-8517', '2011-11-26 15:22:02', '2019-10-25 11:06:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Duncan', 'Hilpert', 'daphney05@example.org', '724-765-3916x66741', '2020-09-07 13:43:14', '2015-10-03 11:34:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Sarai', 'Stiedemann', 'lelia.auer@example.org', '(131)153-4587x89435', '2011-04-20 08:37:03', '2016-03-25 14:26:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Maxwell', 'Murphy', 'zmckenzie@example.net', '+87(3)5189045562', '2013-06-14 05:09:48', '2017-06-12 19:15:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Guadalupe', 'Spencer', 'oquigley@example.com', '+77(4)3074238456', '2016-12-20 09:02:49', '2020-08-03 21:05:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Maximillian', 'Bernhard', 'jerde.olen@example.com', '+75(8)8909188093', '2019-09-06 23:58:40', '2012-03-24 04:35:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Eudora', 'Swift', 'rowe.gail@example.net', '1-294-142-9306', '2017-09-26 10:26:51', '2018-06-01 18:19:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Aida', 'Lueilwitz', 'emelie.wunsch@example.net', '04726747469', '2012-08-15 21:43:18', '2015-11-28 11:18:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Renee', 'Gaylord', 'brian13@example.org', '1-018-750-6918', '2013-12-15 00:16:00', '2013-09-06 23:24:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Carolanne', 'Kovacek', 'lawrence.abbott@example.net', '03536237374', '2018-06-05 08:46:49', '2013-12-30 00:14:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Arely', 'Gusikowski', 'jefferey91@example.org', '269.039.4669', '2017-07-28 07:01:36', '2016-11-25 04:50:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Emma', 'Gorczany', 'stanton.franco@example.net', '1-112-080-8649x7469', '2018-11-19 21:17:19', '2019-04-16 15:38:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Parker', 'Kuhlman', 'rmiller@example.com', '617.694.2857x3357', '2011-11-29 02:18:36', '2016-04-04 17:03:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Melisa', 'Roberts', 'wlowe@example.com', '613.472.9269x80650', '2019-05-13 14:14:22', '2018-02-14 09:37:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Kenna', 'Konopelski', 'gklein@example.net', '229.562.4419x118', '2011-08-31 08:55:20', '2017-10-20 03:24:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Connie', 'Pouros', 'janick09@example.com', '749-089-2027x89494', '2015-11-28 23:38:44', '2016-05-25 07:21:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Ettie', 'Koepp', 'terence.klocko@example.net', '226-624-1881x473', '2011-09-17 06:57:43', '2019-03-10 22:40:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Domenick', 'Hoppe', 'bettie49@example.org', '1-634-228-6187', '2011-12-02 17:43:40', '2017-03-03 12:46:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Jayson', 'Emard', 'dean91@example.com', '(776)834-9073', '2013-03-20 03:43:24', '2012-03-26 04:38:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Isabel', 'Ruecker', 'macejkovic.felipe@example.com', '677-652-3409', '2011-07-05 01:10:13', '2016-06-09 20:30:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Geovanny', 'Renner', 'anna.grant@example.com', '00212967346', '2014-05-02 19:30:24', '2013-12-21 07:36:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Blanche', 'Nienow', 'nrowe@example.org', '1-607-906-0526', '2014-05-02 00:52:53', '2011-07-25 07:16:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Jamison', 'Schuster', 'howell.flossie@example.com', '(506)188-9306', '2020-02-15 16:14:54', '2015-07-21 13:09:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Jaunita', 'DuBuque', 'kulas.leopoldo@example.net', '+05(0)9043707754', '2013-08-19 11:35:46', '2011-09-07 20:50:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Jolie', 'DuBuque', 'oceane95@example.net', '(008)729-1656x98555', '2019-12-08 01:52:52', '2020-04-30 15:08:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Isac', 'Champlin', 'mwuckert@example.com', '549-772-7058', '2013-01-18 11:40:32', '2014-08-18 20:32:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Delta', 'Roob', 'padberg.tyler@example.org', '1-846-393-6599x6150', '2015-01-22 21:05:10', '2019-04-11 21:30:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Anais', 'Wisozk', 'bednar.chanelle@example.org', '611-470-8889x58574', '2017-12-07 01:33:29', '2014-05-22 10:27:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Isai', 'Mueller', 'xkuhic@example.net', '676.114.7694', '2012-04-13 12:59:51', '2012-01-04 23:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Hoyt', 'Kub', 'osanford@example.com', '1-083-286-9802', '2014-02-26 14:03:21', '2016-02-19 00:19:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Pablo', 'Kiehn', 'curtis.bode@example.com', '(638)132-0090x97159', '2018-11-03 12:54:12', '2019-03-08 04:17:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Gerda', 'Gleason', 'gerardo38@example.org', '1-470-170-4883x998', '2015-02-14 09:48:26', '2020-05-06 15:53:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Heaven', 'Brekke', 'benedict.stamm@example.org', '689.962.6765x61801', '2016-05-23 06:24:15', '2016-01-04 08:19:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Pasquale', 'Schimmel', 'zulauf.thelma@example.net', '977.790.9282x0420', '2020-02-03 21:37:56', '2014-04-04 23:31:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Deja', 'Rohan', 'reichert.kayley@example.net', '256.266.5318x4454', '2012-07-11 17:41:59', '2018-02-12 05:18:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Darion', 'Rempel', 'terrence.raynor@example.org', '572-450-6202x0093', '2015-06-17 08:59:13', '2014-06-04 23:06:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Blaze', 'Schuppe', 'darien.littel@example.net', '+43(6)3143243623', '2016-06-01 06:20:01', '2014-11-01 19:46:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Stan', 'Kilback', 'lenna83@example.org', '754.818.2896', '2016-12-05 10:40:13', '2019-03-03 22:22:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Leora', 'Hills', 'treva.braun@example.net', '308-242-6939', '2019-01-04 06:07:44', '2011-05-07 16:31:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Santos', 'Roob', 'nikolaus.ernesto@example.org', '+96(6)6118670787', '2013-02-14 00:33:23', '2020-03-10 12:50:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Olen', 'Thiel', 'cormier.joesph@example.org', '300-682-6614', '2017-05-07 23:06:19', '2012-02-02 12:31:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Tracy', 'Strosin', 'camron64@example.com', '509.844.5586x3504', '2011-09-18 06:13:08', '2016-03-26 12:36:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Antonetta', 'Goodwin', 'kertzmann.rickie@example.com', '+41(1)6180592185', '2020-06-29 03:39:43', '2019-03-26 21:46:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Serena', 'Cruickshank', 'matteo.aufderhar@example.org', '1-125-325-8838x74579', '2020-10-12 12:20:00', '2014-02-15 12:00:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Nigel', 'Kuvalis', 'ava84@example.net', '04284043589', '2012-10-02 14:49:36', '2011-05-29 01:22:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Elinore', 'Feil', 'pgislason@example.net', '+78(3)0999501677', '2013-06-16 08:42:24', '2017-10-10 01:44:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Julie', 'Fritsch', 'watson52@example.org', '1-129-568-9101x2656', '2020-05-06 21:16:10', '2018-01-01 14:41:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Vivien', 'Moen', 'annabel84@example.com', '474-759-3003x321', '2018-10-18 00:17:08', '2012-05-20 05:52:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Maybell', 'Yundt', 'arvel88@example.org', '141.561.1463x04054', '2021-04-02 14:38:34', '2019-01-27 22:44:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Edmund', 'Bartoletti', 'brent.mayert@example.net', '1-315-796-6546x3190', '2015-06-16 21:04:50', '2021-02-12 20:29:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Annabell', 'Beahan', 'xhansen@example.com', '359-982-2619x644', '2016-10-12 18:51:36', '2015-04-21 16:02:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Stephan', 'Conn', 'sfahey@example.net', '(645)768-3330x872', '2018-06-11 14:31:11', '2020-07-13 20:57:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Lawson', 'Grant', 'kglover@example.com', '979.353.1368x91633', '2014-04-14 08:12:52', '2016-03-20 11:51:21');


