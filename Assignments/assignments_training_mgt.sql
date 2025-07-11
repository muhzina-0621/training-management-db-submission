SELECT cb.candidate_id, u.name, cb.batch_id, b.batch_name, cb.status
FROM Candidates_Batches cb
JOIN Users u ON cb.candidate_id = u.user_id
JOIN Batches b ON cb.batch_id = b.batch_id
JOIN User_roles ur ON u.user_id = ur.user_id
WHERE ur.role_id = 2 AND ur.is_active = TRUE;

SELECT tb.batch_id, b.batch_name, tb.trainer_id, u.name
FROM Trainers_Batches tb
JOIN Batches b ON tb.batch_id = b.batch_id
JOIN Users u ON tb.trainer_id = u.user_id
JOIN User_roles ur ON u.user_id = ur.user_id
WHERE ur.role_id = 1 AND ur.is_active = TRUE;

SELECT t.topic_name, c.course_name
FROM Topics t
JOIN Courses c ON t.course_id = c.course_id;

SELECT ca.candidate_id, u.name, ca.assignment_id, a.title, b.batch_name, ca.score
FROM Candidates_Assignments ca
JOIN Users u ON ca.candidate_id = u.user_id
JOIN Assignments a ON ca.assignment_id = a.assignment_id
JOIN Batches_Assignments ba ON a.assignment_id = ba.assignment_id
JOIN Batches b ON ba.batch_id = b.batch_id;

SELECT cb.candidate_id, u.name, cb.batch_id, b.batch_name, cb.status
FROM Candidates_Batches cb
JOIN Users u ON cb.candidate_id = u.user_id
JOIN Batches b ON cb.batch_id = b.batch_id
WHERE cb.status = 'completed';