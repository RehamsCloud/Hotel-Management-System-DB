/* 
Database Project
Shamayil Khalid - 44610372 
Reham Hussein - 446017138
Lian Alanazi - 446009851 
Shahad Mohammed - 446003547
*/

-- Shamayil's code
CREATE DATABASE HotelManagementSystem;
USE HotelManagementSystem;

CREATE TABLE GUEST (
    ID INT PRIMARY KEY,
    Fname VARCHAR(50) NOT NULL,
    Lname VARCHAR(50) NOT NULL,
    Phone VARCHAR(20) DEFAULT '0000000000',
    Email VARCHAR(100) DEFAULT 'no-email@gmail.com'
);

CREATE TABLE BOOKING (
    ID INT PRIMARY KEY,
    Check_in DATE NOT NULL,
    Check_out DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL DEFAULT '0.00',
    Guest_ID INT NOT NULL,
    FOREIGN KEY (Guest_ID) REFERENCES GUEST(ID),
    CONSTRAINT chk_dates CHECK (Check_out >= Check_in)
);

CREATE TABLE ROOM (
    Number INT PRIMARY KEY,
    Type VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Available',
    Booking_ID INT NULL,
    FOREIGN KEY (Booking_ID) REFERENCES BOOKING(ID)
);

-- Riham’s code
CREATE TABLE SERVICE(
ID INT PRIMARY KEY,
Name VARCHAR(60) NOT NULL,
Cost DECIMAL(10,2) DEFAULT '0.00');

CREATE TABLE REQUEST(
Booking_ID INT,
Serv_ID INT,
-- declare foreign keys
FOREIGN KEY (Booking_ID) REFERENCES BOOKING(ID),
FOREIGN KEY (Serv_ID) REFERENCES SERVICE(ID),
-- combination of foreign keys to make one primary key
PRIMARY KEY (Booking_ID, Serv_ID)
);

INSERT INTO GUEST (ID, Fname, Lname, Email) VALUES 
(1, 'Riham', 'WanDeraman', 'riham@gmail.com');

INSERT INTO GUEST VALUES 
(2, 'Lian', 'Alanazi', '0594712599', 'lian@gmail.com'),
(3, 'Shahad', 'Shareefy', '0555562081', 'shahad@gmail.com'),
(4, 'Shamayil', 'Khoj', '0554662710', 'shamayil@gmail.com')
;

INSERT INTO GUEST (ID, Fname, Lname, Phone) VALUES
(5, 'Wajanat', 'Rayes', '0566800531');

-- Shahad's code 
INSERT INTO BOOKING VALUES 
(101, '2026-05-01', '2026-05-05', 1200.00, 1),
(102, '2026-05-10', '2026-05-12', 800.00, 2),
(103, '2026-05-15', '2026-05-20', 2500.00, 3),
(104, '2026-06-01', '2026-06-03', 600.00, 4),
(105, '2026-06-10', '2026-06-15', 1500.00, 5);

INSERT INTO ROOM VALUES
(101, 'Single', 200.00, 'Booked', 101),
(102, 'Double', 300.00, 'Booked', 102),
(103, 'Suite', 500.00, 'Booked', 103);

INSERT INTO ROOM (Number, Type, price) VALUES 
(105, 'Double', 300.00),
(107, 'Single', 220.00);

-- Lian's code
INSERT INTO SERVICE VALUES
(1, 'Spa', 150.00),
(2, 'Laundry', 30.00),
(3, 'Room Service', 50.00),
(4, 'Airport Shuttle', 80.00),
(5, 'Breakfast Buffet', 45.00);

INSERT INTO REQUEST VALUES
(101, 1),
(101, 3),
(102, 2),
(103, 4),
(104, 5);

-- Shamayil's code
SELECT Number, Type, price
FROM ROOM
WHERE Status = 'Available';

-- Reham's code
SELECT COUNT(STATUS)AS booked_room
FROM ROOM
WHERE Status = 'Booked';

SELECT SUM(Price)AS sum_booked_room_price
FROM ROOM
WHERE Status='Booked';

SELECT GUEST.Fname, GUEST.Lname, BOOKING.Check_in, BOOKING.Amount
FROM GUEST
JOIN BOOKING ON GUEST.ID = BOOKING.GUEST_ID;

-- Lian's code
SELECT Fname, Lname
FROM GUEST 
WHERE ID IN ( SELECT Guest_ID FROM BOOKING);

-- Shahad's code
CREATE VIEW Available_Rooms AS
SELECT Number, Type, Price
FROM ROOM
WHERE Status = 'Available';
SELECT * FROM Available_Rooms;
