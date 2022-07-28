--1
SELECT COUNT("endDate") as "currentExperiences" 
FROM experiences
--2
SELECT "userId" as id,
COUNT("userId") as educations 
FROM educations 
GROUP BY "userId"
--3
SELECT users.name as writer,
COUNT(testimonials.message) as "testimonailCount" 
FROM testimonials 
JOIN users
ON testimonials."writerId" = users.id
WHERE testimonials."writerId" = 435
GROUP BY users.name
--4
SELECT MAX(salary) as "maximumSalary", roles.name as role 
FROM jobs
JOIN roles
ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary" ASC