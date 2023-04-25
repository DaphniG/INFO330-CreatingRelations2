-- getting rid of the brackets
UPDATE abilities_new SET ability = REPLACE(ability,'[','');
UPDATE abilities_new SET ability = REPLACE(ability,']','');
-- get rid of all white spaces
UPDATE abilities_new SET ability = trim(ability);
-- Joins table with in first normal form so all the abilities get its own cell
select * from abilities_new join imported_pokemon_data on abilities_new.num = imported_pokemon_data.pokedex_number;
-- Creating a copy of this
create table first_normalized(ability TEXT, num TEXT,"against_bug" TEXT,
  "against_dark" TEXT,
  "against_dragon" TEXT,
  "against_electric" TEXT,
  "against_fairy" TEXT,
  "against_fight" TEXT,
  "against_fire" TEXT,
  "against_flying" TEXT,
  "against_ghost" TEXT,
  "against_grass" TEXT,
  "against_ground" TEXT,
  "against_ice" TEXT,
  "against_normal" TEXT,
  "against_poison" TEXT,
  "against_psychic" TEXT,
  "against_rock" TEXT,
  "against_steel" TEXT,
  "against_water" TEXT,
  "attack" TEXT,
  "base_egg_steps" TEXT,
  "base_happiness" TEXT,
  "base_total" TEXT,
  "capture_rate" TEXT,
  "classfication" TEXT,
  "defense" TEXT,
  "experience_growth" TEXT,
  "height_m" TEXT,
  "hp" TEXT,
  "name" TEXT,
  "percentage_male" TEXT,
  "pokedex_number" TEXT,
  "sp_attack" TEXT,
  "sp_defense" TEXT,
  "speed" TEXT,
  "type1" TEXT,
  "type2" TEXT,
  "weight_kg" TEXT,"generation" TEXT,"is_legendary" TEXT);
  -- Insterting the data in
  insert into first_normalized select * from abilities_new join imported_pokemon_data on abilities_new.num = imported_pokemon_data.pokedex_number;
  --Dropping the num column because its the same thing as pokedex_number
  ALTER TABLE first_normalized  DROP num;
