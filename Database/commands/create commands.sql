create database library;

use library;

create table Members(
SSN bigint NOT null primary key,
FirstName char(20),
Lastname char(20),
Email varchar(50),
Address varchar(200),
Mobile_num varchar(20),
Membership_startdate date,
Membership_expiredate date,
Is_professor varchar(3) check(Is_professor in ('Yes','No'))
) ;

create table Library_staff (
Staff_ID varchar(10) primary key,
Name varchar(30),
Type varchar(50)
);


create table Authentication (
Staff_ID varchar(10) primary key,
Password char(30),
FOREIGN KEY(Staff_ID) REFERENCES Library_staff(Staff_ID)
); 

Create table Publisher (
Publisher_ID varchar(10) primary key,
Name varchar(50)
);

create table Books (
ISBN varchar(20) primary key,
Title Varchar(50),
Volume_No int,
Edition varchar(50),
Category varchar(50),
Price varchar(20),
AuthName varchar(50),
Publisher_ID varchar(10),
Published_year int,
foreign key(Publisher_ID) references Publisher(Publisher_ID)
);


create table REPORTS (
Rep_no bigint primary key,
SSN bigint NOT null,
ISBN varchar(20),
Issue_date  varchar(30),
Return_date varchar(30),
Due_date varchar(30),
foreign key(SSN) references Members(SSN),
foreign key(ISBN) references Books(ISBN)
);
