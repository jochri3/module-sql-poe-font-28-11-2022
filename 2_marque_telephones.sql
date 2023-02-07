DROP TABLE telephones; 

CREATE TABLE IF NOT EXISTS manufacturers(
 id SERIAL PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 ceo VARCHAR(50) NOT NULL
);


-- ON DELETE RESTRICT
-- ON DELETE CASCADE
-- ON DELETE SET NULL

CREATE TABLE IF NOT EXISTS telephones(
  id SERIAL PRIMARY KEY, -- unique/non nul
  name VARCHAR(30) UNIQUE NOT NULL,  
  manufacturer_id INT REFERENCES manufacturers(id) ON DELETE RESTRICT,
  price INT NOT NULL CHECK(price>0),
  units_sold INT NOT NULL  CHECK(units_sold>=0)
);

INSERT INTO manufacturers(name,ceo)
VALUES ('Apple','Tim Cook'),
    ('Huawei','Bruce Lee');

SELECT * FROM manufacturers;

INSERT INTO telephones(name,manufacturer_id,price,units_sold)
VALUES
    ('Iphone 13 Pro Max',1,1500,2212),
    ('Honor 20',2,250,3662),
    ('Mate 11',2,300,4636),
    ('Iphone 14',1,1900,9398);

SELECT * FROM telephones;
    
    






