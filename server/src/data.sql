 CREATE DATABASE todoapp;

CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    ingredients TEXT[] NOT NULL,
    instructions TEXT[] NOT NULL,
    cook_time INT,
    image BYTEA,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, 
    full_name VARCHAR(100)
    
);

INSERT INTO recipes (title, description, ingredients, instructions, cook_time, user_id)
VALUES (
    'Spaghetti Carbonara',
    'Classic Italian pasta dish with eggs, cheese, and pancetta.',
    '{"Spaghetti", "Eggs", "Pecorino cheese", "Guanciale"}',
    '{"1. Cook spaghetti until al dente.", "2. In a separate pan, sauté pancetta until crispy.", "3. In a bowl, whisk eggs and mix with grated Pecorino cheese.", "4. Toss cooked spaghetti with egg mixture and pancetta.", "5. Serve immediately."}',
    20,
    1
);

