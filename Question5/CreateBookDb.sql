DROP DATABASE IF EXISTS book_db;
CREATE DATABASE book_db;
USE book_db;
DROP TABLE IF EXISTS book_db.author;
CREATE TABLE author (
    pages INT,
    published_on TIMESTAMP,
    book_title VARCHAR(64),
    author_name VARCHAR(64),
    author_mobile VARCHAR(10),
    author_address VARCHAR(256),
    author_id INT PRIMARY KEY AUTO_INCREMENT -- `AUTO_INCREMENT` is available only for primary-keys...
    -- Also, DO NOT leave trailing commas!
);
DESCRIBE book_db.author;
-- ...Synthetic data:
INSERT INTO book_db.author (
        pages,
        author_mobile,
        published_on,
        book_title,
        author_name,
        author_address
    )
VALUES (
        356,
        '7816984526',
        '2023-01-15',
        'The Art Of Programming',
        'John Perfeccsson',
        '2468 St, Red County, Santos, USA'
    ),
    (
        254,
        '9646851851',
        '2022-08-20',
        'Data-Oriented Design In Server-Space',
        'Kevin Node',
        '456 St, Doherty, Fierro, USA'
    ),
    (
        212,
        '6682828354',
        '2021-05-10',
        'Data Structures Unleashed',
        'Jay Son',
        '789 St, Rockshore East, Venturas, USA'
    ),
    (
        357,
        '7816984526',
        '2020-11-30',
        'OO Patterns And Best Practices',
        'John Perfeccsson',
        '2468 St, Red County, Santos, USA'
    ),
    (
        57,
        '9646851851',
        '2019-03-25',
        'Python For Web Servers Handbook',
        'Kevin Node',
        '456 St, Doherty, Fierro, USA'
    ),
    (
        512,
        '6682828354',
        '2018-09-12',
        'JavaScript Quirks And Essentials',
        'Jay Son',
        '789 St, Rockshore East, Venturas, USA'
    ),
    (
        320,
        '7816984526',
        '2017-12-05',
        'JDK 21 Advanced Guide',
        'John Perfeccsson',
        '2468 St, Red County, Santos, USA'
    ),
    (
        274,
        '9646851851',
        '2016-06-18',
        'Web Development With Node.js Guide',
        'Kevin Node',
        '456 St, Doherty, Fierro, USA'
    ),
    (
        380,
        '6682828354',
        '2015-02-10',
        'Building Text Parsing Libraries In C',
        'Jay Son',
        '789 St, Rockshore East, Venturas, USA'
    ),
    (
        310,
        '7816984526',
        '2014-10-28',
        'SQL For Enterprise - A Record Of Experience',
        'John Perfeccsson',
        '2468 St, Red County, Santos, USA'
    ),
    (
        260,
        '9646851851',
        '2013-07-14',
        'Ruby on Rails Guide',
        'Kevin Node',
        '456 St, Doherty, Fierro, USA'
    ),
    (
        458,
        '6682828354',
        '2012-04-02',
        'Introduction to Text Parsing',
        'Jay Son',
        '789 St, Rockshore East, Venturas, USA'
    );
SELECT *
FROM book_db.author;