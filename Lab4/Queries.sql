SELECT Н_ВЕДОМОСТИ.ИД, Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ
FROM Н_ТИПЫ_ВЕДОМОСТЕЙ
         RIGHT JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ТВ_ИД = Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД
WHERE Н_ВЕДОМОСТИ.ИД > 1250981
  AND Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ > 'Перезачет';


SELECT Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.ИД
FROM Н_ЛЮДИ
         LEFT JOIN Н_ВЕДОМОСТИ ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
         LEFT JOIN Н_СЕССИЯ ON Н_СЕССИЯ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ < 'Соколов'
  AND Н_ВЕДОМОСТИ.ЧЛВК_ИД > 117219
  AND Н_СЕССИЯ.ДАТА < '2012-01-25';

