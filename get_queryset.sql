-- Показать работников у которых нет почты или почта не в корпоративном домене (домен dualbootpartners.com)

SELECT * FROM Employees WHERE Email IS NULL OR Email NOT LIKE '%@dualbootpartners.com';

-- Получить список работников нанятых в последние 30 дней

SELECT * FROM Employees WHERE Hire_date >= DATEADD(day, -30, GETDATE());

-- Найти максимальную и минимальную зарплату по каждому департаменту

SELECT Department_id, MAX(Salary) AS Max_Salary, MIN(Salary) AS Min_Salary
FROM Employees
GROUP BY Department_id;

-- Посчитать количество работников в каждом регионе

SELECT Regions.Name, COUNT(*) AS Num_Employees
FROM Employees
JOIN Departments ON Employees.Department_id = Departments.Department_id
JOIN Locations ON Departments.Location_id = Locations.Location_id
JOIN Regions ON Locations.Region_id = Regions.Region_id
GROUP BY Regions.Name;

-- Показать сотрудников у которых фамилия длиннее 10 символов

SELECT * FROM Employees WHERE LEN(Last_name) > 10;

-- Показать сотрудников с зарплатой выше средней по всей компании

SELECT * FROM Employees WHERE Salary > (SELECT AVG(Salary) FROM Employees);