CREATE PROC The_Lost_Tribe_Owned_By_All_Branches
AS
SELECT a1.NumberOfCopies, a2.BranchName, a3.Title
FROM
	tbl_Book_Copies a1 
	INNER JOIN tbl_Library_Branch a2 ON a1.BranchID = a2.BranchID
	INNER JOIN tbl_Books a3 ON a1.BookID = a3.BookID
WHERE 
	a3.Title = 'The Lost Tribe';

[dbo].[The_Lost_Tribe_Owned_By_All_Branches]