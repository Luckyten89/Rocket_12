CREATE DATABASE IF NOT EXISTS Testing_System_assignment_1;
use Testing_System_assignment_1;
CREATE TABLE Department (
    DepartmentID 			 INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName			 VARCHAR(30) NOT NULL
);
 insert into Department ( DepartmentID, DepartmentName)
 values             (1,  N' Sale'),
					(2,	 N'Manage'),
                    (3,  N'THR'),
                    (4,  N'Marketing'),
                    (5,  N'Acounting');



CREATE TABLE Position (
    PositionID 			INT AUTO_INCREMENT PRIMARY KEY,
    PositionName 		VARCHAR(30) NOT NULL
);
insert into Position (PositionID, PositionName)
Values          (1,		N'Dev'),
				(2,		N'Test'),
                (3,		N'Scrum'),
				(4,		N'Master'),
                (5,		N'PM');
                
			
CREATE TABLE Account (
    AccountID			 INT AUTO_INCREMENT PRIMARY KEY,
    Email				 NVARCHAR(30) NOT NULL,
    Username			 NVARCHAR(30) NOT NULL,
    FullName			 NVARCHAR(30) NOT NULL,
    DepartmentID		 INT(20) NOT NULL,
    PositionID 		     INT(20) NOT NULL,
    CreateDate			 DATE
);
INSERT INTO     Account(AccountID, Email, Username, FullName, DepartmentID, PositionID, CreateDate)
Values          (1,		N'of1@gmail.com',   N'of',	 N'Nguyen Van of', 	01,  001,	'20-02-2001'),
				(2,		N'on2@gmail.com', 	N'on', 	 N'Nguyen Van on', 	02,  002,	'20-10-2002'),
                (3,		N'out3@gmail.com', 	N'out',  N'Nguyen Van out', 03,  003,	'20-04-1903'),
				(4,		N'in4@gmail.com', 	N'in',	 N'Nguyen Van in', 	04,  004,	'20-06-2004'),
                (5,		N'at5@gmail.com', 	N'at', 	 N'Nguyen Van at', 	05,  005,	'20-08-2005');

CREATE TABLE Group_1 (
    GroupID 			INT AUTO_INCREMENT PRIMARY KEY,
    GroupName 			NVARCHAR(30) NOT NULL,
    CreatorID 			INT(30) NOT NULL,
    CreateDate		    DATE
);
 
CREATE TABLE GroupAccount (
    GroupID				 INT AUTO_INCREMENT PRIMARY KEY,
    AccountID 		   	 INT(30),
    JoinDate			 DATE
);
CREATE TABLE TypeQuestion (
    TypeID			    INT AUTO_INCREMENT PRIMARY KEY,
    TypeName 			ENUM('Essay', 'Multiple-Choice') NOT NULL
);
CREATE TABLE CategoryQuestion (
    CategoryID 			INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName 		ENUM('Java', '.NET', 'SQL', 'Postman', 'Ruby') NOT NULL
);

CREATE TABLE Question (
    QuestionID 			 INT AUTO_INCREMENT PRIMARY KEY,
    Content				 VARCHAR(50) NOT NULL,
    CategoryID		     INT(30),
    TypeID 				 INT(30) NOT NULL,
    CreatorID			 INT(30) NOT NULL,
    CreateDate			 DATE NOT NULL
);
CREATE TABLE Answer (
    AnswerID 			INT AUTO_INCREMENT PRIMARY KEY,
    Content				NVARCHAR(30) NOT NULL,
    QuestionID		    INT(10) NOT NULL,
    isCorrect 			ENUM('true', 'flase') NOT NULL
);
CREATE TABLE Exam (
    ExamID 				INT AUTO_INCREMENT PRIMARY KEY,
    CodeID 				INT(20) NOT NULL,
    Title 				NVARCHAR(30) NOT NULL,
    CategoryID		    INT NOT NULL,
    Duration			TIME,
    CreatorID 			INT(30) NOT NULL,
    CreateDate			DATE
);

CREATE TABLE ExamQuestion (
    ExamID 				INT AUTO_INCREMENT PRIMARY KEY,
    QuestionID 			INT(20) NOT NULL
);