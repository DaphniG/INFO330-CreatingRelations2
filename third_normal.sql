
Create table Stats(pokedex_number INT,"hp" TEXT,"attack" TEXT,"defense" TEXT,"sp_attack" TEXT,
  "sp_defense" TEXT,"speed" TEXT,"generation" TEXT);

INSERT INTO Stats(pokedex_number ,"hp" ,"attack","defense","sp_attack",
  "sp_defense","speed",generation)                                                      
SELECT pokedex_number ,"hp" ,"attack","defense","sp_attack",
  "sp_defense","speed",generation
FROM normalized;

create table General(pokedex_number INT,"name" TEXT,"is_legendary");

INSERT INTO General(pokedex_number,name,is_legendary)                                                      
SELECT pokedex_number,name,is_legendary
FROM normalized; 


ALTER TABLE normalized  DROP attack;
ALTER TABLE normalized  DROP defense;
ALTER TABLE normalized  DROP hp;
ALTER TABLE normalized  DROP sp_attack;
ALTER TABLE normalized  DROP sp_defense;
ALTER TABLE normalized  DROP speed;
ALTER TABLE normalized  DROP generation;
ALTER TABLE normalized  DROP is_legendary;
ALTER TABLE normalized  DROP name;



