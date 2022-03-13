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

INSERT INTO tbl_Library_Branch(
	BranchName,
	AddressName
)VALUES
	('Sharptown','Baker Street'),
	('Gary Borrows','Mel Brook Drive'),
	('Terrace Ville','Any Time Boulvard'),
	('Jerry BaleTown','Carrer Street'),
	('Lemon Square','Down Town Place'),
	('Carrer City','Lime Street')
;

INSERT INTO tbl_Borrower (
	Customer,
	AddressName,
	PhoneNum
)VALUES
	('Emanuel Joyner','Hanover Court','202-918-2132'),
	('Marius Dickerson','Carriage Lane','239-399-4156'),
	('Kameron Gough','Gartner Ave','216-594-6223'),
	('Kathryn Peters','Golden Star Street','432-549-4311'),
	('Mara Mercado','Golf Ave','240-581-3306'),
	('Sahib Robins','Sulphur Springs Street','201-865-8906'),
	('Ella-Mae Wilks','Maple Street','302-708-2422'),
	('Anne Adkins','Ashley Court','501-461-5660')
;

