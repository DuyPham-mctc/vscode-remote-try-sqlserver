-- Custom Query find the advisor whose students have the highest average GPA
SELECT TOP 1 
    a.AdvisorID, 
    a.FirstName + a.LastName AS AdvisorName,
    AVG(CASE  
        WHEN e.Grade = 'A' THEN 4.0
        WHEN e.Grade = 'B' THEN 3.0
        WHEN e.Grade = 'C' THEN 2.0
        WHEN e.Grade = 'D' THEN 1.0
        WHEN e.Grade = 'F' THEN 0.0
        ELSE NULL
    END) AS AvgGPA
FROM Advisors a
JOIN Students s ON a.AdvisorID = s.AdvisorID
JOIN Enrollments e ON s.StudentID = e.StudentID
GROUP BY a.AdvisorID, a.FirstName, a.LastName
ORDER BY AvgGPA DESC;
GO