CREATE TABLE vehicules(
    matricule VARCHAR(12) PRIMARY KEY,
    marque VARCHAR(20) NOT NULL,
    modele VARCHAR(20) UNIQUE NOT NULL,
    anne_fabrication INT NOT NULL CHECK(anne_fabrication>=1900 AND anne_fabrication<=2022)
);

CREATE TABLE vehicules(
    id SERIAL PRIMARY KEY,
    matricule VARCHAR(12) PRIMARY KEY,
    marque VARCHAR(20) NOT NULL,
    modele VARCHAR(20) NOT NULL,
    qte_stock INT NOT NULL CHECK(qte_stock>=0),
    UNIQUE(marque,modele),
    anne_fabrication INT NOT NULL CHECK(anne_fabrication>=1900 AND anne_fabrication<=2022),
);