USE db_library;

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
	CardNo,
	Customer,
	AddressName,
	PhoneNum
)VALUES
	('3033-940-8007925','Emanuel Joyner','Hanover Court','202-918-2132'),
	('1284-289-8072686','Marius Dickerson','Carriage Lane','239-399-4156'),
	('8953-556-0978799','Kameron Gough','Gartner Ave','216-594-6223'),
	('0806-902-0349503','Kathryn Peters','Golden Star Street','432-549-4311'),
	('2586-969-9969949','Mara Mercado','Golf Ave','240-581-3306'),
	('7429-944-6318630','Sahib Robins','Sulphur Springs Street','201-865-8906'),
	('7506-034-9356077','Ella-Mae Wilks','Maple Street','302-708-2422'),
	('7097-508-2682515','Anne Adkins','Ashley Court','501-461-5660')
;

INSERT INTO tbl_Publisher (
	PublisherName,AddressName,PhoneNum
)VALUES
	('Rowdy Troutman','Kailee Road','423-364-8527'),
	('Cruz Grimes','Vivianne Branch','505-644-7134'),
	('Karina Mata','Gutmann Plains','208-544-9255'),
	('Benicio Shipp','Batz Tunnel','201-265-2622'),
	('Jacoby Schulz','Dickens Mill','582-302-3814'),
	('Giulietta Soper','Ellis Ville','582-300-1624'),
	('Paulo Bare','Dare Corners','239-275-0225'),
	('Laylani Anglin','Stroman Overpass','505-644-0666'),
	('Alonna Seal','Kirlin Station','330-332-8422'),
	('Makai Rosen','Goodwin Track','208-943-8013')
;

INSERT INTO tbl_Books (
	Title,PublisherName
)VALUES
	('Have a Little Faith: a True Story','Cruz Grimes'),
	('The Lost Tribe','Alonna Seal'),
	('Torment of Shadows','Alonna Seal'),
	('The Last Prophet','Alonna Seal'),
	('The Communist Manifesto','Benicio Shipp'),
	('Think and Grow Rich','Benicio Shipp'),
	('V.','Giulietta Soper'),
	('The Angel Experiment','Giulietta Soper'),
	('The Mysterious Affair at Styles','Giulietta Soper'),
	('All the Bright Places','Jacoby Schulz'),
	('Speak','Karina Mata'),
	('Insurgent','Karina Mata'),
	('One for the Money','Karina Mata'),
	('The Cat in the Hat','Laylani Anglin'),
	('Throne of Glass','Laylani Anglin'),
	('A Christmas Carol','Makai Rosen'),
	('Einstein: His Life and Universe','Paulo Bare'),
	('The Silver Chair','Paulo Bare'),
	('IT','Rowdy Troutman'),
	('Leaves of Grass','Rowdy Troutman')
;

INSERT INTO tbl_Book_Authors(
	BookID,AuthorName
)VALUES
	(1,'Arianna Jimenez'),
	(2,'Arianna Jimenez'),
	(3,'Cecile Kammerer'),
	(4,'Cecile Kammerer'),
	(5,'Cecile Kammerer'),
	(6,'Sol Fries'),
	(7,'Eesha Arbuckle'),
	(8,'Eesha Arbuckle'),
	(9,'Sammie Vassar'),
	(10,'Avyukth Stroh'),
	(11,'Avyukth Stroh'),
	(12,'Kaiden Carr'),
	(13,'Kaiden Carr'),
	(14,'Kaiden Carr'),
	(15,'Kaiden Carr'),
	(16,'Sanjay Rosser'),
	(17,'Sanjay Rosser'),
	(18,'Raylynn Barger'),
	(19,'Raylynn Barger'),
	(20,'Kalise Melgar')
;

INSERT INTO tbl_Book_Copies(
	BookID,BranchID,NumberOfCopies
)VALUES
	(1,1,3),
	(2,1,6),
	(3,1,2),
	(4,1,4),
	(5,2,3),
	(6,2,6),
	(7,2,8),
	(19,3,3),
	(8,3,5),
	(9,3,4),
	(10,4,2),
	(11,4,7),
	(12,4,4),
	(13,5,5),
	(14,5,8),
	(15,5,5),
	(16,6,9),
	(17,6,4),
	(18,6,3),
	(20,6,3)
;

INSERT INTO tbl_Book_Loans(
	BookID,BranchID,CardNo,DateOut,DateDue
)VALUES
	(3,1,'3033-940-8007925','2022-3-02','2022-4-02'),
	(6,2,'1284-289-8072686','2022-5-06','2022-6-06'),
	(7,2,'1284-289-8072686','2022-5-06','2022-6-06'),
	(8,3,'8953-556-0978799','2022-6-12','2022-7-12'),
	(11,4,'0806-902-0349503','2022-4-14','2022-5-14'),
	(14,5,'2586-969-9969949','2022-1-26','2022-2-26'),
	(17,6,'7429-944-6318630','2022-7-13','2022-8-13'),
	(18,6,'7429-944-6318630','2022-7-13','2022-8-13'),
	(19,3,'8953-556-0978799','2022-6-12','2022-7-12'),
	(20,6,'7429-944-6318630','2022-7-13','2022-8-13')
;

SELECT * FROM ((tbl_Book_Loans FULL OUTER JOIN tbl_Borrower ON tbl_Book_Loans.CardNo = tbl_Borrower.CardNo) FULL OUTER JOIN tbl_Books ON tbl_Book_Loans.BookID = tbl_Books.BookID)