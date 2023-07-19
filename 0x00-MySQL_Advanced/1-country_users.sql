-- script that creates a table users following these requirements:
CREATE TABLE IF NOT EXITS users (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US','CO','TN') DEFAULT 'US',
    PRIMARY KEY (id)
);
