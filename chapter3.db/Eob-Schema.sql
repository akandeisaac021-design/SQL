CREATE DATABASE CarRentalDB;

USE CarRentalDB;

CREATE TABLE Branch (
    branch_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    address VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE VehicleCategory (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE,
    daily_rate DECIMAL(10,2) NOT NULL CHECK (daily_rate > 0),
    seating_capacity INT NOT NULL CHECK (seating_capacity > 0)
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    drivers_license VARCHAR(50) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    preferred_branch_id INT,

    FOREIGN KEY (preferred_branch_id)
        REFERENCES Branch(branch_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL
);

CREATE TABLE Staff (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,

    role ENUM(
        'Branch Manager',
        'Rental Agent',
        'Mechanic'
    ) NOT NULL,

    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,

    branch_id INT NOT NULL,

    FOREIGN KEY(branch_id)
        REFERENCES Branch(branch_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Vehicle (

    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,

    license_plate VARCHAR(20) NOT NULL UNIQUE,

    make VARCHAR(50) NOT NULL,

    model VARCHAR(50) NOT NULL,

    manufacture_year YEAR NOT NULL,

    status ENUM(
        'Available',
        'Rented',
        'Maintenance'
    ) DEFAULT 'Available',

    category_id INT NOT NULL,

    branch_id INT NOT NULL,

    FOREIGN KEY(category_id)
        REFERENCES VehicleCategory(category_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(branch_id)
        REFERENCES Branch(branch_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);


CREATE TABLE Rental (

    rental_id INT AUTO_INCREMENT PRIMARY KEY,

    customer_id INT NOT NULL,

    vehicle_id INT NOT NULL,

    pickup_branch_id INT NOT NULL,

    return_branch_id INT,

    pickup_date DATE NOT NULL,

    planned_return_date DATE NOT NULL,

    actual_return_date DATE,

    status ENUM(
        'Reserved',
        'Active',
        'Completed',
        'Cancelled'
    ) NOT NULL,

    FOREIGN KEY(customer_id)
        REFERENCES Customer(customer_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(vehicle_id)
        REFERENCES Vehicle(vehicle_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(pickup_branch_id)
        REFERENCES Branch(branch_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(return_branch_id)
        REFERENCES Branch(branch_id)
        ON UPDATE CASCADE
        ON DELETE SET NULL,

    CHECK (planned_return_date >= pickup_date),

    CHECK (
        actual_return_date IS NULL
        OR actual_return_date >= pickup_date
    )
);


CREATE TABLE Maintenance (

    maintenance_id INT AUTO_INCREMENT PRIMARY KEY,

    vehicle_id INT NOT NULL,

    mechanic_id INT NOT NULL,

    service_date DATE NOT NULL,

    description VARCHAR(255) NOT NULL,

    cost DECIMAL(10,2) NOT NULL
        CHECK(cost >= 0),

    FOREIGN KEY(vehicle_id)
        REFERENCES Vehicle(vehicle_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    FOREIGN KEY(mechanic_id)
        REFERENCES Staff(staff_id)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);


CREATE TABLE DamageInspection (

    inspection_id INT AUTO_INCREMENT PRIMARY KEY,

    rental_id INT NOT NULL UNIQUE,

    damage_found BOOLEAN NOT NULL,

    damage_description VARCHAR(255),

    additional_charge DECIMAL(10,2)
        DEFAULT 0,

    FOREIGN KEY(rental_id)
        REFERENCES Rental(rental_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


CREATE TABLE Driver (

    driver_id INT AUTO_INCREMENT PRIMARY KEY,

    rental_id INT NOT NULL,

    full_name VARCHAR(100) NOT NULL,

    drivers_license VARCHAR(50) NOT NULL,

    phone VARCHAR(20),

    FOREIGN KEY(rental_id)
        REFERENCES Rental(rental_id)
        ON DELETE CASCADE
);


INSERT INTO Branch (branch_name, address, phone) VALUES
('Lagos Central', '312 Herbert Macaulay, Lagos', '08031234567'),
('Abuja', '45 Aminu Kano Crescent, Abuja', '08039876543'),
('Port Harcourt', '18 Aba Road, Port Harcourt', '08035557777');

INSERT INTO VehicleCategory (category_name, daily_rate, seating_capacity) VALUES
('Economy', 150000.00, 5),
('SUV', 300000.00, 7),
('Luxury', 500000.00, 5);

INSERT INTO Customer
(full_name, drivers_license, phone, email, preferred_branch_id)
VALUES
('John Daniel', 'DL123456', '08011111111', 'john@gmail.com', 1),
('Mary Jane', 'DL234567', '08022222222', 'mary@gmail.com', 2),
('Peter Okoro', 'DL345678', '08033333333', 'peter@gmail.com', 1),
('Grace Williams', 'DL456789', '08044444444', 'grace@gmail.com', 3),
('David Musa', 'DL567890', '08055555555', 'david@gmail.com', 2);

INSERT INTO Staff
(full_name, role, phone, email, branch_id)
VALUES
('Samuel Eke', 'Branch Manager', '08060000001', 'samuel@gmail.com', 1),
('Ngozi James', 'Rental Agent', '08060000002', 'ngozi@gmail.com', 1),
('Ibrahim Bello', 'Mechanic', '08060000003', 'ibrahim@gmail.com', 1),

('Rose Kewe', 'Branch Manager', '08060000004', 'rose@gmail.com', 2),
('Amina Yusuf', 'Rental Agent', '08060000005', 'amina@gmail.com', 2),
('Michael Obi', 'Mechanic', '08060000006', 'michael@rentals.com', 2),

('Kingsley Uche', 'Branch Manager', '08060000007', 'kingsley@gmail.com', 3),
('Faith Boma', 'Rental Agent', '08060000008', 'faith@gmail.com', 3),
('Daniel Eze', 'Mechanic', '08060000009', 'daniel@gmail.com', 3);

INSERT INTO Vehicle
(license_plate, make, model, manufacture_year, status, category_id, branch_id)
VALUES

('ABC-101AA', 'Toyota', 'Corolla', 2022, 'Available', 1, 1),

('ABC-102AA', 'Honda', 'Civic', 2021, 'Rented', 1, 1),

('ABC-103AA', 'Toyota', 'Highlander', 2023, 'Available', 2, 2),

('ABC-104AA', 'Ford', 'Explorer', 2022, 'Maintenance', 2, 2),

('ABC-105AA', 'Mercedes', 'GLE', 2024, 'Available', 3, 3),

('ABC-106AA', 'BMW', '520i', 2023, 'Rented', 3, 3);

INSERT INTO Rental
(customer_id,
vehicle_id,
pickup_branch_id,
return_branch_id,
pickup_date,
planned_return_date,
actual_return_date,
status)

VALUES

(1,2,1,1,'2026-07-01','2026-07-05',NULL,'Active'),

(2,6,3,3,'2026-07-03','2026-07-08',NULL,'Active'),

(3,1,1,2,'2026-06-10','2026-06-15','2026-06-15','Completed'),

(4,3,2,3,'2026-06-20','2026-06-25','2026-06-24','Completed'),

(5,5,3,3,'2026-07-15','2026-07-20',NULL,'Reserved');


INSERT INTO Maintenance
(vehicle_id,
mechanic_id,
service_date,
description,
cost)

VALUES

(4,6,'2026-06-01','Brake replacement and oil service',75000.00),

(2,3,'2026-05-15','Routine servicing',25000.00),

(5,9,'2026-04-10','Engine diagnostics',40000.00),

(1,3,'2026-06-18','Tyre replacement',30000.00);


INSERT INTO DamageInspection
(rental_id,
damage_found,
damage_description,
additional_charge)

VALUES

(3,
FALSE,
NULL,
0.00),

(4,
TRUE,
'Scratch on rear bumper',
15000.00);


INSERT INTO Driver
(rental_id,
full_name,
drivers_license,
phone)

VALUES

(1,'John Okeke','DL123456','08011111111'),

(1,'Jane Okafor','DL765432','08088888888'),

(2,'Mary Johnson','DL234567','08022222222'),

(5,'David Musa','DL567890','08055555555');