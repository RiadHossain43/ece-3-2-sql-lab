/* creating table */
create  table course(
    course_id number(10) not null, 
    course_name varchar(20), 
    pass_mark number(10) default 40, 
    primary key (course_id)
);
