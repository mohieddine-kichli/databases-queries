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
WHERE crn IN (SELECT courses_crn
              FROM enrolls
              WHERE students_id IN (SELECT students_id
                                   FROM majorsIN 
                                   WHERE departments_id IN (SELECT id
                                                            FROM departments
                                                            WHERE name = "BIF");

-- Query 5

SELECT name
FROM students
WHERE id not IN (SELECT students_id
                 FROM enrolls);

-- Query 6

SELECT COUNT(*)
FROM students
WHERE id IN (SELECT students_id
              FROM enrolls
              WHERE courses_crn IN (SELECT crn
                                    FROM courses
                                    WHERE name = "CSC275") AND students_id IN (SELECT students_id
                                                                                FROM majorsIN
                                                                                WHERE departments_id IN (SELECT id
                                                                                                          FROM departments
                                                                                                          WHERE name = "CS")))


-- Query 7

SELECT COUNT(*)
FROM students
WHERE id IN (SELECT students_id
              FROM enrolls
              WHERE students_id IN (SELECT students_id 
                                   	FROM majorsin
                                    WHERE departments_id  IN (SELECT id
                                                              FROM departments
                                                              WHERE name = "CS")));
                                                              
                                                                                
                                                                                                          
                                                                       					
                                                                                
                                                                             
                                                                                               
                                                                      
                                                                     
                                                                     
                                                    


                                                                              					
                    



