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
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(id)

);

CREATE TABLE assignments(
    id SERIAL PRIMARY KEY,
    enclosure_id INT REFERENCES enclosures(id),
    employee_id INT REFERENCES staff(id),
    day VARCHAR(255)

);

INSERT INTO enclosures (name, capacity, closed_for_maintainance) VALUES ('Big Cat Field', 20, False);
INSERT INTO enclosures (name, capacity, closed_for_maintainance) VALUES ('Planet Of The Apes', 2, True);
INSERT INTO enclosures (name, capacity, closed_for_maintainance) VALUES ('Bird Sanctuary', 3, False);



INSERT INTO staff (name, employee_number) VALUES ('Captin Rik', 12345);
INSERT INTO staff (name, employee_number) VALUES ('Talking Tom', 22345);
INSERT INTO staff (name, employee_number) VALUES ('Singing Sally', 33456);
INSERT INTO staff (name, employee_number) VALUES ('Steve Irwin', 44567);



INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tony', 'Tiger', 59, 1);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Monk', 'Monkey', 200, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Gorilla', 'Monkey', 65, 2);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Simon', 'Parrot', 3, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Tong', 'CooCoo', 6, 3);
INSERT INTO animals (name, type, age, enclosure_id) VALUES ('Simba', 'Lion', 10, 3);




INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (1, 1, 'Tuesday');
INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (1, 2, 'Monday');
INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (3, 3, 'Wednesday');
INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (2, 4, 'Everyday');
INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments (enclosure_id, employee_id, day) VALUES (1, 2, 'Tuesday');
  
    
