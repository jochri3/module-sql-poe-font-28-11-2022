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


-- SELECT : Lister tous les téléphones en listant toutes colonnes
SELECT * FROM telephones;

-- Lister tous les téléphones en listant un nombre limité des colonnes
SELECT id,name,manufacturer FROM telephones;

-- Avoir les noms des champs en Français
SELECT id,name AS modele,manufacturer AS marque FROM telephones

-- Fusionner les noms des marques et modèles
SELECT id,CONCAT(manufacturer,name), price FROM telephones;
SELECT id,CONCAT(manufacturer,' ',name) AS telephone, price FROM telephones;

-- INSERT : Insérer des lignes/enregistrements

INSERT INTO telephones(name,manufacturer,price,units_sold)
VALUES('Iphone 12','Apple',1200,1223);


-- Insérer plusieurs lignes dans une même requête
INSERT INTO telephones(name,manufacturer,price,units_sold)
VALUES
    ('Iphone 13 Pro Max','Apple',1500,2212),
    ('Lumia 11','Nokia',500,473),
    ('Honor 20','Huawei',250,3662),
    ('Mate 11','Huawei',300,4636),
    ('Galaxy Note 20','Samsung',670,4632),
    ('Galaxy S 8','Samsung',780,6616),
    ('Redmit note 5','Xiaomi',560,7673),
    ('310','Nokia',10,89476),
    ('Iphone 14','Apple',1900,9398);







