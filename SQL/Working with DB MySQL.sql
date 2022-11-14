CREATE DATABASE db;

CREATE TABLE db.universities (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
‎name‎ VARCHAR(20) NOT NULL);

CREATE TABLE db.faculties (
id INT UNSIGNED NOT NULL,
nameOfFaculty VARCHAR(20) NOT NULL UNIQUE);

CREATE TABLE db.teachers (
id INT UNSIGNED NOT NULL,
nameOfTeacher VARCHAR(40) NOT NULL UNIQUE);

CREATE TABLE db.students (
id INT UNSIGNED NOT NULL,
nameOfStudent VARCHAR(40) NOT NULL UNIQUE);

CREATE TABLE db.groupPs (
id INT UNSIGNED NOT NULL,
nameOfgroup VARCHAR(40) NOT NULL UNIQUE);

SELECT * FROM education.universities;

SELECT nameOfStudent, surnameOfStudent FROM education.students;

SELECT * FROM education.teachers WHERE nameOfTeacher = 'Ivan';

SELECT * FROM education.grouppe WHERE numberOfGroup > 300;

SELECT * FROM education.universities WHERE nameOfUniversity LIKE '%A%';

SELECT COUNT(*) FROM education.faculties;

SELECT COUNT(nameOfUniversity) FROM education.universities WHERE nameOfUniversity LIKE 'K%';

SELECT MIN(numberOfGroup) FROM education.grouppe;

SELECT MIN(surnameOfStudent) FROM education.students;

SELECT MAX(numberOfGroup) FROM education.grouppe;

SELECT AVG(studentsAge) FROM education.students;

SELECT SUM(studentsAge) FROM education.students WHERE studentsAge = '18';

SELECT COUNT(numberOfGroup) FROM education.grouppe WHERE numberOfGroup > 100;

SELECT AVG(studentsAge) AS averageAge FROM education.students;

SELECT AVG(studentsAge) FROM education.students GROUP BY studentsAge;

SELECT * FROM education.teachers GROUP BY nameOfTeacher HAVING nameOfTeacher LIKE '%a';

SELECT * FROM education.students ORDER BY nameOfStudent DESC;

SELECT nameOfStudent, surnameOfStudent, studentsAge FROM education.students ORDER BY studentsAge ASC LIMIT 5;

SELECT * FROM education.students INNER JOIN education.faculties ON students.facultyId = faculties.facultyID;
