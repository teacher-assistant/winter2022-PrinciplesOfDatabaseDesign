-- Question : https://quera.org/problemset/33031/

-- Database Creation:
CREATE TABLE singer(
    name VARCHAR(50) PRIMARY KEY,
    email VARCHAR(50),
    account_number VARCHAR(50),
    balance INT
);

CREATE TABLE song(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    singer VARCHAR(50),
    producer VARCHAR(50),
    album VARCHAR(50),
    total_sell INT
);

-- Insert some fake data:
INSERT INTO singer(name, email, account_number, balance) values("Taylor Swift", "TY@gmail.com", "TYSW", 1000);
INSERT INTO singer(name, email, account_number, balance) values("Ed Sheeran", "ED@gmail.com",  "EDSH", 2000);
INSERT INTO singer(name, email, account_number, balance) values("Justin Bieber", "Justin@gmail.com",  "JB", 0);
INSERT INTO singer(name, email, account_number, balance) values("Ariana Grande", "Ariana@gmail.com",  "ARGR", 500);
INSERT INTO singer(name, email, account_number, balance) values("Billie Eilish", "Billie@gmail.com",  "BIEI", 0);
INSERT INTO singer(name, email, account_number, balance) values("Snoop Dogg", "Snoop@gmail.com",  "SNDO", 5000);
INSERT INTO singer(name, email, account_number, balance) values("Eminem", "Em@gmail.com",  "EM", 7000);

INSERT INTO song(id, name, singer, producer, album, total_sell) values(1, "S1", "Snoop Dogg", "dr.dre", "A1", 5000);
INSERT INTO song(id, name, singer, producer, album, total_sell) values(2, "S2", "Snoop Dogg", "dr.dre", "A1", 3000);
INSERT INTO song(id, name, singer, producer, album, total_sell) values(3, "S3", "Snoop Dogg", "Ye", "A1", 1000);
INSERT INTO song(id, name, singer, producer, album, total_sell) values(4, "S4", "Eminem", "dr.dre", "A2", 9000);
INSERT INTO song(id, name, singer, producer, album, total_sell) values(5, "S5", "Eminem", "Hit-Boy", "A2", 3000);
INSERT INTO song(id, name, singer, producer, album, total_sell) values(6, "S6", "Eminem", "Hit-Boy", "A2", 3000);

-- Q1:
SELECT singer.`name`
FROM singer
WHERE singer.balance=0;

-- Q2:
CREATE TABLE producer(
   name VARCHAR(20) PRIMARY KEY
);
INSERT INTO producer(name)
   SELECT DISTINCT(producer)
   FROM song;

-- Q3:
SELECT singer.`name`, sum(song.total_sell)
FROM singer INNER JOIN song ON singer.`name`=song.singer
WHERE song.producer="dr.dre"
GROUP BY singer.`name`
ORDER BY SUM(song.total_sell) DESC
LIMIT 2 OFFSET 1;