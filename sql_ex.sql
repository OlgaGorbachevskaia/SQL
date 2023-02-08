Задание: 1 
Найдите номер модели, скорость и размер жесткого диска для всех ПК 
стоимостью менее 500 дол. Вывести: model, speed и hd

Ответ: Select model, speed, hd 
from PC
Where price < 500

Задание: 2 
Найдите производителей принтеров. Вывести: maker

Ответ: Select DISTINCT maker
from Product
where type='Printer'

Задание: 3 
Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

Ответ: Select model, ram, screen
from laptop
where price > 1000

Задание: 4
Найдите все записи таблицы Printer для цветных принтеров.

Ответ: Select * from Printer
where color = 'y'

Задание: 5
Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.

Ответ: Select model, speed, hd 
from pc
where pc.cd IN ('12x', '24x') and price < 600

Задание: 6 
Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.

Ответ: Select Distinct product.maker, laptop.speed
from product
Join laptop
on product.model=laptop.model and laptop.hd >= 10

Задание: 7 
Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

Ответ: SELECT DISTINCT product.model, pc.price
FROM Product JOIN pc ON product.model = pc.model WHERE maker = 'B'
UNION
SELECT DISTINCT product.model, laptop.price
FROM product JOIN laptop ON product.model=laptop.model WHERE maker='B'
UNION
SELECT DISTINCT product.model, printer.price
FROM product JOIN printer ON product.model=printer.model WHERE maker='B'

Задание: 8 
Найдите производителя, выпускающего ПК, но не ПК-блокноты.

Ответ: Select distinct maker 
from product
WHERE type = 'PC' AND 
      maker NOT IN (SELECT maker 
                    FROM Product 
                    WHERE type = 'Laptop'
                    )
                    
Задание: 9 
Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

Ответ: select DISTINCT maker from product
left join pc ON product.model = pc.model
where pc.speed >= 450

Задание: 10 
Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

Ответ: SELECT DISTINCT model, price
FROM printer
WHERE price = (SELECT MAX(price) FROM printer)

Задание: 11
Найдите среднюю скорость ПК.

Ответ: SELECT AVG(speed)
FROM pc

Задание: 12 (Serge I: 2002-11-02)
Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.

Ответ: SELECT AVG(speed)
FROM laptop
where price > 1000

Задание: 13
Найдите среднюю скорость ПК, выпущенных производителем A.

Ответ: SELECT AVG(speed)
FROM pc INNER JOIN 
product ON product.model = pc.model
where product.maker = 'A'

Задание: 14
Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
Ответ: select ships.class, ships.name, classes.country from Ships 

left join Classes ON Classes.class = Ships.class
where Classes.numGuns >= 10

Задание: 15 
Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

Ответ: SELECT hd from PC
GROUP BY hd
HAVING count(model) >= 2
