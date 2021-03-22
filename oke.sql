CREATE DATABASE IF not EXISTs Testing_System_assignment_1;
use Testing_System_assignment_1;
CREATE TABLE Department (
    DepartmentID 			 SMALLINT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName			 NVARCHAR(30) NOT NULL
);
INSERT INTO Department(DepartmentName) 
VALUES
						(N'Marketing'	),
						(N'Sale'		),
						(N'Bảo vệ'		),
						(N'Nhân sự'		),
						(N'Kỹ thuật'	),
						(N'Tài chính'	),
						(N'Phó giám đốc'),
						(N'Giám đốc'	),
						(N'Thư kí'		),
						(N'Bán hàng'	);
SELECT * FROM Department;

SELECT DepartmentID FROM Demartment
WHERE DepartmentName = N'Sale';


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
                
	
CREATE TABLE `Account` (
    AccountID			 INT AUTO_INCREMENT PRIMARY KEY,
    Email				 NVARCHAR(30) NOT NULL,
    Username			 NVARCHAR(30) NOT NULL,
    FullName			 NVARCHAR(30) NOT NULL,
    DepartmentID		 INT(20) NOT NULL,
    PositionID 		     INT(20) NOT NULL,
    CreateDate			 DATETIME
);

INSERT INTO `Account`(Email								, Username			, FullName				, DepartmentID	, PositionID, CreateDate)
VALUES 				('haidang29productions@gmail.com'	, 'dangblack'		,'Nguyễn hải Đăng'		,   '5'			,   '1'		,'2020-03-05'),
					('account1@gmail.com'				, 'quanganh'		,'Nguyen Chien Thang2'		,   '1'			,   '2'		,'2020-03-05'),
                    ('account2@gmail.com'				, 'vanchien'		,'Nguyen Van Chien'		,   '2'			,   '3'		,'2020-03-07'),
                    ('account3@gmail.com'				, 'cocoduongqua'	,'Duong Do'				,   '3'			,   '4'		,'2020-03-08'),
                    ('account4@gmail.com'				, 'doccocaubai'		,'Nguyen Chien Thang1'	,   '4'			,   '4'		,'2020-03-10'),
                    ('dapphatchetngay@gmail.com'		, 'khabanh'			,'Ngo Ba Kha'			,   '6'			,   '3'		,'2020-04-05'),
                    ('songcodaoly@gmail.com'			, 'huanhoahong'		,'Bui Xuan Huan'		,   '7'			,   '2'		, NULL		),
                    ('sontungmtp@gmail.com'				, 'tungnui'			,'Nguyen Thanh Tung'	,   '8'			,   '1'		,'2020-04-07'),
                    ('duongghuu@gmail.com'				, 'duongghuu'		,'Duong Van Huu'		,   '9'			,   '2'		,'2020-04-07'),
                    ('vtiaccademy@gmail.com'			, 'vtiaccademy'		,'Vi Ti Ai'				,   '10'		,   '1'		,'2020-04-09');

//Question 3: lấy ra thông tin account có full name dài nhất--
SELECT  FROM `Account`;

CREATE TABLE Group_1 (
    GroupID 			INT AUTO_INCREMENT PRIMARY KEY,
    GroupName 			NVARCHAR(30) NOT NULL,
    CreatorID 			INT(30) NOT NULL,
    CreateDate		    DATETIME
);
 INSERT INTO `Group`	(  GroupName			, CreatorID		, CreateDate)
VALUES 				(N'Testing System'		,   5			,'2019-03-05'),
					(N'Development'			,   1			,'2020-03-07'),
                    (N'VTI Sale 01'			,   2			,'2020-03-09'),
                    (N'VTI Sale 02'			,   3			,'2020-03-10'),
                    (N'VTI Sale 03'			,   4			,'2020-03-28'),
                    (N'VTI Creator'			,   6			,'2020-04-06'),
                    (N'VTI Marketing 01'	,   7			,'2020-04-07'),
                    (N'Management'			,   8			,'2020-04-08'),
                    (N'Chat with love'		,   9			,'2020-04-09'),
                    (N'Vi Ti Ai'			,   10			,'2020-04-10');

CREATE TABLE GroupAccount (
    GroupID				 INT AUTO_INCREMENT PRIMARY KEY,
    AccountID 		   	 INT(30),
    JoinDate			 DATETIME
);
INSERT INTO `Group`	(  GroupName			, CreatorID		, CreateDate)
VALUES 				(N'Testing System'		,   5			,'2019-03-05'),
					(N'Development'			,   1			,'2020-03-07'),
                    (N'VTI Sale 01'			,   2			,'2020-03-09'),
                    (N'VTI Sale 02'			,   3			,'2020-03-10'),
                    (N'VTI Sale 03'			,   4			,'2020-03-28'),
                    (N'VTI Creator'			,   6			,'2020-04-06'),
                    (N'VTI Marketing 01'	,   7			,'2020-04-07'),
                    (N'Management'			,   8			,'2020-04-08'),
                    (N'Chat with love'		,   9			,'2020-04-09'),
                    (N'Vi Ti Ai'			,   10			,'2020-04-10');

CREATE TABLE TypeQuestion (
    TypeID			    INT AUTO_INCREMENT PRIMARY KEY,
    TypeName 			ENUM('Essay', 'Multiple-Choice') NOT NULL
);
INSERT INTO TypeQuestion	(TypeName			) 
VALUES 						('Essay'			), 
							('Multiple-Choice'	); 
CREATE TABLE CategoryQuestion (
    CategoryID 			INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName 		ENUM('Java', '.NET', 'SQL', 'Postman', 'Ruby') NOT NULL
);
    INSERT INTO CategoryQuestion		(CategoryName	)
