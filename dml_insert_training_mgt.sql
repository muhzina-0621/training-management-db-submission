INSERT INTO course (course_id, course_name) VALUES
('C001', 'Data Science'),
('C002', 'Web Development');

INSERT INTO batch (batch_id, batch_name, start_date, end_date, course_id) VALUES
('B001', 'DS-Jan24', '2024-01-10', '2024-04-10', 'C001'),
('B002', 'WD-Feb24', '2024-02-05', '2024-05-05', 'C002');

INSERT INTO trainer (trainer_id, trainer_name, ph_no) VALUES
('T01', 'Alice John', '9876543210'),
('T02', 'Bob Smith', '9123456789');

INSERT INTO topic (topic_id, topic_name, course_id, trainer_id) VALUES
('T001', 'Python Basics', 'C001', 'T01'),
('T002', 'HTML & CSS', 'C002', 'T02'),
('T003', 'Machine Learning', 'C001', 'T01');

INSERT INTO candidate (candidate_id, name, phno, email, batch_id) VALUES
('CD01', 'John Doe', '7894561230', 'john@example.com', 'B001'),
('CD02', 'Jane Roe', '7891234560', 'jane@example.com', 'B001'),
('CD03', 'Mark Lee', '7845123690', 'mark@example.com', 'B002');

INSERT INTO candidate_status (candidate_id, batch_id, status) VALUES
('CD01', 'B001', 'In Progress'),
('CD02', 'B001', 'Completed'),
('CD03', 'B002', 'In Progress');

INSERT INTO assignment (id, batch_id, title, description, due_date, full_submission_status) VALUES
('A001', 'B001', 'Python Quiz', 'Basic Python syntax and operations', '2024-02-01', 'Yes'),
('A002', 'B001', 'ML Assignment', 'Implement a simple linear regression', '2024-03-01', 'Yes'),
('A003', 'B002', 'HTML Layout', 'Build a landing page using HTML and CSS', '2024-03-15', 'No');

INSERT INTO student_assignment_stat (candidate_id, id, score, total_score) VALUES
('CD01', 'A001', 85, 100),
('CD01', 'A002', 90, 100),
('CD02', 'A001', 88, 100),
('CD02', 'A002', 92, 100),
('CD03', 'A003', 80, 100);