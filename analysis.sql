-- Average salary by job title
SELECT job_title, AVG(salary_in_usd) AS avg_salary
FROM ds_salaries
GROUP BY job_title
ORDER BY avg_salary DESC;

-- Entry-level salary analysis by job title
SELECT job_title, AVG(salary_in_usd) AS avg_salary
FROM ds_salaries
WHERE experience_level = 'EN'
GROUP BY job_title
ORDER BY avg_salary DESC;

-- Average salary by experience level
SELECT experience_level, AVG(salary_in_usd) AS avg_salary
FROM ds_salaries
GROUP BY experience_level
ORDER BY avg_salary DESC;

-- Number of jobs by company location
SELECT company_location, COUNT(*) AS job_count
FROM ds_salaries
GROUP BY company_location
ORDER BY job_count DESC;

-- Remote work distribution
SELECT remote_ratio, COUNT(*) AS job_count
FROM ds_salaries
GROUP BY remote_ratio
ORDER BY remote_ratio;

-- High-paying roles with average salary above 100000
SELECT job_title, AVG(salary_in_usd) AS avg_salary
FROM ds_salaries
GROUP BY job_title
HAVING AVG(salary_in_usd) > 100000
ORDER BY avg_salary DESC;

-- Salary by company size
SELECT company_size, AVG(salary_in_usd) AS avg_salary
FROM ds_salaries
GROUP BY company_size
ORDER BY avg_salary DESC;
