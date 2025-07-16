
select * from Employee_attrition;

-- 2. Lead/Lag on Income (to compare with next person)

select 
EmployeeNumber,
MonthlyIncome ,
LEAD(MonthlyIncome) over ( order by MonthlyIncome ) as PreIncome,
LAG(MonthlyIncome) over ( order by MonthlyIncome ) as PostIncome
from employee_attrition