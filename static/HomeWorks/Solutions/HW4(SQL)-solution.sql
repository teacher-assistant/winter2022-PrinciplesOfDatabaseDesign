-- part 1 : create tables of the database

-- create teachers tabel
create table teachers(
	teacher_id serial primary key,
	name varchar not null
);
-- create majors table
create table majors(
	major_id serial primary key,
	name varchar not null,
	grade varchar not null
);

-- create teachers_majors pivot table
create table major_teacher(
	major_id integer references majors(major_id),
	teacher_id integer references teachers(teacher_id)
);

-- create courses table
create table courses(
	course_id serial primary key,
	name varchar not null,
	credits integer not null,
	major_id integer references majors(major_id)
);

-- create offers table
create table offers(
	offer_id serial primary key,
	group_number integer not null,
	semester varchar not null,
	class_time varchar not null,
	course_id integer references courses(course_id),
	teacher_id integer references teachers(teacher_id)
);


-- part 2 : insert some data into tabels
insert into teachers(teacher_id, name) values (1, 'Dr. Ali Azarpeyvand');
insert into teachers(teacher_id, name) values (2, 'Dr. Davud Mohammadpur');
insert into teachers(teacher_id, name) values (3, 'Dr. Alireza Khanteymoori');
insert into teachers(teacher_id, name) values (4, 'Dr. Majid Heidari');

insert into majors(major_id, name, grade) values(1, 'Computer Engineering', 'Bachelor');
insert into majors(major_id, name, grade) values(2, 'Statistics', 'Bachelor');
insert into majors(major_id, name, grade) values(3, 'Computer Science', 'Master');
insert into majors(major_id, name, grade) values(4, 'Statistical Science', 'Master');

insert into major_teacher(teacher_id, major_id) values(1, 1);
insert into major_teacher(teacher_id, major_id) values(1, 3);
insert into major_teacher(teacher_id, major_id) values(2, 1);
insert into major_teacher(teacher_id, major_id) values(3, 3);
insert into major_teacher(teacher_id, major_id) values(4, 2);
insert into major_teacher(teacher_id, major_id) values(4, 4);

insert into courses(course_id, name, credits, major_id) values(1, 'Machine Learning', 3, 1);
insert into courses(course_id, name, credits, major_id) values(2, 'Data Structures', 3, 1);
insert into courses(course_id, name, credits, major_id) values(3, 'Probability', 3, 2);
insert into courses(course_id, name, credits, major_id) values(4, 'Advance Computer Architecture', 2, 3);
insert into courses(course_id, name, credits, major_id) values(5, 'Advance Probability', 2, 4);
insert into courses(course_id, name, credits, major_id) values(6, 'Database', 3, 1);

insert into offers(group_number, semester, class_time, course_id, teacher_id) values(1, 'Fall 2021', 'Sunday 10:00AM to 11:30AM', 1, 3);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(2, 'Fall 2020', 'Monday 02:00PM to 03:30PM', 1, 3);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(3, 'Winter 2022', 'Sunday 08:00AM to 10:00PM', 2, 1);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(3, 'Winter 2022', 'Saturday 08:00AM to 10:00PM', 4, 1);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(4, 'Fall 2019', 'Monday 02:00PM to 03:30PM', 6, 2);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(5, 'Fall 2015', 'Saturday 08:00AM to 10:00PM', 3,4);
insert into offers(group_number, semester, class_time, course_id, teacher_id) values(5, 'Winter 2022', 'Saturday 08:00AM to 10:00PM', 5,4);

-- part 3 : writing queries

-- Q1:
SELECT courses.course_id as "Course ID", courses."name" as "Course Name", courses.credits as "Course Credits", majors."name" as "Major Name", teachers."name" as "Teacher's Name"
from ((majors inner join courses on majors.major_id=courses.major_id) inner join offers on courses.course_id=offers.course_id) inner join teachers on teachers.teacher_id = offers.teacher_id
where majors.grade = 'Master' and majors."name" = 'Computer Science';

-- Q2:
-- Q2-1:
select dcistinct(teachers.teacher_id) as "Teacher's ID", teachers."name" as "Teacher's Name"
from (offers inner join teachers on offers.teacher_id=teachers.teacher_id)
where position('Sunday' in offers.class_time)=1;
-- Q2-2:
select distinct(teachers.teacher_id) as "Teacher's ID", teachers."name" as "Teacher's Name"
from (offers inner join teachers on offers.teacher_id=teachers.teacher_id)
where offers.class_time like '%Sunday%';

-- Q3:
select courses.course_id as "Course ID", courses."name" as "Course Name", offers.class_time as "Time(s) of class"
from courses inner join offers on courses.course_id = offers.course_id
where offers.semester = 'Winter 2022' and courses.credits=3;

-- Q4
select majors.major_id as "Major ID", majors."name" as "Major Name", majors.grade as "Major Grade", count(courses.course_id) as "Offered Course Count", sum(courses.credits) as "Offered Credits Count"
from (majors inner join courses on majors.major_id=courses.major_id) inner join offers on courses.course_id=offers.course_id
group by majors.major_id, majors."name", majors.grade;

-- Q5
select offers.class_time as "Class Time", count(offers.offer_id) as "Count"
from offers
where offers.semester='Fall 2020'
group by offers.class_time;

--Q6
select
	majors.major_id as "Major ID",
	majors."name" as "Major Name",
	majors.grade as "Major Grade",
	count(courses.course_id) as "Course(s) Count",
	sum(courses.credits) as "Credit(s) Count",
	(
		select count(*)
		from major_teacher
		where major_teacher.major_id=majors.major_id
	) as "Teachers Count"
from majors inner join courses on majors.major_id=courses.major_id
group by majors.major_id;

--Q7
select teachers.teacher_id as "Teacher's ID", teachers."name" as "Teacher's name" ,count(offers.offer_id) as "Count Courser Offered", sum(courses.credits) as "Sum Credits Of Offered Courses"
from (((teachers inner join offers on offers.teacher_id=teachers.teacher_id) inner join courses on courses.course_id=offers.course_id)inner join majors on majors.major_id=courses.major_id)
where majors."name"='Computer Engineering'
and teachers.teacher_id in (
	select teachers.teacher_id
	from (teachers inner join offers on offers.teacher_id=teachers.teacher_id)inner join courses on courses.course_id=offers.course_id
	where offers.semester='Fall 2021'
	group by teachers.teacher_id
	having sum(courses.credits)<12
)
group by teachers.teacher_id;