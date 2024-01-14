create table guvi.students(
	studentID int primary key,
    studentName varchar(20) not null,
    studentContact varchar(10) unique,
    studentEmail varchar(30) unique,
    studentDOB Date
);

create table guvi.courses(
	courseID int primary key,
    courseName varchar(30) not null,
    courseDescription varchar(200) not null,
    courseFee varchar(10) not null,
    courseDuration varchar(30) not null
);

create table guvi.admissions(
	StudentID int,
    CourseID int,
    foreign key(StudentID) references guvi.students(studentID),
    foreign key(CourseID) references guvi.courses(courseID)
);

create table guvi.studentsAttendance(
    s_ID int,
    s_Attendance date not null,
    s_Score varchar(5) primary key ,
	foreign key(s_ID) references guvi.students(studentID)
);

create table guvi.leaderboards(
	Student_id int,
    Studentscore varchar(5) not null,
    Studentattendance varchar(20) not null,
    foreign key(Student_id) references guvi.students(studentID),
    foreign key(Studentscore) references guvi.studentsAttendance(s_Score)
);

create table guvi.fees(
	stu_id int,
    cou_id int,
    fees varchar(10) not null,
    phone_no varchar(10) not null,
    foreign key(stu_id) references guvi.students(studentID),
    foreign key(cou_id) references guvi.courses(courseID)
)




