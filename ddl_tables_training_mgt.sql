use training_management_system;

create table batch(
batch_id varchar(10) Primary Key,
batch_name varchar(15) not null,
start_date Date,
end_date Date,
course_id varchar(15));

describe batch;


create table course(
course_id varchar(15) Primary Key,
course_name varchar(15) not null);

Alter table batch
add Foreign Key(course_id) references
course (course_id);

create table trainer(
trainer_id varchar(5) primary key,
trainer_name varchar(30) not null,
ph_no varchar(10) not null);

create table topic(
topic_id varchar(5) primary key,
topic_name varchar(30) not null,
batch_id varchar(10),
trainer_id varchar(5),
Foreign Key (batch_id) references batch (batch_id),
Foreign Key (trainer_id) references trainer (trainer_id));

create table candidate(
candidate_id varchar(10) primary key,
name varchar(30) not null,
phno varchar(10) ,
email varchar(30),
batch_id varchar(10),
Foreign Key (batch_id) references batch (batch_id));

create table candidate_status(
candidate_id varchar(10),
batch_id varchar(10),
status ENUM('In Progress', 'Completed', 'Terminated') NOT NULL,
Foreign Key (candidate_id) references candidate (candidate_id),
Foreign Key (batch_id) references batch(batch_id),
primary key(candidate_id,batch_id)
);

create table assignment(
id varchar(10) primary key,
batch_id varchar(10),
Foreign Key (batch_id) references batch(batch_id),
title varchar(20) not null,
description varchar(100) ,
due_date Date not null,
full_submission_status ENUM('Yes', 'No') not null);

create table student_assignment_stat(
candidate_id varchar(10),
id varchar(10) ,
Foreign Key (candidate_id) references candidate(candidate_id),
Foreign Key (id) references assignment(id),
score int not null,
total_score int not null,
primary key(candidate_id,id));





