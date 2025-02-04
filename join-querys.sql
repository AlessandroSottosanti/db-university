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

4. SELECT `students`.*, `degrees`.`name` AS 'degree_name', `courses`.*, `departments`.`name` AS 'department_name'
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `courses`
ON  `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `departments`
ON  `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname` AND `students`.`name`;

5. SELECT `degrees`.*, `courses`.`name` AS 'course_name', `teachers`.`name` AS 'teacher_name', `teachers`.`surname` AS 'teacher_surname'
FROM `degrees`
INNER JOIN `courses`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `course_teacher`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
ORDER BY `degrees`.`name`;

6. SELECT `teachers`.* , `departments`.`name`, COUNT(`teachers`.`id`) AS `degrees_number_for_teacher`
FROM `teachers`
INNER JOIN `course_teacher`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `degrees`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Matematica'
GROUP BY `teachers`.`id`
ORDER BY `degrees_number_for_teacher` DESC;

7. SELECT `students`.`id` AS `student_id`,  `students`.`surname` AS `student_surname`, `students`.`name` AS `student_name`,`courses`.`id` AS `course_id`, `courses`.`name` AS `course_name`, COUNT(`exam_student`.`vote`) AS `attempts`, MAX(`exam_student`.`vote`) as `max_vote`
FROM `students`
INNER JOIN `exam_student`
ON `students`.`id`= `exam_student`.`student_id`
INNER JOIN `exams`
ON `exams`.`id` = `exam_student`.`exam_id`
INNER JOIN `courses`
ON `exams`.`course_id` = `courses`.`id` 
GROUP BY `students`.`id`, `courses`.`id`
HAVING `max_vote` >= 18
ORDER BY `students`.`id` AND `courses`.`id`;