alter table selection add constraint f1 foreign key(stu_id) references student(stu_id);
alter table selection add constraint f2 foreign key(course_id) references course(course_id);
alter table teaching add constraint f3 foreign key(tch_id) references teacher(tch_id);
alter table teaching add constraint f4 foreign key(course_id) references course(course_id);
alter table student add constraint f5 foreign key(stu_dept) references department(dept_id);
alter table teacher add constraint f6 foreign key(tch_dept) references department(dept_id);
alter table department add constraint f7 foreign key(dept_master) references teacher(tch_id);