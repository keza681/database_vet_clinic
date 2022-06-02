/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
      id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50),
    date_of_birth DATE,
    escape_attemps INT,
    neutered BOOLEAN,
    weight_kg DECIMAL 
);

ALTER TABLE animals ADD species VARCHAR(100); 

--Creating a table named owners
CREATE TABLE owners(
   id BIGSERIAL PRIMARY KEY,
   full_name VARCHAR(255),
   age INT
);

--Create a table named species
CREATE TABLE species(
   id BIGSERIAL,
   name VARCHAR(255),
   PRIMARY KEY(id)
   );

   --Modify animals table:

--Remove column species
ALTER TABLE animals DROP COLUMN species;

--Add column species_id which is a foreign key referencing species table
ALTER TABLE animals ADD COLUMN species_id INT,
ADD CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id);

--Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals ADD COLUMN owner_id INT,
ADD CONSTRAINT fk_owners FOREIGN KEY(owner_id) REFERENCES owners(id); 