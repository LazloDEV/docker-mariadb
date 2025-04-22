CREATE DATABASE IF NOT EXISTS login_db;

USE login_db;

-- Step 1: Create user
CREATE USER 'test_user'@'%' IDENTIFIED BY 'secure123';

-- Step 2: Grant ALL PRIVILEGES privileges in the new DB to test_user
GRANT ALL PRIVILEGES ON login_db.* TO 'test_user'@'%';
FLUSH PRIVILEGES;

-- Step 3: Create a table if it doesn’t exist
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    names VARCHAR(200) NOT NULL,
    last_names  VARCHAR(200) NOT NULL,
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_access_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Step 4: Inser initial records
INSERT INTO users (username, password, names, last_names, email) 
  VALUES ('lazlo','testpass','Lazlo','Mita','lazlo.mita@gmail.com');
INSERT INTO users (username, password, names, last_names, email) 
  VALUES ('gaby','testpass','Gabriela','Siles','lazlo.mita@gmail.com');
INSERT INTO users (username, password, names, last_names, email) 
  VALUES ('romer','testpass','Romer','Garcia','lazlo.mita@gmail.com');
INSERT INTO users (username, password, names, last_names, email) 
  VALUES ('chelo','testpass','Marcelo','Vargas','lazlo.mita@gmail.com');
INSERT INTO users (username, password, names, last_names, email) 
  VALUES ('rigel','testpass','Rigel','Vargas','lazlo.mita@gmail.com');
    