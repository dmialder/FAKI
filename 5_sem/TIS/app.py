from flask import Flask, render_template
from db_lib import Film

app = Flask(__name__)
bd = Film()

@app.route("/")
def root():
    return render_template("root.html")

@app.route("/films")
def films():
  films_list = bd.get_films()
  ret = render_template("films.html.j2",films=films_list)
  return ret

@app.route("/people")
def people():
    people = bd.get_people()
    return render_template("people.html.j2", people=people)


@app.route("/films/<film_id>")
def film(film_id=None):
    film = bd.get_film(film_id)
    genres = bd.get_film_genres(film_id)
    countries = bd.get_film_countries(film_id)
    people = bd.get_film_people(film_id)
    return render_template(
        "film.html.j2",
        name=film[1],
        year=film[2],
        genres=genres,
        countries=countries,
        people=people
    )


@app.route("/people/<person_id>")
def person(person_id=None):
    person = bd.get_person(person_id)
    print("LOLKEKCHEBUREK!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
    print(person)
    countries = bd.get_person_countries(person_id)
    films = bd.get_person_films(person_id)
    return render_template(
        "person.html.j2",
        name=person[0][1],
        year_of_birth=person[0][2],
        year_of_death=person[0][3],
        countries=countries,
        films=films,
    )

app.run(host='0.0.0.0',port=6004)