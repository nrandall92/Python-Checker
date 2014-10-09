--Creates database
--
--

DROP DATABASE IF EXISTS 'Python_Checker';
CREATE DATABASE 'Python_Checker';
USE DATABASE 'Python_Checker';

-- Creates tables for login and projects
--
--

DROP TABLE IF EXISTS 'Login';
CREATE TABLE 'Login' (
	'ID' int(1) NOT NULL auto_increment,
	'Name' varchar(35) NOT NULL default '',
	'Password' varchar(25) NOT NULL default '',
	PRIMARY KEY ('ID')
);


DROP TABLE IF EXISTS 'Projects';
CREATE TABLE 'Projects' (
	'ID' int(20) NOT NULL auto_increment,
	'Name' varchar(25) NOT NULL default '',
	PRIMARY KEY ('ID')
);

DROP TABLE IF EXISTS 'Output';
CREATE TABLE 'Output' (
	'ID' int(20) NOT NULL auto_increment,
	'Project-Name' varchar(25) NOT NULL default '',
	'Output #1' varchar(45) default '',
	'Output #2' varchar(45) default '',
	'Output #3' varchar(45) default '',
	'Output #4' varchar(45) default '',
	'Output #5' varchar(45) default '',
	'Output #6' varchar(45) default '',
	'Output #7' varchar(45) default '',
	'Output #8' varchar(45) default '',
	'Output #9' varchar(45) default '',
	'Output #10', varchar(45) default '',
	PRIMARY KEY ('ID')
);

INSERT INTO 'Login' VALUES (1, 'Gusty', 'default');
INSERT INTO 'Projects' VALUES (1, 'Sample');
INSERT INTO 'Output' VALUES (1, 'Sample', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10');
