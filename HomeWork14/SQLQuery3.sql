INSERT INTO Students (StudentID, StudentName)
VALUES (1, 'Sarah Johnson'),
       (2, 'Michael Smith'),
       (3, 'Emily Davis');


INSERT INTO Courses (CourseID, CourseName, InstructorName)
VALUES (101, 'Math', 'John Williams'),
       (102, 'IT', 'Laura Brown'),
       (103, 'Physic', 'David Wilson');


INSERT INTO StudentCourses (StudentID, CourseID)
VALUES (1, 101),  
       (1, 102),  
       (2, 101),  
       (3, 103);
       
SELECT s.StudentName, c.CourseName, c.InstructorName
FROM Students s
JOIN StudentCourses sc ON s.StudentID = sc.StudentID
JOIN Courses c ON sc.CourseID = c.CourseID;