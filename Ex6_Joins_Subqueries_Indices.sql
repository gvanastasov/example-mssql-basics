Use SoftUni
GO

-- 01. Employee Address

select TOP (5) [EmployeeID],
		[JobTitle],
		e.[AddressID],
		a.[AddressText]
from Employees as e
JOIN Addresses as a ON e.[AddressID] = a.[AddressID]
ORDER BY e.[AddressID]

-- 02. Addresses with Towns

select TOP(50) [FirstName], 
				[LastName], 
				t.[Name] as [Town], 
				a.[AddressText]
from Employees as e
JOIN Addresses as a ON e.[AddressID] = a.[AddressID]
JOIN Towns as t ON a.[TownID] = t.[TownID]
ORDER BY [FirstName] asc, [LastName] desc

-- 03. Sales Employee

select [EmployeeID], [FirstName], [LastName], d.[Name] as [DepartmentName]
from Employees as e
join Departments as d on d.[DepartmentID] = e.[DepartmentID]
where d.[Name] = 'Sales'
order by [EmployeeID] asc


















































