use school;

create table students (
	id int,
    firstName varchar(255),
    lastName varchar(255),
    teachername varchar(255)
);

create table teachers (
	id int,
	teachername varchar(255),
    object varchar(255)
);

insert into students
values 
		(1, "Koko", "Kokov", "Joro"),
		(2, "Moko", "Mokov", "Pesho"),
        (3, "Loko", "Lokov", "Joro");
        
insert into teachers
values
	(1, "Pesho", "bg"),
    (2, "Joro", "math");
    
update teachers
set teachername = "Ivan"
where id = 2;

delete from students
where id = 3;

select teachers.*, students.firstname, students.lastName 
from teachers
join students on teachers.teacherName = students.teacherName
where teachers.object = "bg";
