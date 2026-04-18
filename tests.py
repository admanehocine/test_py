etudiants=[
    {
        "nom":"gloria",
        "note":12
    },
    {
        "nom":"hocine",
        "note":15
    },
    {
        "nom":"frani",
        "note":20
    }
]

note_max = 0
nom=""

for a in etudiants:
    if a["note"] > note_max:
        note_max = a["note"]
        nom=a["nom"]

print("la meilleur note de ",nom, " est:", note_max)

def get_best_note(list_):
    note_max = 0
    nom=""

    for a in list_:
        if a["note"] > note_max:
            note_max = a["note"]
            nom=a["nom"]
    return "la meilleur note de ",nom, " est:", note_max

get_best_note(etudiants)