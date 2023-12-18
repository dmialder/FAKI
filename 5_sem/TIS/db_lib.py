from sqlalchemy import create_engine, text

class Film(object):
    def __init__(self):
        self._engine = create_engine(
            "sqlite:///database.db", echo=True
        )
    
    def get_films(self):
        sql = text(f"""SELECT film.id, film.film_name, film.film_year
                   FROM film;""")

        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        ret = []
        for record in sql_result:
            ret.append(record)
        return ret
    
    def get_film(self, film_id):
        sql = text(f"""SELECT * FROM film WHERE id = {film_id}""")

        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        return list(sql_result)[0]
    
    def get_film_genres(self, film_id):
        sql = text(f"""SELECT GROUP_CONCAT(genre.genre_name, ', ')
                   FROM film_genre JOIN genre ON film_genre.genre_id = genre.id
                   WHERE film_genre.film_id = {film_id};""")
        
        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        return list(sql_result)[0]
    
    def get_film_countries(self, film_id):
        sql = text(f"""SELECT GROUP_CONCAT(country.country_name, ', ')
                   FROM film_country JOIN country ON film_country.country_id = country.id
                   WHERE film_country.film_id = {film_id};""")
        
        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        return list(sql_result)[0]

    def get_people(self):
        sql = text(f"""SELECT person.id, person.person_name, person.year_of_birth, year_of_death.year_of_death
                    FROM person OUTER LEFT JOIN year_of_death ON person.id = year_of_death.person_id;""")
        
        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        ret = []
        for record in sql_result:
            ret.append(record)
        return ret
    
    def get_person(self, person_id):
        sql = text(f"""SELECT person.id, person.person_name, person.year_of_birth, year_of_death.year_of_death
            FROM person OUTER LEFT JOIN year_of_death ON person.id = year_of_death.person_id
            WHERE person.id = {person_id};""")

        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        return list(sql_result)
    
    def get_person_countries(self, person_id):
        sql = text(f"""SELECT GROUP_CONCAT(country.country_name, ', ')
                   FROM person_country JOIN country ON person_country.country_id = country.id
                   WHERE person_country.person_id = {person_id};""")
        
        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        return list(sql_result)[0]
    
    def get_film_people(self, film_id):
        sql = text(f"""SELECT person.id, person.person_name, profession.profession_name
            FROM film_person_profession
            JOIN person ON film_person_profession.person_id = person.id
            JOIN profession ON film_person_profession.profession_id = profession.id
            WHERE film_person_profession.film_id = {film_id};""")

        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        ret = []
        for record in sql_result:
            ret.append(record)
        return ret
    
    def get_person_films(self, person_id):
        sql = text(f"""SELECT film.id, film.film_name, profession.profession_name
            FROM film_person_profession
            JOIN film ON film_person_profession.film_id = film.id
            JOIN profession ON film_person_profession.profession_id = profession.id
            WHERE film_person_profession.person_id = {person_id};""")

        with self._engine.connect() as cn:
            sql_result = cn.execute(sql)
        ret = []
        for record in sql_result:
            ret.append(record)
        return ret

    