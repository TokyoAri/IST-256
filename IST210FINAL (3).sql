drop table if exists ENROLLMENT;
drop table if exists SECTIONS;
drop table if exists PREFERENCES;
drop table if exists COURSES;
drop table if exists STUDENTS;
drop table if exists SEMESTER;
drop table if exists FACULTY;
drop table if exists CLASSROOM;
drop table if exists TIMESLOT;
drop table if exists DEPARTMENT;

create table DEPARTMENT (
NAMEx CHAR(20),
BUILDING CHAR(20),
primary key(TITLE)
);
create table CLASSROOM (
RoomNumber Int,
Building VARCHAR(45),
Capacity INT,
ClassType CHAR(10),
primary key(RoomNumber)
);
create table TIMESLOT (
TimeSlot  Date,
Hours int,
WeekDay date,
TimeOfDay CHAR(10),
primary key(TimeSlot)
);
create table FACULTY (
ID INT,
DEPARTMENT CHAR(20),
FNAME CHAR(20),
LNAME CHAR(20),
STATUSx CHAR(20),
CREDITLIMIT INT,
TEACHINGRECORD VARCHAR(45),
primary key (ID)
);
create table SEMESTER (
ID INT,
SESSIONx INT,
STARTDATE DATE,
ENDDATE DATE,
primary key (ID)
);
create table STUDENTS (
ID INT,
FNAME CHAR(20),
LNAME CHAR(20),
MAJOR CHAR(20),
EMAIL VARCHAR(45),
primary key(ID)
);


create table COURSES (
ID INT,
CREDITS INT,
DEPARTMENT_TITLE CHAR(20),
SCHEDULES_ID INT,
foreign key(DEPARTMENT_NAMEx) references DEPARTMENT(NAMEx)
);
create table PREFERENCES (
TIMEx DATE,
FACULTY_ID INT,
COURSES_ID INT,
primary key (TIMEx),
foreign key(FACULTY_ID) references FACULTY(ID),
foreign key(FACULTY_ID) references FACULTY(ID)
);
create table SECTIONS (
SECTIONNUMBER INT,
CLASSROOM int,
CAPACITY INT,
COURSES_ID INT,
FACULTY_ID INT,
SEMESTER_ID INT,
CLASSROOM_RoomNumber INT,
TIMESLOT_TimeSlot DATE,
primary key(SECTIONNUMBER),
foreign key(COURSES_ID) references COURSES(ID),
foreign key(FACULTY_ID) references FACULTY(ID),
foreign key(SEMESTER_ID) references SEMESTER(ID),
foreign key(CLASSROOM_RoomNumber) references CLASSROOM(RoomNumber),
foreign key(TIMESLOT_TimeSlot) references TIMESLOT(TimeSlot)
);

create table ENROLLMENT (
SECTIONS_SECTIONNUMBER INT,
STUDENTS_ID INT,
STARTDATE DATE,
ENDDATE DATE,
PREREQUISITE VARCHAR(45),
foreign key(SECTIONS_SECTIONNUMBER) references SECTIONS(SECTIONNUMBER),
foreign key(STUDENTS_ID) references STUDENTS(ID)
);





