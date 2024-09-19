CREATE PROCEDURE AddNewEmployee
	@EmployeeID INT,
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50),
	@Position NVARCHAR(50),
	@Salary INT
AS
BEGIN
	INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary)
	VALUES (@EmployeeID, @FirstName,@LastName, @Position, @Salary);
	END;

	EXEC AddNewEmployee 
    @EmployeeID = 101, 
    @FirstName = 'Олег', 
    @LastName = 'Іванов', 
    @Position = 'Менеджер', 
    @Salary = 50000;
	