-- Query 3: List all courses with the number of enrolled students
SELECT c.CourseID, c.CourseName, c.Department, COUNT(e.StudentID) AS EnrolledStudents
FROM Courses c
LEFT JOIN Enrollments e ON c.CourseID = e.CourseID
GROUP BY c.CourseID, c.CourseName, c.Department
ORDER BY EnrolledStudents DESC;
GO