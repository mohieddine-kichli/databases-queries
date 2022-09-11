-- Query 1
SELECT name
FROM rooms
WHERE capacity >= 100;

-- Query 2
SELECT name
FROM courses
WHERE start_time = (SELECT MIN(start_time)
                    FROM courses);

-- Query 4

SELECT name
FROM courses
WHERE crn in (SELECT courses_crn
              FROM enrolls
              WHERE students_id in (SELECT students_id
                                   FROM majorsin 
                                   WHERE departments_id in (SELECT id
                                                            FROM departments
                                                            WHERE name = "BIF");

-- Query 5

SELECT name
FROM students
WHERE id not in (SELECT students_id
                 FROM enrolls);




