CREATE TABLE Regions (
   id SERIAL PRIMARY KEY,
   name VARCHAR(50)
);

CREATE TABLE Locations (
   id SERIAL PRIMARY KEY,
   address VARCHAR(100),
   region_id INTEGER REFERENCES Regions(id)
);

CREATE TABLE Departments (
   id SERIAL PRIMARY KEY,
   name VARCHAR(50),
   location_id INTEGER REFERENCES Locations(id),
   manager_id INTEGER REFERENCES Employees(id)
);

CREATE TABLE Employees (
   id SERIAL PRIMARY KEY,
   name VARCHAR(50),
   last_name VARCHAR(50),
   hire_date DATE,
   salary INTEGER,
   email VARCHAR(50),
   manager_id INTEGER REFERENCES Employees(id),
   department_id INTEGER REFERENCES Departments(id)
);