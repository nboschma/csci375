DROP TABLE Events;
DROP TABLE Inquiries;
DROP TABLE Content_pages;
DROP TABLE Sections;
DROP TABLE Courses;
DROP TABLE Accounts;

CREATE TABLE Accounts (
   AID INT AUTO_INCREMENT,
   Name VARCHAR(50) NOT NULL,
   Email VARCHAR(200),
   Phone INT(10),
   Address VARCHAR(50),
   Role VARCHAR(20),
   PRIMARY KEY(AID)
);

CREATE TABLE Courses (
   CID INT,
   Name VARCHAR(50) NOT NULL,
   Description VARCHAR(200),
   Credits INT(10),
   Department VARCHAR(50),
   PRIMARY KEY(CID)
);

      
CREATE TABLE Sections(
   SecID INT,
   CID INT,
   AID INT,
   Number INT(10),
   Campus VARCHAR(20) NOT NULL,
   Class_size VARCHAR(10),
   PRIMARY KEY(SecID),
   FOREIGN KEY(CID) REFERENCES Courses (CID),
   FOREIGN KEY(AID) REFERENCES Accounts (AID)
);

CREATE TABLE Content_pages(
   CPID INT AUTO_INCREMENT,
   Title TEXT,
   Link_name TEXT,
   Filename TEXT,
   Keyname TEXT,
   Parent_page TEXT,
   Feature_img BLOB,
   Logos BLOB,
   PRIMARY KEY(CPID)
);

CREATE TABLE Inquiries(
   IID INT AUTO_INCREMENT,
   AID INT,
   Submitted INT(10),
   Responded VARCHAR(20) NOT NULL,
   Last_Updated VARCHAR(10),
   PRIMARY KEY(IID),
   FOREIGN KEY(AID) REFERENCES Accounts (AID)
);

CREATE TABLE Events(
   EID INT AUTO_INCREMENT,
   AID INT,
   Date TimeStamp,
   Location VARCHAR(30),
   Name VARCHAR(10),
   Description VARCHAR(50),
   contact_info VARCHAR(20), 
   PRIMARY KEY (EID), 
   FOREIGN KEY (AID) REFERENCES Accounts (AID)
);