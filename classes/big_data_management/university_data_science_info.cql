CREATE KEYSPACE univ_data_info 
    WITH REPLICATION = {'class' : 'SimpleStrategy', 
    'replication_factor' : 1};
USE univ_data_info;

CREATE TABLE university_near_person(
    person_name text, 
    university_name text, 
    distance int, 
    PRIMARY KEY(person_name, distance)) 
    WITH CLUSTERING ORDER BY (distance DESC);

INSERT INTO university_near_person(person_name, university_name, distance) 
    values('Derek', 'UofT', 1);
INSERT INTO university_near_person(person_name, university_name, distance) 
    values('Parnika', 'Queens', 100);

SELECT * FROM university_near_person;

CREATE TABLE university_info(
    university_name text, 
    phone text, 
    address text,
    PRIMARY KEY(university_name));

INSERT INTO university_info(university_name, phone, address)
    values('UofT', '1-888-TORONTO', 'Toronto ON');
INSERT INTO university_info(university_name, phone, address)
    values('Queens', '1-234-5678', 'Kingston ON');

SELECT * FROM university_info;

CREATE TABLE people_near_university(
    person_name text, 
    university_name text, 
    distance int, 
    PRIMARY KEY(university_name, distance)) 
    WITH CLUSTERING ORDER BY (distance DESC);

INSERT INTO people_near_university(person_name, university_name, distance) 
    values('Derek', 'UofT', 1);
INSERT INTO people_near_university(person_name, university_name, distance) 
    values('Parnika', 'Queens', 100);

SELECT * from people_near_university;

CREATE TABLE course_info(
    course_id uuid, 
    university_name text, 
    course_name text,
    cost int,
    registration_date date, 
    PRIMARY KEY(university_name, registration_date)) 
    WITH CLUSTERING ORDER BY (registration_date DESC);

INSERT INTO course_info(course_id, university_name, course_name, cost, registration_date) 
    values(e3036024-45a0-411c-8802-fc5e0468973d, 'UofT', 'Data 101', 999, '2017-01-01');
INSERT INTO course_info(course_id, university_name, course_name, cost, registration_date) 
    values(a75aa9df-b5cf-4ebe-b802-aed7143e4b84, 'Queens', 'Stats 101', 1999, '2017-01-01');

SELECT * FROM course_info;

CREATE TABLE person_info(
    person_name text, 
    phone text, 
    address text,
    PRIMARY KEY(person_name));

INSERT INTO person_info(person_name, phone, address)
    values('Derek', '1-800-DEREK', 'Toronto ON');
INSERT INTO person_info(person_name, phone, address)
    values('Parnika', '1-666-5678', 'Kingston ON');

SELECT * FROM person_info;