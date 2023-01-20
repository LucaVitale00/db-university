-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT students.name as "nome",
    students.surname as "cognome",
    degrees.name as "nome_corso"
FROM students
    INNER JOIN degrees
    ON students.degree_id = degrees.id
WHERE degrees.name = "Corso di Laurea in Economia";


-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze


SELECT *
FROM degrees
    INNER JOIN departments
    ON degrees.department_id = departments.id
WHERE departments.name LIKE "%Neuroscienze%"
    AND degrees.level = "magistrale";


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)

SELECT *
FROM course_teacher
    INNER JOIN courses
    ON course_teacher.course_id = courses.id
WHERE teacher_id = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
-- relativo dipartimento, in ordine alfabetico per cognome e nome

SELECT *
FROM students
    INNER JOIN degrees
    ON degrees.id = students.degree_id
    INNER JOIN departments
    ON departments.id = degrees.department_id
ORDER BY students.surname,
         students.name;