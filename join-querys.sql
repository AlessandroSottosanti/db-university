1. SELECT `students`.* , `degrees`.`id` AS 'department_id', `degrees`.`name` AS 'department_name', `degrees`.`level` AS 'department_level'
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

2. SELECT `courses`.*, `degrees`.`level` AS 'degrees_level', `departments`.`name` AS 'departments_name'
FROM `courses`
INNER JOIN `degrees`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id` 
WHERE `degrees`.`level` = 'magistrale'
AND `departments`.`name` = 'Dipartimento di Neuroscienze';

3. SELECT `courses`.* , `degrees`.`name` AS 'degrees_name', `teachers`.`name` AS 'teacher_name', `teachers`.`surname` AS 'teacher_surname'
FROM `courses`
INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `course_teacher`.`teacher_id` = `teachers`.`id`
INNER JOIN `degrees`
ON `courses`.`degree_id` = `degrees`.`id`
WHERE `teachers`.`id` = 44;

4. 