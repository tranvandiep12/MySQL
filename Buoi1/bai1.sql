create database student_maganement_n03;
use student_maganement_n03;
create table student (
  id int primary key auto_increment,
  name varchar(50),
  score double
);
insert into student (id,name,score) values(1,'Tran Van Diep',8);
insert into student (name,score) values ('Tran Van B',8.3);
insert into student  values ('Tran Van C',8.9);
select * from student ;
update student 
       set name = "Nguyen Van H"
where id = 3;
set sql_safe_updates = 0;
set sql_safe_updates = 1;

drop table student;
drop database student_maganement_n03;
delete from student;
-- delete from student where id = 3;
-- drop database student_maganement_n03;