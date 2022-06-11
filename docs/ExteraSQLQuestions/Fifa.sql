-- Question : https://quera.org/problemset/17906/

-- Database Creation:
CREATE TABLE Person(
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(50) 
);


CREATE TABLE Coach(
    id VARCHAR(50) PRIMARY KEY,
    team VARCHAR(50) , 
    FOREIGN KEY (id) REFERENCES Person(id)
);

CREATE TABLE Player(
    id VARCHAR(50) PRIMARY KEY,
    team VARCHAR(50) , 
    age INT , 
    FOREIGN KEY (id) REFERENCES Person(id)
);

CREATE TABLE Refree(
    id VARCHAR(50) PRIMARY KEY,
    fifa_grade VARCHAR(50) , 
    FOREIGN KEY (id) REFERENCES Person(id)
);

CREATE TABLE Team(
    name varchar(30) PRIMARY KEY
);

-- Inserting some fake data:

-- player:Liverpool F.C.
insert into Person(id, name) values (1, "Mohamed Salah");
insert into Person(id, name) values (2, "Sadio Mané");
insert into Person(id, name) values (3, "Luis Díaz");

-- player:Real Madrid
insert into Person(id, name) values (4, "Karim Benzema");
insert into Person(id, name) values (5, "Antonio Rüdiger");
insert into Person(id, name) values (6, "Marcelo Vieira");

-- player:Man United
insert into Person(id, name) values (7, "Paul Pogba");
insert into Person(id, name) values (8, "Mason Greenwood");
insert into Person(id, name) values (9, "Harry Maguire");

-- player:Chelsea
insert into Person(id, name) values (10, "Paul Pogba");
insert into Person(id, name) values (11, "Mason Greenwood");
insert into Person(id, name) values (12, "Harry Maguire");

-- coach
insert into Person(id, name) values (13, "Jürgen Klopp");
insert into Person(id, name) values (14, "Carlo Ancelotti");
insert into Person(id, name) values (15, "Erik ten Hag");

-- refree
insert into Person(id, name) values (16, "Pierluigi Collina");
insert into Person(id, name) values (17, "Felix Brych");
insert into Person(id, name) values (18, "Alireza Faghani");

insert into Team(name) values("Liverpool F.C.");
insert into Team(name) values("Real Madrid");
insert into Team(name) values("Man United");
insert into Team(name) values("Chelsea");

insert into Coach(id, team) values(13, "Liverpool F.C.");
insert into Coach(id, team) values(14, "Real Madrid");
insert into Coach(id, team) values(15, "Man United");

insert into Refree(id, fifa_grade) values(16, 100);
insert into Refree(id, fifa_grade) values(17, 90);
insert into Refree(id, fifa_grade) values(18, 80);

insert into Player(id, team, age) values(1, "Liverpool F.C.", 29);
insert into Player(id, team, age) values(2, "Liverpool F.C.", 30);
insert into Player(id, team, age) values(3, "Liverpool F.C.", 25);
insert into Player(id, team, age) values(13, "Liverpool F.C.", 54);
insert into Player(id, team, age) values(14, "Liverpool F.C.", 63);
insert into Player(id, team, age) values(4, "Real Madrid", 34);
insert into Player(id, team, age) values(5, "Real Madrid", 29);
insert into Player(id, team, age) values(6, "Real Madrid", 34);
insert into Player(id, team, age) values(7, "Man United", 29);
insert into Player(id, team, age) values(8, "Man United", 20);
insert into Player(id, team, age) values(9, "Man United", 29);

-- Q1:
INSERT INTO player(id, team, age)
    SELECT id, "Chelsea", 24
    FROM person
    WHERE id NOT IN (
        SELECT id FROM coach
        UNION
        SELECT id FROM player
        UNION
        SELECT id FROM refree
    );

-- Q2:
SELECT coach.id, person.name
FROM coach INNER JOIN player ON coach.id=player.id INNER JOIN person ON coach.id=person.id
WHERE coach.team <> player.team ;

-- Q3:
ALTER TABLE Player
ADD FOREIGN KEY (team) REFERENCES team(name) ON DELETE CASCADE;