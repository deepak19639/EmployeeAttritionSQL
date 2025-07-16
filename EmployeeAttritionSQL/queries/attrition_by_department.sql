select * from Employee_attrition;
--2️  Attrition by Department

SELECT 
Department,
COUNT(*) AS Total_Employee,
SUM(CASE when Attrition = 1  then 1 else 0 end) as Total_left,
CAST(Round(100.00 * SUM(CASE when attrition = 1  then 1 else 0 end)/ Count(*), 2) as decimal(4,2))  as Attrition_Percentage
from Employee_attrition
Group by Department
order by Attrition_Percentage