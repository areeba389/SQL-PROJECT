-- Insert Sample Books
INSERT INTO Books (Title, Author, Genre, PublishedYear, CopiesAvailable) VALUES
('Harry Potter', 'J.K. Rowling', 'Fantasy', 1997, 5),
('Atomic Habits', 'James Clear', 'Self-Help', 2018, 3),
('The Alchemist', 'Paulo Coelho', 'Fiction', 1988, 4),
('The Lean Startup', 'Eric Ries', 'Business', 2011, 2),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 6);

-- Insert Sample Members
INSERT INTO Members (Name, Email, Phone, JoinDate) VALUES
('Areeba Lone', 'areeba@example.com', '9876543210', '2023-01-10'),
('John Doe', 'john@example.com', '9876501234', '2023-05-20'),
('Sara Khan', 'sara@example.com', '9988776655', '2024-02-15');

-- Insert Borrow Records
INSERT INTO BorrowRecords (MemberID, BookID, BorrowDate, ReturnDate, Fine) VALUES
(1, 1, '2024-01-10', '2024-01-20', 0.00),
(2, 2, '2024-01-15', '2024-02-05', 20.00),
(3, 3, '2024-03-01', NULL, 0.00);
