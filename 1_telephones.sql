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



-- Filtrer avec Where
-- && => AND
-- || => OR
-- === => =
SELECT * FROM telephones WHERE price>=250 AND price<=600;
SELECT * FROM telephones WHERE price BETWEEN 250 AND 600;
SELECT * FROM telephones WHERE manufacturer='Nokia';

-- SELECT * FROM telephones;

-- Filter par le début d'une chaîne
SELECT * FROM telephones WHERE manufacturer LIKE 'Hua%';

-- Filter par la fin d'une chaîne
SELECT * FROM users WHERE email LIKE '%@gmail.com';
SELECT * FROM telephones WHERE manufacturer LIKE '%wei';

-- Filter par le fabricant et le modèle
SELECT * FROM telephones WHERE manufacturer='Huawei' AND name LIKE '%11';

-- yahoo.fr yahoo.com yahoo.ca
SELECT * FROM users WHERE email LIKE '%@yahoo.%'



-- Lister tous les téléphones de marque samsung et Apple
SELECT name,manufacturer FROM telephones 
    WHERE LOWER(manufacturer)=LOWER('Samsung') OR 
    LOWER(manufacturer)=LOWER('Apple');
    
SELECT name,manufacturer FROM telephones 
    WHERE LOWER(manufacturer) IN (LOWER('Apple'),LOWER('Samsung'));
    
--  Afficher le revenu total pour les téléphones vendues.
-- Pour chaque téléphone, vous avez le prix et la quantité vendu


SELECT id,name,manufacturer, price*units_sold AS ca  FROM telephones;
    













