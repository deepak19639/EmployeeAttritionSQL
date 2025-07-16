select * from Employee_attrition;

-- 1️  Attrition Rate Overall
SELECT 
COUNT(*) AS Total_Employee,
SUM(CASE when Attrition = 1  then 1 else 0 end) as Total_left,
Round( 100.0 * SUM(CASE when attrition = 1  then 1 else 0 end)/ Count(*) , 2) as Attrition_rate
from Employee_attrition
