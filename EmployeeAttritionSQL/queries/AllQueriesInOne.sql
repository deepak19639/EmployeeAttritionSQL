select * from Employee_attrition;

-- 1️  Attrition Rate Overall
SELECT 
COUNT(*) AS Total_Employee,
SUM(CASE when Attrition = 1  then 1 else 0 end) as Total_left,
Round( 100.0 * SUM(CASE when attrition = 1  then 1 else 0 end)/ Count(*) , 2) as Attrition_rate
from Employee_attrition


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




select * from Employee_attrition;

-- 2. Lead/Lag on Income (to compare with next person)

select 
EmployeeNumber,
MonthlyIncome ,
LEAD(MonthlyIncome) over ( order by MonthlyIncome ) as PreIncome,
LAG(MonthlyIncome) over ( order by MonthlyIncome ) as PostIncome
from employee_attrition








---------------------------------------------------------------

select * from Employee_attrition;
-- Dense Rank on TotalWorkingYears

select 
EmployeeNumber,
TotalWorkingYears,
DENSE_RANK() over (order by TotalWorkingYears desc) as ExperienceRank
from Employee_attrition;






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










