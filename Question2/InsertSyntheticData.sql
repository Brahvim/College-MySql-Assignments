-- Inserting synthetic data into `users_table`:
INSERT INTO users_table (
        -- This, is our own format for inserting said data.
        -- Specifying our own can make it easier.
        -- Definitely worth doing everytime!:
        user_address,
        last_logged_on,
        registered_on,
        email,
        dob,
        username,
        is_active,
        id
    )
VALUES (
        '123 Main Street, Delhi',
        '2023-02-20 12:30:00',
        '2022-01-01 08:00:00',
        'user1@gmail.com',
        '1990-05-15',
        'user1',
        1,
        0
    ),
    (
        '456 Park Avenue, Mumbai',
        '2023-02-19 18:45:00',
        '2022-01-05 10:15:00',
        'user2@outlook.com',
        '1988-08-22',
        'user2',
        1,
        0
    ),
    (
        '789 Lake Road, Bangalore',
        '2023-02-18 21:20:00',
        '2022-01-10 14:45:00',
        'user3@gmail.com',
        '1995-03-12',
        'user3',
        0,
        0
    ),
    (
        '101 Hillside Lane, Kolkata',
        '2023-02-17 09:10:00',
        '2022-01-15 17:30:00',
        'user4@outlook.com',
        '1992-11-08',
        'user4',
        1,
        0
    ),
    (
        '202 River View, Chennai',
        '2023-02-16 15:55:00',
        '2022-01-20 21:00:00',
        'user5@protonmail.com',
        '1987-07-04',
        'user5',
        1,
        0
    ),
    (
        '303 Valley Street, Hyderabad',
        '2023-02-15 11:45:00',
        '2022-01-25 08:30:00',
        'user6@gmail.com',
        '1998-09-18',
        'user6',
        0,
        0
    ),
    (
        'fake location',
        '2024-02-24 20:20:20',
        '2024-02-24 21:21:21',
        'user7@tenminutemail.com',
        '2023-12-12',
        'user7',
        0,
        0
    ),
    (
        '505 Garden Avenue, Ahmedabad',
        '2023-02-13 14:35:00',
        '2022-02-04 15:45:00',
        'user8@gmail.com',
        '1991-06-09',
        'user8',
        1,
        0
    ),
    (
        '606 Sunset Boulevard, Jaipur',
        '2023-02-12 18:25:00',
        '2022-02-09 18:30:00',
        'user9@outlook.com',
        '1994-12-01',
        'user9',
        0,
        0
    ),
    (
        '707 Greenfield Place, Lucknow',
        '2023-02-11 07:50:00',
        '2022-02-14 23:59:59',
        'user10@protonmail.com',
        '1989-04-30',
        'user10',
        1,
        0
    );
-- Inserting synthetic data into `friends_table`:
INSERT INTO friends_table (user_id, friend_name)
VALUES (1, 'user2'),
    (1, 'user3'),
    (2, 'user1'),
    (2, 'user4'),
    (3, 'user2');
--  Finally, *seeing* the results in our IDE will verify this file's operations:
SELECT *
from users_table;
SELECT *
from friends_table;