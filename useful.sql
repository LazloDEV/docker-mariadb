SELECT * FROM users;

CREATE DATABASE testExamples;
show databases;

USE testExamples;
show tables;

DROP TABLE Productos;
DROP TABLE fruits;

SELECT * FROM Productos;
SELECT * from fruits;

CREATE TABLE IF NOT EXISTS fruits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO fruits (name, quantity) VALUES
    ('Apple', 10),
    ('Banana', 20),
    ('Cherry', 30);

CREATE TABLE IF NOT EXISTS Productos (
    id int AUTO_INCREMENT PRIMARY KEY, 
    nombre varchar(200), 
    categoria varchar(200), 
    precio decimal(15,2), 
    stock int, 
    fecha_registro date
);

INSERT INTO Productos (nombre, categoria, precio, stock, fecha_registro) VALUES
    ("Laptop", "Electronica", 900, 10, "2024-01-15");
INSERT INTO Productos (nombre, categoria, precio, stock, fecha_registro) VALUES
    ("Celular", "Electronica", 500, 25, "2024-02-10");
INSERT INTO Productos (nombre, categoria, precio, stock, fecha_registro) VALUES
    ("Televisor", "Hogar", 750, 5, "2024-03-05");


SELECT * FROM Productos;
SELECT categoria, COUNT(*) FROM Productos GROUP BY categoria;

DELETE FROM Productos WHERE id =1;