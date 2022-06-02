/* Populate database with sample data. */

INSERT INTO animals (name) VALUES ('Luna');
INSERT INTO animals (name) VALUES ('Daisy');
INSERT INTO animals (name) VALUES ('Charlie');
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(1,'Agumon','2020-2-3',0,TRUE,10.23);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(2,'Gabumon','2018-11-15',2,TRUE,8);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(3,'Pikachu','2021-1-7',1,FALSE,15.04);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(4,'Devimon','2017-5-12',5,TRUE,11);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(5,'Charmander','2020-2-8',0,FALSE,-11);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(6,'Plantmon','2022-11-15',2,TRUE,-5.7);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(7,'Squirtle','1993-4-2',3,TRUE,-12.13);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(8,'Angemon','2005-5-12',1,TRUE,-45);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(9,'Boarmon','2005-5-7',7,TRUE,20.4);
INSERT INTO animals (id,name,date_of_birth,escape_attempts,neutered,weight_kg) VALUES(10,'Blossom','1998-10-13',3,TRUE,17);


INSERT INTO owners(FULL_NAME,AGE) VALUES('Sam Smith', 34),('Jennifer Orwell', 19),('Bob', 45),('Melody Pond', 77),('Dean Winchester', 14),('Jodie Whittaker', 38);

INSERT INTO species (name) VALUES ('Pokemon'), ('Digimon');

UPDATE animals SET species_id=2 WHERE name LIKE '%mon';

UPDATE animals SET species_id=1;

UPDATE animals SET owner_id=1 WHERE name='Agumon';

UPDATE animals SET owner_id=2 WHERE name IN ('Gabumon','Pikachu');

UPDATE animals SET owner_id=3 WHERE name IN ('Devimon','Plantmon');

UPDATE animals SET owner_id=4 WHERE name IN ('Charmander','Squirtle','Blossom');

UPDATE animals SET owner_id=5 WHERE name IN ('Angemon','Boarmon'); 