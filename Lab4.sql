use school;

drop table students_2;

create table students_2 (
	student_id int auto_increment primary key,
    student_name varchar(255) not null,
    address varchar(255) not null,
    age int not null,
    representative_id int null,
	constraint fk_representative_id foreign key (representative_id) references students_2(student_id)
);

insert into students_2 (student_name, address, age, representative_id) values
('Georgi Petkov Todorov', 'Bulgaria- Sofia Nadezhda', 25, null),
('Todor Petkov', 'Sofia - Liylin 7', 33, 1),
('Sofiq Dimitrova Petrova', 'Sofia - Mladost 4', 30, 1),
('Teodor Ivanov Stoyanov', 'Sofia - Obelya', 29, 1),
('Iliya Stoynov Todorov', 'Sofia - Nadezhda', 49, null),
('Mariela Dimitrova Yordanova', 'Sofia - Knyajevo', 32, 5);

select students.student_name as students, students.address, students.age
from students_2 as students join students_2 as representative
on students.representative_id = representative.student_id;
