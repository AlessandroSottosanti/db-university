1.  SELECT * 
FROM  `students`
WHERE YEAR(`date_of_birth`) = 1990;


2. SELECT * 
FROM `courses`
WHERE `cfu` > 10;


--  FONTE:   'https://coding4u.altervista.org/mysql-come-calcolare-leta/'
3. SELECT *
FROM  `students`
WHERE DATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(`date_of_birth`)), '%Y')+0 > 30;


4. SELECT * 
FROM `courses`
WHERE `period` = 'I semestre' AND `year` = 1;


5. SELECT * 
FROM `exams`
WHERE `date` = '2020-06-20' AND `hour` > '14:00:00';


6. SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';


7. SELECT COUNT(*)
FROM `departments`;


8. SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL;


-- BONUS

1. SELECT YEAR(`enrolment_date`) AS 'anno' , COUNT(`enrolment_date`) AS 'iscritti'
FROM `students`
GROUP BY YEAR(`enrolment_date`); 

2. SELECT `office_number` AS 'numero ufficio' , COUNT(*) AS 'insegnanti'
FROM `teachers`
GROUP BY `office_number`
ORDER BY `insegnanti`;

3. SELECT `exam_id` , AVG(`vote`)
FROM `exam_student`
GROUP BY `exam_id`;

4. SELECT `department_id` , COUNT(*) AS 'corsi'
FROM `degrees`
GROUP BY `department_id`;