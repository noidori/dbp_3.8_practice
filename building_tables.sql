CREATE TABLE Employees (
    Name VARCHAR,
    Last_name VARCHAR,
    Hire_date DATE,
    Salary INTEGER,
    Email VARCHAR,
    Manager_id INTEGER,
    Department_id INTEGER,
    PRIMARY KEY (Employee_id),
    FOREIGN KEY (Manager_id) REFERENCES Employees(Employee_id),
    FOREIGN KEY (Department_id) REFERENCES Departments(Department_id)
);

CREATE TABLE Departments (
    Name VARCHAR,
    Location_id INTEGER,
    Manager_id INTEGER,
    PRIMARY KEY (Department_id),
    FOREIGN KEY (Location_id) REFERENCES Locations(Location_id),
    FOREIGN KEY (Manager_id) REFERENCES Employees(Employee_id)
);

CREATE TABLE Locations (
    Name VARCHAR,
    Address VARCHAR,
    Region_id INTEGER,
    PRIMARY KEY (Location_id),
    FOREIGN KEY (Region_id) REFERENCES Regions(Region_id)
);

CREATE TABLE Regions (
    Name VARCHAR,
    PRIMARY KEY (Region_id)
);