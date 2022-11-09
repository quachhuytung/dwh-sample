insert into starter_project.employee_dimension (
	employee_id,
	first_name,
	middle_initial,
	last_name,
	sex,
	manager_id,
	hire_date,
	salary,
	commission,
	job_code,
	dob
)
select
	src.EMPLOYEE_ID,
	src.FIRST_NAME,
	src.MIDDLE_INITIAL,
	src.LAST_NAME,
	src.SEX,
	src.MANAGER_ID,
	src.HIRE_DATE,
	src.SALARY,
	src.COMMISSION,
	src.JOB_CODE,
	src.DOB
from
  starter_project.emp as src
left join 
  starter_project.employee_dimension as target on src.employee_id = target.employee_id
where target.employee_id is null