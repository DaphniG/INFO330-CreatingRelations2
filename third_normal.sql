-- Created a seperate stats table to eliminate transitive dependicies
Create table Stats(pokedex_number INT,"hp" TEXT,"attack" TEXT,"defense" TEXT,"sp_attack" TEXT,
  "sp_defense" TEXT,"speed" TEXT,"generation" TEXT);

INSERT INTO Stats(pokedex_number ,"hp" ,"attack","defense","sp_attack",
  "sp_defense","speed",generation)                                                      
SELECT pokedex_number ,"hp" ,"attack","defense","sp_attack",
  "sp_defense","speed",generation
FROM first_normalized;

-- Created a seperate general info table to eliminate transitive dependicies
create table General(pokedex_number INT,"name" TEXT,"is_legendary");

INSERT INTO General(pokedex_number,name,is_legendary)                                                      
SELECT pokedex_number,name,is_legendary
FROM first_normalized; 

--Dropped the columns that were moved to seperate tables
ALTER TABLE first_normalized  DROP attack;
ALTER TABLE first_normalized  DROP defense;
ALTER TABLE first_normalized  DROP hp;
ALTER TABLE first_normalized  DROP sp_attack;
ALTER TABLE first_normalized  DROP sp_defense;
ALTER TABLE first_normalized  DROP speed;
ALTER TABLE first_normalized  DROP generation;
ALTER TABLE first_normalized  DROP is_legendary;
ALTER TABLE first_normalized  DROP name;



