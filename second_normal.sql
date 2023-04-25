CREATE TABLE Abilities (
  pokedex_number INT,
  ability TEXT,
  FOREIGN KEY (pokedex_number) REFERENCES normalized(pokedex_number)
);

INSERT INTO Abilities (pokedex_number, ability)
SELECT pokedex_number, ability
FROM normalized;

CREATE TABLE Type (
  pokedex_number INT,
  type1 TEXT,type2 TEXT,                      
  FOREIGN KEY (pokedex_number) REFERENCES normalized(pokedex_number)
);

INSERT INTO Type (pokedex_number, type1, type2)
SELECT pokedex_number ,type1, type2
FROM normalized;