VALUES 								('Java'			),
									('ASP.NET'		),
									('ADO.NET'		),
									('SQL'			),
									('Postman'		),
									('Ruby'			),
									('Python'		),
									('C++'			),
									('C Sharp'		),
									('PHP'			);
                                    
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
INSERT INTO Answer	(  Content		, QuestionID	, isCorrect	)
VALUES 				(N'Trả lời 01'	,   1			,	0		),
					(N'Trả lời 02'	,   1			,	1		),
                    (N'Trả lời 03'	,   1			,	0		),
                    (N'Trả lời 04'	,   1			,	1		),
                    (N'Trả lời 05'	,   2			,	1		),
                    (N'Trả lời 06'	,   3			,	1		),
                    (N'Trả lời 07'	,   4			,	0		),
                    (N'Trả lời 08'	,   8			,	0		),
                    (N'Trả lời 09'	,   9			,	1		),
                    (N'Trả lời 10'	,   10			,	1		);

CREATE TABLE Exam (
    ExamID 				INT AUTO_INCREMENT PRIMARY KEY,
    CodeID 				INT(20) NOT NULL,
    Title 				NVARCHAR(30) NOT NULL,
    CategoryID		    INT NOT NULL,
    Duration			TIME,
    CreatorID 			INT(30) NOT NULL,
    CreateDate			DATE
);
INSERT INTO Question	(Content			, CategoryID, TypeID		, CreatorID	, CreateDate )
VALUES 					(N'Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java Câu hỏi về Java'	,	1		,   '1'			,   '2'		,'2020-04-05'),
						(N'Câu Hỏi về PHP'	,	10		,   '2'			,   '2'		,'2020-04-05'),
						(N'Hỏi về C#'		,	9		,   '2'			,   '3'		,'2020-04-06'),
						(N'Hỏi về Ruby'		,	6		,   '1'			,   '4'		,'2020-04-06'),
						(N'Hỏi về Postman'	,	5		,   '1'			,   '5'		,'2020-04-06'),
						(N'Hỏi về ADO.NET'	,	3		,   '2'			,   '6'		,'2020-04-06'),
						(N'Hỏi về ASP.NET'	,	2		,   '1'			,   '7'		,'2020-04-06'),
						(N'Hỏi về C++'		,	8		,   '1'			,   '8'		,'2020-04-07'),
						(N'Hỏi về SQL'		,	4		,   '2'			,   '9'		,'2020-04-07'),
						(N'Hỏi về Python'	,	7		,   '1'			,   '10'	,'2020-04-07');

CREATE TABLE ExamQuestion (
    ExamID 				INT AUTO_INCREMENT PRIMARY KEY,
    QuestionID 			INT(20) NOT NULL
);
INSERT INTO ExamQuestion(ExamID	, QuestionID	) 
VALUES 					(	1	,		5		),
						(	2	,		10		), 
						(	3	,		4		), 
						(	4	,		3		), 
						(	5	,		7		), 
						(	6	,		10		), 
						(	7	,		2		), 
						(	8	,		10		), 
						(	9	,		9		), 
						(	10	,		8		); 
                        
Question 1: lấy ra tất cả các phòng ban
    SELECT DepartmentID,DepartmentName FROM Department;
--Question 2: lấy ra id của phòng ban có tên là "Sale"
SELECT DepartmentID FROM Department
WHERE DepartmentName = 'Sale';


--Question 4: Lấy ra tên group đã tham gia trước ngày 20/12/2019
 SELECT GroupName FROM Group
 WHERE  CreateDate < '20-12-2019';


SELECT QuesionID FROM Question
WHERE QuesionID >= 4; 

--Question 6: Lấy ra 5 group được tạo gần đây nhất
SELECT GroupName FROM Group
Order by CreateDate  limit(5);
--Question 8: Xóa tất cả các exam được tạo trước ngày 20/12/2019
SELECT * FROM Exam
Delete from Exam where CreateExam >= '20-12-2019';
 
--Question 9: Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và
--email thành loc.nguyenba@vti.com.vn
Update  `Account` 
set  UseName=' nguyen ba loc', Email= 'loc.nguyenba@vti.com.vn'
where AccountID = 5;

--Question 10: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT A.UserName, A.FullNam, A.DepartmentID, A.CreateDay, A.Position, A.DepartmentID
FROM `Account` A
INNER JOIN  Department D ON D.DepartmentID=A.DepartmentID;

--Question 11: Viết lệnh để lấy ra tất cả các developer
SELECT A.PositionName, A.PositionID From`Account` A
INNER JOIN Positin P ON P.PositionID = A.PositionID
where A.PositionName = 'Developer';

--Question 12: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên
SELECT A.DepartmentID, A.DepartmentName , COUNT(DepartmentID) AS 'SO LUONG'  FROM `Account` A
INNER JOIN DepartmentID D ON D.DepartmentID = A.DepartmentID
Group by A.DepartmentID
Having Count(DepartmentName) >3;

--Question 13: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều
nhất
SELECT Q.QuestionID, Q.Content, Q.CategoryID, Q.TypeID, Q.CreatorID, Q.CreateDate, COUNT(Q.Content) AS 'SO LUONG'
FROM Quesion Q
INNER JOIN ExamQuesion E ON E.QuesionID = Q.QuesionID
GROUP BY Q.content
HAVING COUNT(Q.Content = SELECT MAX(CountQ) FROM 
									(SELECT 	COUNT(Q.QuestionID) AS 'CountQ'
                                    FROM ExamQuesion E
                                    INNER JOIN QuesionID Q ON E.QuesionID = Q.QuesionID
                                    Group BY Q.QuestionID AS MAX(Content));

--Question 17: Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM

--Question 18: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của

question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, ...
--Question 19: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm