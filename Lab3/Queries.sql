SELECT Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ, Н_ВЕДОМОСТИ.ЧЛВК_ИД
FROM Н_ТИПЫ_ВЕДОМОСТЕЙ
         RIGHT JOIN Н_ВЕДОМОСТИ ON Н_ВЕДОМОСТИ.ТВ_ИД = Н_ТИПЫ_ВЕДОМОСТЕЙ.ИД
WHERE Н_ТИПЫ_ВЕДОМОСТЕЙ.НАИМЕНОВАНИЕ = 'Экзаменационный лист'
  AND Н_ВЕДОМОСТИ.ЧЛВК_ИД >= 163249;


SELECT Н_ЛЮДИ.ИМЯ, Н_ВЕДОМОСТИ.ДАТА, Н_СЕССИЯ.ЧЛВК_ИД
FROM Н_ЛЮДИ
         LEFT JOIN Н_ВЕДОМОСТИ ON Н_ЛЮДИ.ИД = Н_ВЕДОМОСТИ.ЧЛВК_ИД
         LEFT JOIN Н_СЕССИЯ ON Н_СЕССИЯ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
WHERE Н_ЛЮДИ.ФАМИЛИЯ < 'Афанасьев'
  AND Н_ВЕДОМОСТИ.ИД = 1250981;


SELECT COUNT(*)
FROM Н_УЧЕНИКИ
         JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
WHERE ГРУППА = '3102'
  AND NOW()::DATE - ДАТА_РОЖДЕНИЯ::DATE > 20 * 365;


SELECT ГРУППА
FROM (SELECT ГРУППА, COUNT(*)
      FROM Н_УЧЕНИКИ
               JOIN Н_ПЛАНЫ ON Н_ПЛАНЫ.ИД = Н_УЧЕНИКИ.ПЛАН_ИД
               JOIN Н_ОТДЕЛЫ ON Н_ОТДЕЛЫ.ИД = Н_ПЛАНЫ.ОТД_ИД
      WHERE Н_ПЛАНЫ.УЧЕБНЫЙ_ГОД = '2010/2011'
        AND Н_ОТДЕЛЫ.ИМЯ_В_ИМИН_ПАДЕЖЕ = 'факультет компьютерных технологий и управления'
      GROUP BY ГРУППА) AS TEMP
WHERE COUNT = 5;


SELECT CLASS
FROM (SELECT CLASS, AVG(AGE) AS AVG_AGE
      FROM (SELECT ГРУППА AS CLASS, (NOW()::DATE - ДАТА_РОЖДЕНИЯ::DATE) / 365 AS AGE
            FROM Н_УЧЕНИКИ
                     JOIN Н_ЛЮДИ ON Н_ЛЮДИ.ИД = Н_УЧЕНИКИ.ЧЛВК_ИД) AS AVG
      GROUP BY CLASS) AS AVG_AGE_OF_CLASS
WHERE ROUND(AVG_AGE) = (SELECT MAX(AGE)
                        FROM (SELECT (NOW()::DATE - ДАТА_РОЖДЕНИЯ::DATE) / 365 AGE
                              FROM Н_УЧЕНИКИ
                                       JOIN Н_ЛЮДИ ON Н_ЛЮДИ.ИД = Н_УЧЕНИКИ.ЧЛВК_ИД
                              WHERE ГРУППА = '1100') AS MAX_AGE);


SELECT ГРУППА, Н_УЧЕНИКИ.ИД, Н_ЛЮДИ.ФАМИЛИЯ, Н_ЛЮДИ.ИМЯ, Н_ПЛАНЫ.НОМЕР
FROM Н_УЧЕНИКИ
         JOIN Н_ЛЮДИ ON Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ЛЮДИ.ИД
         JOIN Н_ПЛАНЫ ON Н_ПЛАНЫ.ИД = Н_УЧЕНИКИ.ПЛАН_ИД
         JOIN Н_ФОРМЫ_ОБУЧЕНИЯ ON Н_ФОРМЫ_ОБУЧЕНИЯ.ИД = Н_ПЛАНЫ.ФО_ИД
WHERE Н_ПЛАНЫ.ДАТА_УТВЕРЖДЕНИЯ::DATE < '2012-09-01'::DATE
  AND Н_ФОРМЫ_ОБУЧЕНИЯ.НАИМЕНОВАНИЕ IN ('Очная', 'Заочная');


SELECT DISTINCT Н_ЛЮДИ.ИД, Н_ЛЮДИ.ФАМИЛИЯ, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ
FROM Н_ЛЮДИ
         INNER JOIN Н_ЛЮДИ ЛЮДИ2 ON Н_ЛЮДИ.ФАМИЛИЯ = ЛЮДИ2.ФАМИЛИЯ
WHERE Н_ЛЮДИ.ИД != ЛЮДИ2.ИД
  AND Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ != ЛЮДИ2.ДАТА_РОЖДЕНИЯ
ORDER BY Н_ЛЮДИ.ФАМИЛИЯ;