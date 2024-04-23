USE book_db;
-- Authors table:
DROP TABLE IF EXISTS book_db.authors_info;
CREATE TABLE authors_info (
    author_name VARCHAR(64),
    author_mobile VARCHAR(10),
    author_address VARCHAR(256),
    author_id INT PRIMARY KEY AUTO_INCREMENT
);
DESCRIBE book_db.authors_info;
-- Books table:
DROP TABLE IF EXISTS book_db.books_info;
CREATE TABLE books_info (
    pages INT,
    author_id INT,
    book_title VARCHAR(64),
    published_on TIMESTAMP,
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    FOREIGN KEY (author_id) REFERENCES book_db.authors_info(author_id)
);
DESCRIBE book_db.books_info;
--
-- Inserting data! (`authors_info`):
--
INSERT INTO book_db.authors_info (author_name, author_mobile, author_address, author_id)
SELECT DISTINCT author_name,
    author_mobile,
    author_address,
    author_id
FROM book_db.author;
--
-- Inserting data! (`books_info`):
--
SELECT *
FROM book_db.author;
INSERT INTO book_db.authors_info (
        pages,
        book_id,
        author_id,
        book_title,
        published_on,
    )
SELECT DISTINCT pages,
    0,
    author_id,
    book_title,
    published_on,
    FROM book_db.author;
SELECT *
FROM book_db.books_info;