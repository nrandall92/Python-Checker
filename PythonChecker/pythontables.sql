--Creates database
--
--

DROP TABLE Login;
DROP TABLE Output;
DROP TABLE Input;
DROP TABLE Projects;
DROP IF EXISTS Python_Checker;
CREATE DATABASE Python_Checker;
GRANT ALL PRIVILEGES ON Python_Checker to 'root'@'localhost' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON Python_Checker to 'root'@'localhost' IDENTIFIED BY 'password';
USE Python_Checker;

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
	PRIMARY KEY (O_ID)
);

CREATE TABLE Input 
(
	O_ID int(20) NOT NULL AUTO_INCREMENT,
	Project_Name varchar(25) NOT NULL ,
	PRIMARY KEY (O_ID)
);



INSERT INTO Login VALUES (1, 'Gusty', 'gus');
INSERT INTO Projects VALUES (1, 'Sample');

