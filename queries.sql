/*Queries that provide answers to the questions from all projects.*/

SELECT name from animals WHERE name LIKE '%mon';
SELECT * from animals WHERE EXTRACT(year from date_of_birth) BETWEEN 2016 AND 2019;
SELECT name from animals WHERE neutered=true AND escape_attempts < 3;
SELECT date_of_birth from animals WHERE name='Agumon' OR name='Pikachu';
SELECT name, escape_attempts from animals WHERE weight_kg > 10.5;
SELECT * from animals WHERE neutered = true;
SELECT * from animals WHERE name != 'Gabumon';
SELECT * from animals WHERE weight_kg >= 10.4 AND weight_kg <= 17.3; 

begin;

UPDATE animals SET species = 'unspecified';

rollback;

select * from animals;

begin;
UPDATE animals set species = 'digimon' WHERE name like '%mon';
UPDATE animals set species = 'pokemon' WHERE name not like '%mon';

commit;

select * from animals;

begin;

DELETE from animals;

rollback;

select * from animals;

begin;

savepoint backup1;

DELETE from animals WHERE date_of_birth > '2022-01-01';

rollback to backup1;

select * from animals;

savepoint backup2;

UPDATE animals SET weight_kg = weight_kg * -1;

select * from animals;

rollback to backup2;

select * from animals;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg <0;

commit;
select * from animals;

SELECT count(*) FROM animals;

select * from animals;

SELECT count(*) FROM animals WHERE escape_attempts = 0;

select * from animals;

SELECT cast(avg(weight_kg) AS DECIMAL(5,2)) FROM animals;

select * from animals;

SELECT max(escape_attempts),neutered FROM animals WHERE neutered = true OR neutered = false GROUP BY neutered ORDER BY max(escape_attempts) DESC;

select * from animals;

SELECT max(weight_kg),min(weight_kg) FROM animals;

select * from animals;

SELECT  cast(avg(escape_attempts) AS DECIMAL(5,2)) FROM animals WHERE EXTRACT(year from date_of_birth) BETWEEN 1990 and 2000;

select * from animals;