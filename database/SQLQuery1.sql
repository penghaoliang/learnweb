USE learnWeb

create table teacher(
id varchar(50) primary key,
name varchar(50),
username varchar(50),
password varchar(50), 
email varchar(50), 
url varchar(50),
sf int check(sf in(1,2,3))
)
create table course(
id varchar(50) primary key,
coursenum int,
date date,
teacher_id varchar(50),
foreign key(teacher_id) references teacher
)

create table student(
id varchar(50) primary key,
course_id varchar(50),
name varchar(50),
username varchar(50),
password varchar(50), 
email varchar(50), 
sf int check(sf in(1,2,3)),
foreign key(course_id) references course,
)
create table grade(
id varchar(50) primary key,
usual_Grade int CHECK (usual_Grade>=0 and usual_Grade<=100),
mid_Grade int CHECK (mid_Grade>=0 and mid_Grade<=100),
final_Grade int CHECK (final_Grade>=0 and final_Grade<=100),
experiment_Grade int CHECK (experiment_Grade>=0 and experiment_Grade<=100)
foreign key(id) references student
)