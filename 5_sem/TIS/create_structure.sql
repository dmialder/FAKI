CREATE TABLE film(
    id INTEGER NOT NULL,
    film_name VARCHAR(50) NOT NULL,
    film_year INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE genre(
    id INTEGER NOT NULL,
    genre_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE profession(
    id INTEGER NOT NULL,
    profession_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE country(
    id INTEGER NOT NULL,
    country_name VARCHAR (30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE person(
    id INTEGER NOT NULL,
    person_name VARCHAR (100) NOT NULL,
    year_of_birth INTEGER NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE film_person_profession(
    film_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    profession_id INTEGER NOT NULL,
    PRIMARY KEY (film_id, person_id, profession_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (person_id) REFERENCES person(id),
    FOREIGN KEY (profession_id) REFERENCES profession(id)
);

CREATE TABLE film_genre(
    film_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    PRIMARY KEY (film_id, genre_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE film_country(
    film_id INTEGER NOT NULL,
    country_id INTEGER NOT NULL,
    PRIMARY KEY (film_id, country_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (country_id) REFERENCES country(id)
);

CREATE TABLE year_of_death(
    person_id INTEGER NOT NULL,
    year_of_death INTEGER NOT NULL,
    PRIMARY KEY (person_id),
    FOREIGN KEY (person_id) REFERENCES person(id)
);

CREATE TABLE person_country(
    person_id INTEGER NOT NULL,
    country_id INTEGER NOT NULL,
    PRIMARY KEY (person_id, country_id),
    FOREIGN KEY (person_id) REFERENCES person(id),
    FOREIGN KEY (country_id) REFERENCES country(id)
);