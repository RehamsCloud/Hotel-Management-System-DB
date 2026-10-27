# 🏨 Hotel Management System Database (MySQL)

A relational database system designed and implemented in **MySQL** for managing hotel operations, including guest records, room availability, bookings, and extra service requests.

---

## 📌 Project Overview
This project provides a normalized database schema and set of analytical SQL queries for a **Hotel Management System**. It manages:
* **Guests:** Personal details and contact information.
* **Bookings:** Check-in/out dates, pricing, and guest associations.
* **Rooms:** Room types, pricing, and live status (`Available` / `Booked`).
* **Services & Requests:** Ancillary services (Spa, Laundry, Shuttle, etc.) requested per booking.

---

## 🗄️ Database Schema & Entities

The relational model consists of the following tables:
* `GUEST` (ID, Fname, Lname, Phone, Email)[cite: 1]
* `BOOKING` (ID, Check_in, Check_out, Amount, Guest_ID)[cite: 1]
* `ROOM` (Number, Type, Price, Status, Booking_ID)[cite: 1]
* `SERVICE` (ID, Name, Cost)[cite: 1]
* `REQUEST` (Booking_ID, Serv_ID) — *Composite Primary Key*[cite: 1]

---

## 💻 SQL Features Included
* **DDL (Data Definition Language):** Table creation with `PRIMARY KEY`, `FOREIGN KEY`, `DEFAULT`, and `CHECK` constraints[cite: 1].
* **DML (Data Manipulation Language):** Sample data insertions for guests, rooms, bookings, and service requests[cite: 1].
* **DQL (Queries & Analytics):**
  * `JOIN` queries connecting guests to their respective booking records[cite: 1].
  * Aggregation functions (`COUNT`, `SUM`) to track booked room metrics and revenue[cite: 1].
  * Subqueries filtering guest bookings[cite: 1].
  * Database `VIEW` creation (`Available_Rooms`) for fast status reporting[cite: 1].

---

## 🚀 How to Run the Script

1. Open **MySQL Workbench** or your preferred MySQL client.
2. Execute the `HotelManagementSystemfinal.sql` file[cite: 1]:
   ```sql
   SOURCE path/to/HotelManagementSystemfinal.sql;

Verify table creation and data seeding:
USE HotelManagementSystem;
SHOW TABLES;

👥 Project Team & Contributors
Developed by Section 2 Team[cite: 1]:

Shamayil Khoj (ID: 44610372)[cite: 1]

Riham Wan-Deraman (ID: 446017138)[cite: 1]

Lian Alanazi (ID: 446009851)[cite: 1]

Shahad Shareefy (ID: 446003547)[cite: 1]