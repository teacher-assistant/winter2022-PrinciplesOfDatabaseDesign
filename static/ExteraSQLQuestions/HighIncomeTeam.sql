# Question : https://quera.org/problemset/102260/

-- Database Creation
CREATE TABLE teams(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE employees(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

-- Inserting some fake data:
insert into teams(id, name) values (1, "Shopping-Operation");
insert into teams(id, name) values (2, "Fulfillment");
insert into teams(id, name) values (3, "Marketplace");

insert into employees(id, name, salary, team_id) values (1, "Ali", 70000, 1);
insert into employees(id, name, salary, team_id) values (2, "Akbar", 90000, 1);
insert into employees(id, name, salary, team_id) values (3, "Alireza", 80000, 2);
insert into employees(id, name, salary, team_id) values (4, "Bahram", 60000, 2);
insert into employees(id, name, salary, team_id) values (5, "Asghar", 90000, 1);

--Q1:
SELECT MAX(salary) AS "salary"
FROM employees;

--Q2:
SELECT teams.`name` AS "team", employees.`name` AS "employee", employees.salary
FROM employees INNER JOIN teams ON employees.team_id=teams.id INNER JOIN(
	SELECT max(employees.salary) AS "max salary of team", teams.id
	FROM employees INNER JOIN teams ON teams.id=employees.team_id
	GROUP BY teams.`name`
) AS max_sal ON max_sal.id=employees.team_id
WHERE employees.salary=max_sal.`max salary of team`
ORDER BY employees.salary DESC;