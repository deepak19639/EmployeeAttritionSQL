
select * from Employee_attrition;
-- Dense Rank on TotalWorkingYears

select 
EmployeeNumber,
TotalWorkingYears,
DENSE_RANK() over (order by TotalWorkingYears desc) as ExperienceRank
from Employee_attrition;

