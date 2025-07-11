INSERT INTO Courses VALUES (1, 'Python'), (2, 'Web Development');

INSERT INTO Topics VALUES
(101, 'Variables', 1),
(102, 'Loops', 1),
(103, 'HTML Basics', 2);

INSERT INTO Users VALUES
(1001, 'anandk', 'pwd123', 'Anand Krishnan', '9995111122', '2025-07-01', 'active'),
(1002, 'devika_m', 'pwd456', 'Devika Mohan', '9995222233', '2025-07-01', 'active'),
(1003, 'manujp', 'pwd789', 'Manu Jayaprakash', '9995333344', '2025-07-02', 'active'),
(1004, 'lekshmi_n', 'pwd999', 'Lekshmi Nair', '9995444455', '2025-07-02', 'active');

INSERT INTO Roles VALUES
(1, 'Trainer', 'Handles sessions'),
(2, 'Candidate', 'Learns courses');

INSERT INTO User_roles VALUES
(1, 1001, 1, '2025-07-01', TRUE),
(2, 1002, 1, '2025-07-01', TRUE),
(3, 1003, 2, '2025-07-01', TRUE),
(4, 1004, 2, '2025-07-01', TRUE);

INSERT INTO Batches (batch_name, start_date, end_date, course_id, max_strength, batch_code) VALUES
('Batch A', '2025-07-10', '2025-08-10', 1, 30, 'PY001'),
('Batch B', '2025-07-15', '2025-08-15', 2, 25, 'WEB001');

INSERT INTO Assignments VALUES
(201, 'Quiz 1', 'Python basics', 100, 40, 101, 1001),
(202, 'Web Task', 'HTML page', 50, 25, 103, 1002);

INSERT INTO Candidates_Batches VALUES
(1003, 1, 'enrolled', '2025-07-10'),
(1004, 1, 'enrolled', '2025-07-10');

INSERT INTO Candidates_Assignments VALUES
(1, 1003, 201, 90, 100, 'Well done', 1, '2025-07-15'),
(2, 1004, 202, 45, 50, 'Good try', 1, '2025-07-16');

INSERT INTO Batches_Assignments VALUES
(201, 1, '2025-07-20', TRUE, '2025-07-10'),
(202, 2, '2025-07-25', FALSE, '2025-07-15');

INSERT INTO Trainers_Batches VALUES
(1001, 1),
(1002, 2);

INSERT INTO Trainers_Topics VALUES
(1001, 101),
(1002, 103);

INSERT INTO Sessions VALUES
(1, 1, 1001, 101, '2025-07-12', '10:00:00', '12:00:00', 'online', 'https://link.com/session1'),
(2, 2, 1002, 103, '2025-07-16', '14:00:00', '16:00:00', 'offline', NULL);

INSERT INTO Attendance VALUES
(1, 1003, 'present'),
(1, 1004, 'late');

INSERT INTO Resources VALUES
(301, 101, 'Python Notes', 'document', 'https://link.com/notes.pdf');

INSERT INTO Exit_Users VALUES
(1003, '2025-08-10', 'Completed course');