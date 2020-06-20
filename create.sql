create table student(
stu_id CHAR(10),
stu_name VARCHAR(255),
stu_gen CHAR(1),
stu_age INT,
stu_dept CHAR(4),
stu_passwd VARCHAR(255),
primary key (stu_id));
create table teacher(
tch_id CHAR(10),
tch_name VARCHAR(255),
tch_gen CHAR(1),
tch_dept CHAR(4),
tch_title VARCHAR(255),
tch_age INT,
tch_birth DATE,
tch_salary FLOAT,
tch_passwd VARCHAR(255),
primary key (tch_id));
create table department(
dept_id CHAR(4),
dept_name VARCHAR(255),
dept_master CHAR(10),
primary key(dept_id));
create table course(
course_id CHAR(4),
course_name VARCHAR(255),
course_hour INT,
course_type VARCHAR(255),
course_credit FLOAT,
primary key(course_id));
create table selection(
stu_id CHAR(10),
course_id CHAR(4),
score FLOAT,
primary key(stu_id,course_id));
create table teaching(
tch_id CHAR(10),
course_id CHAR(4),
since DATE,
primary key(tch_id,course_id));
create table administrator(
admin_id CHAR(10),
password VARCHAR(255),
primary key(admin_id));






