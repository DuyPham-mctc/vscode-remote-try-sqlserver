-- Query 5: Create a student transcript report
SELECT 
    s.StudentID,
    s.FirstName + ' ' + s.LastName AS StudentName,
    c.CourseName,
    c.Credits,
    e.Grade,
    CASE 
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
    END * c.Credits AS QualityPoints
FROM Students s
JOIN Enrollments e ON s.StudentID = e.StudentID
JOIN Courses c ON e.CourseID = c.CourseID
ORDER BY s.LastName, s.FirstName, c.CourseName;
GO