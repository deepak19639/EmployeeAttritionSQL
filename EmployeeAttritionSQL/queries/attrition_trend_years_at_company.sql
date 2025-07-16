select * from Employee_attrition;
-- 3 Attrition Trend by YearsAtCompany

SELECT 
YearsAtCompany,
COUNT(*) AS Total_Employee,
SUM(CASE when Attrition = 1  then 1 else 0 end) as Total_left,
CAST(Round(100.00 * SUM(CASE when attrition = 1  then 1 else 0 end)/ Count(*), 2) as decimal(6,2))  as Attrition_Percentage
from Employee_attrition
Group by YearsAtCompany
order by YearsAtCompany 
