select * from Employee_attrition;
-- Attrition by Marital Status + Gender

select 
Gender,
MaritalStatus,
Count(*) as TotalEmployee,
SUM(Case when Attrition = 1 then 1 else 0 end) as Total_Left,
Round( 100* SUM(Case when Attrition = 1 then 1 else 0 end) /Count(*) , 2) As AttritationRate
from employee_attrition
Group by gender,MaritalStatus
order by gender;