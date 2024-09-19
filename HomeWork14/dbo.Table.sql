CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName NVARCHAR(100)
);

GO

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName NVARCHAR(100),
    InstructorName NVARCHAR(100)
);

GO
CREATE TABLE StudentCourses (
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    PRIMARY KEY (StudentID, CourseID)
);

