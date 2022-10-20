/* Database schema to keep the structure of entire database. */
drop TABLE if exists animals;
CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    escape_attempts NUMERIC NOT NULL,
    neutered BOOLEAN NOT NULL,
    weight_kg DECIMAL NOT NULL
    
);
 ALTER TABLE animals ADD COLUMN species VARCHAR(100);