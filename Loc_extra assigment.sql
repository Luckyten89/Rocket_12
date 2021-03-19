CREATE DATABASE Extra_testing1;

Drop table if not exit Trainee;
CREATE TABLE Trainee (
       TraineeID         int			 auto_increment primary key,            
       Full_Name         nvarchar(30) 	 not null ,       
       Birth_Date        time 			 not null,
       Gender            enum ( 'Male','Female', 'unknow') not null,
	   ET_IQ             int 			check(ET_IQ=<20),
       ET_Math           int  		trainee	check(ET_Math=<20),
       ET_English        int		    check(ET_English=<50),
	   Traning_Class     string(10)     not null,
       Evalution_Note    text		    not null
       );
alter table Trainee add column VTI_Accouting nvarchar(20) not null unique;

