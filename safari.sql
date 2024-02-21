DROP TABLE IF EXISTS assignments; 
DROP TABLE IF EXISTS animals; 
DROP TABLE IF EXISTS enclosures; 
DROP TABLE IF EXISTS staff; 


CREATE TABLE enclosures(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closed_for_maintainance BOOLEAN

);

CREATE TABLE staff(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_number INT

);

CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255).
    age INT,
    enclosure_id REFERENCES enclosures(id)

);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    enclosure_id REFERENCES enclosures(id),
    employee_id REFERENCES staff(id),
    day VARCHAR(255)

);
  
    
