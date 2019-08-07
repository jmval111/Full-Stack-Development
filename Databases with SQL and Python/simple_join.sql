-- Find the names of the individual animals that eat fish.
--
-- The animals table has columns (name, species, birthdate) for each individual.
-- The diet table has columns (species, food) for each food that a species eats.

--select animals.name, animals.species, diet.food
--from animals join diet --joins tables 'animals' and 'diet'
--on animals.species = diet.species --joins the two tables where species is the same!
--limit 10; --limit the number of results to 10

--Return only the names of the animals that eat fish
--select animals.name
--from animals join diet
--on animals.species = diet.species
--where diet.food = 'fish'
--limit 100

--Same query, but using the simple join without the 'join' command
select animals.name
from animals, diet
where animals.species = diet.species
and diet.food = 'fish'
limit 100

-----------------------------------
-- Practice with where vs. having --
-- where comes before the aggregation, and having comes after! --

-- Find the one food that is eaten by only one animal.
--
-- The animals table has columns (name, species, birthdate) for each
-- individual.
-- The diet table has columns (species, food) for each food that a
-- species eats.

select diet.food, diet.species, animals.name, count(food) as number_of_eaters
from animals, diet
where animals.species = diet.species
group by food
having number_of_eaters = 1;
