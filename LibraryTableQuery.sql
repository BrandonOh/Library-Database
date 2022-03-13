CREATE DATABASE db_library;

USE db_library;

CREATE TABLE tbl_Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	BranchName VARCHAR (50),
	AddressName VARCHAR (50)
);

CREATE TABLE tbl_Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Customer VARCHAR (50),
	AddressName VARCHAR(50),
	PhoneNum VARCHAR(50)
);

CREATE TABLE tbl_Publisher (
	PublisherName VARCHAR (50) PRIMARY KEY NOT NULL,
	AddressName VARCHAR(50),
	PhoneNum VARCHAR(50)
);

CREATE TABLE tbl_Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR (50),
	PublisherName VARCHAR(50) FOREIGN KEY REFERENCES tbl_Publisher(PublisherName)
);

CREATE TABLE tbl_Book_Loans (
	BookID INT NOT NULL FOREIGN KEY REFERENCES tbl_Books(BookID),
	BranchID INT NOT NULL FOREIGN KEY REFERENCES tbl_Library_Branch(BranchID),
	CardNo INT NOT NULL FOREIGN KEY REFERENCES tbl_Borrower(CardNo),
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
);

CREATE TABLE tbl_Book_Copies (
	BookID INT NOT NULL FOREIGN KEY REFERENCES tbl_Books(BookID),
	BranchID INT NOT NULL FOREIGN KEY REFERENCES tbl_Library_Branch(BranchID),
	NumberOfCopies INT NOT NULL
);

CREATE TABLE tbl_Book_Authors(
	BookID INT NOT NULL FOREIGN KEY REFERENCES tbl_Books(BookID),
	AuthorName VARCHAR (50) NOT NULL
);

SELECT * FROM tbl_Book_Authors;
SELECT * FROM tbl_Book_Copies;
SELECT * FROM tbl_Book_Loans;
SELECT * FROM tbl_Books;
SELECT * FROM tbl_Borrower;
SELECT * FROM tbl_Library_Branch;
SELECT * FROM tbl_Publisher;