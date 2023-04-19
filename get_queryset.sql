-- Показать работников у которых нет почты или почта не в корпоративном домене (домен dualbootpartners.com)

SELECT * FROM Employees WHERE Email IS NULL OR Email NOT LIKE '%@dualbootpartners.com';

-- Получить список работников нанятых в последние 30 дней

SELECT * FROM Employees WHERE Hire_date >= DATEADD(day, -30, GETDATE());

-- Найти максимальную и минимальную зарплату по каждому департаменту

SELECT Departments.name, MIN(Employees.salary), MAX(Employees.salary)
FROM Employees, Departments
WHERE Employees.department_id = Departments.id
GROUP BY Departments.name;

-- Посчитать количество работников в каждом регионе

SELECT Regions.name, COUNT(Employees.id)
FROM Employees, Departments, Locations, Regions
WHERE Employees.department_id = Departments.id AND Departments.location_id = Locations.id AND Locations.region_id = Regions.id
GROUP BY Regions.name;

-- Показать сотрудников у которых фамилия длиннее 10 символов

SELECT * FROM Employees WHERE LEN(Last_name) > 10;

-- Показать сотрудников с зарплатой выше средней по всей компании

SELECT * FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees);