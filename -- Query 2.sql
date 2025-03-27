-- Query 2: Count students enrolled each day
SELECT EnrollmentDate, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY EnrollmentDate
ORDER BY EnrollmentDate;
GO