create table district(
dist_id  int primary key,
dist_name  varchar(50) not null);


insert into district(dist_id, dist_name)
values(101, 'Kadapa'),(102,'Kurnool'),(103,'Ananthapur');

select * from district

create table city(
city_id  int primary key,
city_name  varchar(50) not null,
dist_id int foreign key references district(dist_id));

insert into city(city_id, city_name, dist_id)
values(1001, 'Proddatur', 101),
(1002, 'Jammalamadugu', 101),
(1003, 'Pulivendula', 101),
(1004, 'Thadipatri', 101),
(1005, 'Nandyala', 102),
(1006, 'Allagadda', 102),
(1007,'Chagalamarri', 102),
(1008, 'Dharmavaram', 103),
(1009, 'Rayadurgam', 103),
(1010, 'Kalyana Durgam', 103)

select * from city


create table class(
class_id  int primary key,
teacher_name  varchar(50) not null)


insert into class(class_id, teacher_name)
values(6, 'Maneesha'),
(7, 'Rani'),
(8, 'Sandhyarani'),
(9,'Anuradha'),
(10,'Indira')

select * from class;


create table marks(
marks_id int primary key,
maths int not null,
science int not null,
social int not null,
total int not null,
percentage float not null,
grade char(1) not null);



create table student(
hall_tckt_no int primary key not null,
name varchar(50) not null,
phone_no bigint not null,
email varchar(50) not null,
gender varchar(10) not null,
class_id int foreign key references class(class_id),
dist_id int foreign key references district(dist_id),
marks_id int foreign key references marks(marks_id))

alter table student modify column phone_no varchar(10) not null;








use SagarDB