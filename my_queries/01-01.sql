-- Create a list of employees and their immediate managers.

SELECT e.firstName, e.lastName, e.title, m.firstName AS ManagerFirstName, m.lastName AS ManagerLastName
FROM employee e
LEFT JOIN employee m ON e.managerID = m.employeeId;