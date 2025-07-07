#1st question
SELECT 
    c.candidate_id,
    c.name AS candidate_name,
    b.batch_id,
    b.batch_name,
    cs.status
FROM 
    candidate c
JOIN 
    candidate_status cs ON c.candidate_id = cs.candidate_id
JOIN 
    batch b ON cs.batch_id = b.batch_id;
    
#2nd Question

select t.trainer_id,
t.trainer_name,
b.batch_id,
b.batch_name
from
topic tp
join
trainer t on t.trainer_id=tp.trainer_id
join
batch b on b.batch_id=tp.batch_id;

#3rd question

select t.topic_name,
t.topic_id,
c.course_id,
c.course_name
from
batch b
join
topic t on t.batch_id=b.batch_id
join
course c on b.course_id=c.course_id;

#4th Question
SELECT 
    sa.id AS assignment_id,
    a.title,
    sa.score,
    sa.total_score
FROM 
    student_assignment_stat sa
JOIN 
    assignment a ON sa.id = a.id
WHERE 
    sa.candidate_id = 'CD01' 
    AND a.batch_id = 'B001';  

#5th Question
SELECT 
    c.candidate_id,
    c.name,
    c.email,
    cs.status
FROM 
    candidate_status cs
JOIN 
    candidate c ON cs.candidate_id = c.candidate_id
WHERE 
    cs.batch_id = 'B001'
    AND cs.status = 'Completed';