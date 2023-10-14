CREATE DATABASE Employee_Management_System;
USE Employee_Management_System;

CREATE TABLE Employee_Details(
ID INT NOT NULL AUTO_INCREMENT,
First_Name VARCHAR (15)NOT NULL,
Last_Name VARCHAR (15)NOT NULL,
DateOfBirth VARCHAR (15)NOT NULL,
Gender VARCHAR (15)NOT NULL,
NI_Number VARCHAR(15) NOT NULL,
Address VARCHAR (25)NOT NULL,
City VARCHAR (15)NOT NULL,
Post_Code VARCHAR (10)NOT NULL,
Phone_Number INT NOT NULL,
Email_Address VARCHAR (20)NOT NULL,
Department_ID VARCHAR (10)NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY(Department_ID) REFERENCES Department(ID)
);

CREATE TABLE Emergency_Contact(
ID INT NOT NULL AUTO_INCREMENT,
Full_Name VARCHAR (25) NOT NULL,
Relationship VARCHAR (15) NOT NULL,
Phone_Number INT NOT NULL,
Employee_ID VARCHAR (10)NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY(Employee_ID)  REFERENCES Employee(ID)
);

CREATE TABLE Department(
ID INT NOT NULL AUTO_INCREMENT,
Department_Name VARCHAR (25) NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY(Manage_ID) REFERENCES Employee(ID)
);

CREATE TABLE Employment_Information(
ID INT NOT NULL AUTO_INCREMENT,
Date_of_Hire VARCHAR (25) NOT NULL,
Work_Hours INT NOT NULL,
Salary_Amount INT NOT NULL,
PRIMARY KEY(ID),
FOREIGN KEY(Manage_ID) REFERENCES Employee(ID)
);

CREATE TABLE Work_Schedule(
ID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(ID),
FOREIGN KEY(Employee_ID)  REFERENCES Employee(ID)
);

CREATE TABLE Bank_Account(
Bank_Name VARCHAR(15) NOT NULL,
Account_Number VARCHAR(15) NOT NULL,
Sort_code INT NOT NULL,
FOREIGN KEY(Employee_ID)  REFERENCES Employee(ID)
);

INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Joy','Cole',10/01/1967, 'Female', 'NZ237691A', 'Flat12,pinnacle court', 'London', 'PH0 2WE', +447256281902, 'joycole001@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address)
VALUE ('Tom','Nill',26/04/1972, 'male', 'AP132601D', 'Apartment 205,white Tower ', 'Leeds', 'LE1 0QH', +443521890334, 'tomnill@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('John','Adams',24/02/1992, 'male', 'NU098675A', '01,Green House, North Road', 'London', 'DD0 1GH', +440957832118, 'johnadams00@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Rahul','Sharukan',15/08/1967, 'male', 'N0674539V', 'House50,new gate Street', 'London', 'CR2 2PR', +448873628749, 'Rahul3030@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Imole','Adeoye',11/06/1999, 'Female', 'Null', 'No7,oniru Estate lekki Phase1', 'Lagos', '100001', +4476737389902, 'imolegrace081@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Faruq','Ibrahim',30/10/2000, 'male', 'AS065091A', '11,wesley Road', 'Brighton', 'BR8 9EE', +4472665378901, 'ibrahimfaruq@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Ademola','Olamide',24/07/2001, 'male', 'NZ009456A', 'Flat120, Alice court', 'Birmingham', 'BH4 0QQ', +447876345209, 'ademolaolamide@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Duzernski','cook',10/01/1990, 'male', 'NP134562B', '9,Projektowe', 'Lublin', '20-2099', +447723540915, 'cookduzernski@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Molly','Morgan',29/09/1967, 'Female', 'ZO890356B', '50,Plumsted Road', 'Manchester', 'CH1 2DF', +447659988467, 'mollymorgan29@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Maggi','Cuibe',12/01/2002, 'Female', 'ER367890U', 'House 004, Georg Building', 'London', 'EC20 2NN', +447025671892, 'maggicuibe2002@gmail.com' );
INSERT INTO Employee_Details (First_Name, Last_Name, DateOfBirth, Gender, NI_Number, Address, City, Post_Code, Phone_Number, Email_Address, Department_ID)
VALUE ('Sadaht','Prikash',10/12/2000, 'Female', 'Null', 'Flat 12 pinnacle court', 'Philadelphia', 'PA 18112', +4479037634569, 'sadahtprikashi@gmail.com' );

INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Nicolas Brand', 'Husband', +447355623780,01);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Bettly James', 'Wife', +447123234568, 02);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Anna Brown', 'Wife', +449037895562,003);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Ashanti Bandanna', 'Wife', +440120456792, 04);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Bisola Adeoye', 'Mother',+448743219012, 05);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Ahmed Ibrahim','Father', +449265890123, 06 );
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Ayo Olamide', 'Brother', +4400356892743, 07);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Preten Chuzlisky', 'Wife',+448790125634, 08);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Ben Arthur', 'Husbsnd', +447123458970, 09);
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('Angel murray', 'Mother', +449029876541, 10 );
INSERT INTO Emergency_Contact(Full_Name, Relationship, Phone_Number, Employee_ID)
VALUE ('', 'Sister', +447090876512, 011 );

INSERT INTO Department(Name, 






