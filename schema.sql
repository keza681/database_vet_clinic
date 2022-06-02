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

