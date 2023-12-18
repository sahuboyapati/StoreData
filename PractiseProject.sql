create database RainbowSchool;
use RainbowSchool;

create table Student (
    SID int primary key,
    FName nvarchar(50),
    LName nvarchar(50),
    CID int
)

create Index Student_ClassId ON Student(CId);

insert into Student(SId,Fname,Lname,CId) values(1,'Sam','Discosta',1)
insert into Student(SId,Fname,Lname,CId) values(3,'Ritu','Varma',2)
insert into Student(SId,Fname,Lname,CId) values(2,'Smith','William',3)
insert into Student(SId,Fname,Lname,CId) values(5,'John','David',4)
insert into Student(SId,Fname,Lname,CId) values(7,'Sony','Doe',5) 

create table Subjects (
    SubID int primary key,
    SubName nvarchar(50)
)

insert into Subjects(SubId,SubName) values(201,'English')
insert into Subjects(SubId,SubName) values(301,'Maths')
insert into Subjects(SubId,SubName) values(101,'Hindi')
insert into Subjects(SubId,SubName) values(501,'Science')
insert into Subjects(SubId,SubName) values(401,'Social')

create table Classes (
    CID int primary key,
    CName nvarchar(50)
)
insert into Classes(CId,CName) values(1,'Class 5')
insert into Classes(CId,CName) values(2,'Class 6')
insert into Classes(CId,CName) values(3,'Class 7')
insert into Classes(CId,CName) values(4,'Class 8')
insert into Classes(CId,CName) values(5,'Class 9')

select * from Student;
select * from Classes;
select * from Subjects;

select s.SId, s.FName, s.LName, c.CName, sub.SubName
from Student s
join Classes c ON s.CId = c.CId
cross join Subjects sub;