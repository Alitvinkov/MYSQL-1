-- Тема Агрегация, задание 3
-- (по желанию) Подсчитайте произведение чисел в столбце таблицы

use homework5;
DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL
) COMMENT = 'Каталог';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
 
  select * from catalogs;
  
 -- Воспользуемся следующим свойством логарифмов:
-- Логарифм произведения равен сумме логарифмов
-- От каждого значения в некотором поле field таблицы tab берём натуральный логарифм,
-- затем считаем сумму этих логарифмов и затем экспонента возводится в степень, равную этой сумме 
SELECT ROUND(EXP(SUM(LN(id)))) FROM catalogs;