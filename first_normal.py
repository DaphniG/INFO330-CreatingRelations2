import sqlite3

# Connect to the SQLite3 database
conn = sqlite3.connect('pokemon.sqlite')
c = conn.cursor()
c.execute("DROP TABLE IF EXISTS abilities_new")


# Create a new table to store the split values
c.execute('''CREATE TABLE abilities_new
             (ability TEXT, num TEXT)''')

# Loop through and split by commas each of the ability and add to new table
c.execute("SELECT abilities, pokedex_number FROM imported_pokemon_data")
rows = c.fetchall()
for row in rows:
    ability = row[0].split(',')
    number = row[1]
    for t in ability:
        c.execute("INSERT INTO abilities_new (ability, num) VALUES (?,?)", (t, number))
        
conn.commit()
c.close()
