-- Suppression de la table téléphones
-- DROP TABLE telephones; 


--  Création de la table telephones
CREATE TABLE IF NOT EXISTS telephones(
  id SERIAL PRIMARY KEY, -- unique/non nul
  name VARCHAR(30) UNIQUE NOT NULL,  
  manufacturer VARCHAR(20) NOT NULL,
  price INT NOT NULL CHECK(price>0),
  units_sold INT NOT NULL  CHECK(units_sold>=0)
);


