-- Query 1
SELECT name
FROM rooms
WHERE capacity >= 100;

-- Query 2
SELECT name
FROM courses
WHERE start_time = (SELECT MIN(start_time)
                    FROM courses);





