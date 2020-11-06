# 1. Создать VIEW на основе запросов, которые вы сделали в ДЗ к уроку 3.
create or replace view employees.average_salary_by_departments as
  select dep.dept_no, dep.dept_name, avg(sal.salary) as avg_salary
    from employees.employees emp
    join employees.salaries sal on emp.emp_no = sal.emp_no
    join employees.dept_emp de on de.emp_no = emp.emp_no
    join employees.departments dep on dep.dept_no = de.dept_no
  where sal.from_date <= curdate()
    and sal.to_date > curdate()
  group by dep.dept_no, dep.dept_name;

# example:
select * 
  from employees.average_salary_by_departments;