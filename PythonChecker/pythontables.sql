--Creates database
--
--

DROP DATABASE IF EXISTS Python_Checker;
CREATE DATABASE Python_Checker;
USE DATABASE Python_Checker;

-- Creates tables for login and projects
--
--


CREATE TABLE Login (
	L_ID int(1) NOT NULL auto_increment,
	L_Name varchar(35) NOT NULL default '',
	Password varchar(25) NOT NULL default '',
	PRIMARY KEY (L_ID)
);



CREATE TABLE Projects (
	P_ID int(20) NOT NULL auto_increment,
	P_Name varchar(25) NOT NULL default '',
	PRIMARY KEY (P_ID)
);


CREATE TABLE Output 
(
	O_ID int(20) NOT NULL AUTO_INCREMENT,
	Project_Name varchar(25) NOT NULL ,
	Output_1 varchar(45),
	Output_2 varchar(45),
	Output_3 varchar(45),
	Output_4 varchar(45),
	Output_5 varchar(45),
	Output_6 varchar(45),
	Output_7 varchar(45),
	Output_8 varchar(45),
	Output_9 varchar(45),
	Output_10 varchar(45),
	PRIMARY KEY (O_ID)
);

INSERT INTO Login VALUES (1, 'Gusty', 'gus');
INSERT INTO Projects VALUES (1, 'Sample');
INSERT INTO Output VALUES (1, 'Sample', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10');
