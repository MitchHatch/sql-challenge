create table employee_last_name as


select 
	employees.last_name, count(*) as frequency
from 
	employees
group by last_name
order by frequency DESC