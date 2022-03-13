CREATE PROC Borrowers_Without_Books
AS
SELECT a1.Customer
FROM
	tbl_Borrower a1
	FULL OUTER JOIN tbl_Book_Loans a2 ON a2.CardNo = a1.CardNo
WHERE
	a2.BookID IS NULL;

[dbo].[Borrowers_Without_Books]