-- This script creates the necessary tables for the book database.
CREATE TABLE author (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Bio TEXT
);

CREATE TABLE book_author (
    BookID INT,
    AuthorID INT,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES book(BookID),
    FOREIGN KEY (AuthorID) REFERENCES author(AuthorID)
);