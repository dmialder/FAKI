INSERT INTO film (id, film_name, film_year)
VALUES 
(1001, "Scarface", 1983),
(1002, "Rambo: Last Blood", 2019),
(1003, "Tulsa King", 2022),
(1004, "The Lord of the Rings: The Fellowship of the Ring", 2001),
(1005, "Lord of War", 2005);

INSERT INTO genre (id, genre_name)
VALUES
(101, "action"),
(102, "thriller"),
(103, "romantic comedy"),
(104, "comedy"),
(105, "drama"),
(106, "western film"),
(107, "horror"),
(108, "adventure"),
(109, "dark comedy"),
(110, "mystery"),
(111, "narrative"),
(112, "crime"),
(113, "fantasy");

INSERT INTO profession (id, profession_name)
VALUES
(11, "director"),
(12, "writer"),
(13, "producer"),
(14, "actor");

INSERT INTO country (id, country_name) 
VALUES
(501, "USA"),
(502, "Italia"),
(503, "USSR"),
(504, "Russia"),
(505, "France"),
(506, "Mexico"),
(507, "Spain"),
(508, "Bulgaria"),
(509, "Hong Kong"),
(510, "Israil"),
(511, "Iran"),
(512, "New Zealand"),
(513, "England");

INSERT INTO person (id, person_name, year_of_birth) 
VALUES
(10001, "Brian De Palma", 1940),
(10002, "Oliver Stone", 1946),
(10003, "Martin Bregman", 1926),
(10004, "Al Pacino", 1940),
(10005, "Mark Margolis", 1939),
(10006, "Sylvester Stallone", 1946),
(10007, "Adrian Grunberg", 1975),
(10008, "Avi Lerner", 1947),
(10009, "Dan Gordon", 1947),
(10010, "Taylor Sheridan", 1969),
(10011, "Terence Winter", 1960),
(10012, "Bob Yari", 1961),
(10013, "Peter Jackson", 1961),
(10014, "Berrie M. Osborne", 1944),
(10015, "Fran Walsh", 1959),
(10016, "Philippa Boyens", 1962),
(10017, "Elijan Wood", 1981),
(10018, "Ian McKellen", 1939),
(10019, "Andrew Niccol", 1964),
(10020, "Chris Roberts", 1968),
(10021, "Philippe Rousselet", 1968),
(10022, "Nicolas Cage", 1964),
(10023, "Jared Leto", 1971);

INSERT INTO film_person_profession (film_id, person_id, profession_id)
VALUES
(1001, 10001, 11),
(1001, 10002, 12),
(1001, 10003, 13),
(1001, 10004, 14),
(1001, 10005, 14),
(1002, 10007, 11),
(1002, 10009, 12),
(1002, 10006, 12),
(1002, 10008, 13),
(1002, 10006, 14),
(1003, 10010, 11),
(1003, 10010, 12),
(1003, 10011, 12),
(1003, 10012, 13),
(1003, 10006, 13),
(1003, 10006, 14),
(1004, 10013, 11),
(1004, 10014, 13),
(1004, 10015, 12),
(1004, 10016, 12),
(1004, 10017, 14),
(1004, 10018, 14),
(1005, 10019, 11),
(1005, 10019, 13),
(1005, 10019, 12),
(1005, 10020, 13),
(1005, 10021, 13),
(1005, 10022, 13),
(1005, 10022, 14),
(1005, 10023, 14);

INSERT INTO film_genre (film_id, genre_id)
VALUES
(1001, 101),
(1001, 105),
(1001, 112),
(1002, 101),
(1002, 102),
(1002, 112),
(1003, 112),
(1003, 105),
(1003, 104),
(1004, 113),
(1004, 108),
(1005, 112),
(1005, 105);

INSERT INTO film_country (film_id, country_id)
VALUES
(1001, 501),
(1002, 501),
(1002, 509),
(1002, 505),
(1002, 508),
(1002, 507),
(1003, 501),
(1004, 501),
(1004, 512),
(1005, 501);

INSERT INTO year_of_death (person_id, year_of_death)
VALUES
(1003, 2018),
(1005, 2023);

INSERT INTO person_country (person_id, country_id)
VALUES
(10001, 501),
(10002, 501),
(10003, 501),
(10004, 501),
(10005, 501),
(10006, 501),
(10007, 501),
(10008, 501),
(10008, 510),
(10009, 501),
(10010, 501),
(10011, 501),
(10012, 501),
(10012, 511),
(10013, 512),
(10014, 501),
(10015, 512),
(10016, 512),
(10017, 501),
(10018, 513),
(10019, 512),
(10020, 501),
(10020, 513),
(10021, 505),
(10022, 501),
(10023, 501);