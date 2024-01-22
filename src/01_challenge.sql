CREATE TABLE room_users (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    room_id INTEGER NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(id),
    user_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    check_in DATE NOT NULL,
    check_out DATE
);
INSERT INTO room_users (user_id, room_id, check_in, check_out)
VALUES (1, 1, '2023-01-01', NULL),
(7, 3, '2023-10-03', NULL),
(2, 5, '2023-05-10', NULL),
(3, 5, '2023-05-10', NULL),
(5, 6, '2023-09-25', '2023-09-30'),
(7, 13, '2023-08-03', '2023-08-10');