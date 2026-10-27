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
* `GUEST` (ID, Fname, Lname, Phone, Email)
* `BOOKING` (ID, Check_in, Check_out, Amount, Guest_ID)
* `ROOM` (Number, Type, Price, Status, Booking_ID)
* `SERVICE` (ID, Name, Cost)
* `REQUEST` (Booking_ID, Serv_ID) — *Composite Primary Key*

---

## 💻 SQL Features Included
* **DDL (Data Definition Language):** Table creation with `PRIMARY KEY`, `FOREIGN KEY`, `DEFAULT`, and `CHECK` constraints.
* **DML (Data Manipulation Language):** Sample data insertions for guests, rooms, bookings, and service requests.
* **DQL (Queries & Analytics):**
  * `JOIN` queries connecting guests to their respective booking records.
  * Aggregation functions (`COUNT`, `SUM`) to track booked room metrics and revenue.
  * Subqueries filtering guest bookings.
  * Database `VIEW` creation (`Available_Rooms`) for fast status reporting.

---

## 🚀 How to Run the Script

1. Open **MySQL Workbench** or your preferred MySQL client.
2. Execute the `HotelManagementSystemfinal.sql` file:
   ```sql
   SOURCE path/to/HotelManagementSystemfinal.sql;

## 👥 Team Contributions

* **[Riham Wan-Deraman](https://github.com/RehamsCloud) (Team Leader & Developer):**
  * Designed tables and relationships for services and requests (`SERVICE`, `REQUEST`).
  * Implemented database aggregate queries (`COUNT`, `SUM`) and `JOIN` operations connecting guests to bookings.
* **[Lian Alanazi](https://github.com/Lian2030) (Contributor):**
  * Seeded comprehensive sample data for ancillary hotel services and guest records.
  * Implemented subqueries for tracking guest bookings.
* **Shahad Mohammed (Contributor):**
  * Handled sample data insertions for room allocations and booking periods.
  * Created database views (`Available_Rooms`) for streamlined room status reporting
* **Shamayil Khalid (Contributor):**
  * Created the main database (`HotelManagementSystem`) and foundational tables (`GUEST`, `BOOKING`) with primary and foreign key constraints.
  * Developed the initial availability filtering query.
