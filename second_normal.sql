-- Creating table for abilities in order to remove partial dependency
CREATE TABLE Abilities (
  pokedex_number INT,
  ability TEXT,
  FOREIGN KEY (pokedex_number) REFERENCES first_normalized(pokedex_number)
);

-- Moving the ability column over while keeping pokedex_number as the primary key
INSERT INTO Abilities (pokedex_number, ability)
SELECT pokedex_number, ability
FROM first_normalized;

-- Creating table for Type in order to remove partial dependency
CREATE TABLE Type (
  pokedex_number INT,
  type1 TEXT,type2 TEXT,                      
  FOREIGN KEY (pokedex_number) REFERENCES first_normalized(pokedex_number)
);

-- Moving the type1 and type2 column over while keeping pokedex_number as the primary key
INSERT INTO Type (pokedex_number, type1, type2)
SELECT pokedex_number ,type1, type2
FROM first_normalized;

ALTER TABLE first_normalized  DROP ability;
ALTER TABLE first_normalized  DROP type1;
ALTER TABLE first_normalized  DROP type2;


