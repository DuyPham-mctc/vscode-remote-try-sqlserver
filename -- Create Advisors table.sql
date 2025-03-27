-- Create Advisors table
CREATE TABLE Advisors (
    AdvisorID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    Department NVARCHAR(50)
);
GO

-- Add sample advisors
INSERT INTO Advisors (FirstName, LastName, Email, Department)
VALUES 
('Robert', 'Smith', 'robert.smith@university.edu', 'Computer Science'),
('Jennifer', 'Wong', 'jennifer.wong@university.edu', 'Information Technology'),
('Michael', 'Brown', 'michael.brown@university.edu', 'Computer Science');
GO

-- Add AdvisorID column to Students table
ALTER TABLE Students
ADD AdvisorID INT NULL;
GO

-- Assign advisors to students
UPDATE Students
SET AdvisorID = 1
WHERE StudentID IN (1, 4);

UPDATE Students
SET AdvisorID = 2
WHERE StudentID IN (2, 5);

UPDATE Students
SET AdvisorID = 3
WHERE StudentID IN (3, 6);
GO

-- Add foreign key constraint
ALTER TABLE Students
ADD CONSTRAINT FK_Students_Advisors
FOREIGN KEY (AdvisorID) REFERENCES Advisors(AdvisorID);
GO