-- Query 4: Find average grade by course (converting letter grades to numbers)
SELECT c.CourseID, c.CourseName,
       AVG(CASE 
           WHEN e.Grade = 'A' THEN 4.0
           WHEN e.Grade = 'A-' THEN 3.7
           WHEN e.Grade = 'B+' THEN 3.3
           WHEN e.Grade = 'B' THEN 3.0
           WHEN e.Grade = 'B-' THEN 2.7
           WHEN e.Grade = 'C+' THEN 2.3
           WHEN e.Grade = 'C' THEN 2.0
           WHEN e.Grade = 'C-' THEN 1.7
           WHEN e.Grade = 'D+' THEN 1.3
           WHEN e.Grade = 'D' THEN 1.0
           WHEN e.Grade = 'F' THEN 0.0
           ELSE NULL
       END) AS AverageGradePoint
FROM Courses c
JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName
ORDER BY AverageGradePoint DESC;
GO