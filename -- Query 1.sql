-- Query 1: List all students with their enrollment dates
SELECT StudentID, FirstName, LastName, Email, EnrollmentDate
FROM Students
ORDER BY EnrollmentDate;
GO