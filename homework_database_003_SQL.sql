-- 1.Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания
select *
from staff
order by salary;

select *
from staff
order by salary desc;

-- 2. Выведите 5 максимальных заработных плат (salary)
select *
from staff
order by salary desc
limit 5;


-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
select post, sum(salary)
from staff
group by post;

-- 4. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.
select count(*)
from staff
where post='рабочий' and age between 24 and 49;

-- 5. Найти количество специальностей
select count(*)
from (select distinct post from staff) as temp;

-- 6. Вывести специальности, у которых средний возраст сотрудника меньше 30 лет
select post, avg(age)
from staff
group by post
having avg(age)<30;