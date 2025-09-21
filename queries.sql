-- Show all available books
SELECT Title, Author, CopiesAvailable 
FROM Books 
WHERE CopiesAvailable > 0;

-- Find all books borrowed by a specific member
SELECT m.Name, b.Title, br.BorrowDate, br.ReturnDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
WHERE m.Name = 'Areeba Lone';

-- Calculate total fines collected
SELECT SUM(Fine) AS TotalFines 
FROM BorrowRecords;

-- Show overdue books (not returned and borrowed > 30 days ago)
SELECT m.Name, b.Title, br.BorrowDate
FROM BorrowRecords br
JOIN Members m ON br.MemberID = m.MemberID
JOIN Books b ON br.BookID = b.BookID
WHERE br.ReturnDate IS NULL 
  AND DATEDIFF(CURDATE(), br.BorrowDate) > 30;

-- Count number of books by genre
SELECT Genre, COUNT(*) AS TotalBooks
FROM Books
GROUP BY Genre;
