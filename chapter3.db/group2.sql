CREATE TABLE STUDENT (
    StudentNumber INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Dorm VARCHAR(50),
    RoomType VARCHAR(50),
    Club VARCHAR(50)
);

CREATE TABLE DORM (
    Dorm VARCHAR(50),
    RoomType VARCHAR(50),
    DormCost DECIMAL(10,2),
    PRIMARY KEY (Dorm, RoomType)
);

CREATE TABLE CLUB (
    Club VARCHAR(50) PRIMARY KEY,
    ClubCost DECIMAL(10,2)
);

CREATE TABLE STUDENT_NICKNAME (
    StudentNumber INT,
    Nickname VARCHAR(50),
    PRIMARY KEY (StudentNumber, Nickname),
    FOREIGN KEY (StudentNumber) REFERENCES STUDENT(StudentNumber)
);

CREATE TABLE STUDENT_SIBLING (
    StudentNumber INT,
    Sibling VARCHAR(100),
    PRIMARY KEY (StudentNumber, Sibling),
    FOREIGN KEY (StudentNumber) REFERENCES STUDENT(StudentNumber)
);
