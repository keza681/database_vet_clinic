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

-- add "JOIN TABLE" for visits

-- Create a table named vets 
CREATE TABLE vets(
   id BIGSERIAL PRIMARY KEY,
   name VARCHAR(100),
   age INT,
   date_of_graduation DATE
   );
-- There is a many-to-many relationship between the tables species and vets: a vet can specialize in multiple species, and a species can have multiple vets specialized in it.
-- Create a "join table" called specializations to handle this relationship.
CREATE TABLE specializations (
    species_id INT,
    vets_id INT,
    CONSTRAINT fk_species FOREIGN KEY(species_id) REFERENCES species(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)
);
-- There is a many-to-many relationship between the tables animals and vets: an animal can visit multiple vets and one vet can be visited by multiple animals.
-- Create a "join table" called visits to handle this relationship, it should also keep track of the date of the visit.
CREATE TABLE visits (
    animals_id INT,
    vets_id INT,
    date_of_visit DATE,
    CONSTRAINT fk_animals FOREIGN KEY(animals_id) REFERENCES animals(id),
    CONSTRAINT fk_vets FOREIGN KEY(vets_id) REFERENCES vets(id)