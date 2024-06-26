CREATE TABLE stores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255)
);

CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    lastName VARCHAR(255) NOT NULL,
    email VARCHAR(255)
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DOUBLE(10 , 2 ) NOT NULL,
    idStore INT,
    CONSTRAINT fk_id_store FOREIGN KEY (idStore)
        REFERENCES stores (id)
        ON DELETE CASCADE
);
ALTER TABLE products ADD COLUMN stock INT NOT NUll;

CREATE TABLE purchases (
    id INT PRIMARY KEY AUTO_INCREMENT,
    purchaseDate DATE NOT NULL,
    quantity INT NOT NULL,
    idClient INT,
    idProduct INT,
    CONSTRAINT fk_id_client FOREIGN KEY (idClient)
        REFERENCES clients (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_id_product FOREIGN KEY (idProduct)
        REFERENCES products (id)
        ON DELETE CASCADE
);

DROP TABLE purchases;
DROP TABLE products;
DROP TABLE stores;
DROP TABLE clients;

INSERT INTO stores(name,location) VALUES("La de manolo", "Sabaneta"),
("La Iglesia", "Itagui"),
("Viveritos", "Envigado");

SELECT * FROM stores;

UPDATE stores 
SET 
    name = 'La cantina del mono'
WHERE
    id = 3;

SELECT  products.id AS idProduct,stores.id AS idStore, stores.name AS storeName, stores.location AS storeLocation FROM products INNER JOIN stores ON products.idStore = stores.id WHERE products.id=1;



