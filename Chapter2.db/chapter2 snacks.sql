CREATE DATABASE LagosRideSharing;
USE LagosRideSharing;

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
	Rating DECIMAL(3,2),
    TotalRides INT DEFAULT 0
);

-- CREATE TABLE Riders (
--  RiderID INT PRIMARY KEY,
-- 	Name VARCHAR(100) NOT NULL,
--
-- );


-- CREATE TABLE Rides (
-- 	RideID INT PRIMARY KEY,
--
-- );


-- CREATE TABLE Payment (
-- 	PaymentID INT PRIMARY KEY,
--     
-- );