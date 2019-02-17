-- List all the scientists' names, their projects' names, and the hours worked by that scientist on each project,'
-- in alphabetical order of project name, then scientist name.

SELECT Scientists.Name, Projects.Name, Projects.Hours FROM Scientists
  JOIN AssignedTo
    ON Scientists.SSN = AssignedTo.Scientist
  JOIN Projects
    ON AssignedTo.Project = Projects.Code 
  ORDER BY Projects.Name, Scientists.Name
  ;
    