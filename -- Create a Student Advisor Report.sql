-- Create a Student Advisor Report
SELECT 
    s.StudentID,
    s.FirstName + ' ' + s.LastName AS StudentName,
    s.Email AS StudentEmail,
    s.EnrollmentDate,
    a.FirstName + ' ' + a.LastName AS AdvisorName,
    a.Email AS AdvisorEmail,
    a.Department AS AdvisorDepartment,
    COUNT(e.EnrollmentID) AS CoursesEnrolled
FROM 
    Students s
    LEFT JOIN Advisors a ON s.AdvisorID = a.AdvisorID
    LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY 
    s.StudentID, s.FirstName, s.LastName, s.Email, s.EnrollmentDate,
    a.FirstName, a.LastName, a.Email, a.Department
ORDER BY 
    a.LastName, a.FirstName, s.LastName, s.FirstName;
GO