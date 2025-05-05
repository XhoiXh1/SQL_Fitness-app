CREATE DATABASE DB_FITNESS
GO
USE DB_FITNESS
GO

CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(15),
    JoinDate DATE,
    MembershipType NVARCHAR(50)
);

INSERT INTO Members (FirstName, LastName, Email, PhoneNumber, JoinDate, MembershipType)
VALUES 
('John', 'Doe', 'john.doe@example.com', '1234567890', '2025-01-01', 'Premium'),
('Jane', 'Smith', 'jane.smith@example.com', '1234567891', '2025-01-02', 'Standard'),
('Robert', 'Johnson', 'robert.johnson@example.com', '1234567892', '2025-01-03', 'Premium'),
('Emily', 'Davis', 'emily.davis@example.com', '1234567893', '2025-01-04', 'Standard'),
('Michael', 'Miller', 'michael.miller@example.com', '1234567894', '2025-01-05', 'Standard'),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '1234567895', '2025-01-06', 'Premium'),
('David', 'Moore', 'david.moore@example.com', '1234567896', '2025-01-07', 'Standard'),
('Linda', 'Taylor', 'linda.taylor@example.com', '1234567897', '2025-01-08', 'Premium'),
('James', 'Anderson', 'james.anderson@example.com', '1234567898', '2025-01-09', 'Standard'),
('Jessica', 'Thomas', 'jessica.thomas@example.com', '1234567899', '2025-01-10', 'Premium'),
('William', 'Jackson', 'william.jackson@example.com', '1234567800', '2025-01-11', 'Standard'),
('Patricia', 'White', 'patricia.white@example.com', '1234567801', '2025-01-12', 'Premium'),
('Joseph', 'Harris', 'joseph.harris@example.com', '1234567802', '2025-01-13', 'Standard'),
('Karen', 'Martin', 'karen.martin@example.com', '1234567803', '2025-01-14', 'Premium'),
('Charles', 'Lee', 'charles.lee@example.com', '1234567804', '2025-01-15', 'Standard'),
('Mary', 'Walker', 'mary.walker@example.com', '1234567805', '2025-01-16', 'Premium'),
('Robert', 'Hall', 'robert.hall@example.com', '1234567806', '2025-01-17', 'Standard'),
('Thomas', 'Allen', 'thomas.allen@example.com', '1234567807', '2025-01-18', 'Premium'),
('Mark', 'Young', 'mark.young@example.com', '1234567808', '2025-01-19', 'Standard'),
('Nancy', 'King', 'nancy.king@example.com', '1234567809', '2025-01-20', 'Premium');
GO

CREATE TABLE Trainers (
    TrainerID INT PRIMARY KEY IDENTITY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Specialization NVARCHAR(100),
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(15)
);

INSERT INTO Trainers (FirstName, LastName, Specialization, Email, PhoneNumber)
VALUES 
('Mike', 'Brown', 'Strength Training', 'mike.brown@example.com', '1234567894'),
('Sarah', 'Wilson', 'Yoga', 'sarah.wilson@example.com', '1234567895'),
('James', 'Taylor', 'Cardio', 'james.taylor@example.com', '1234567896'),
('Rachel', 'Anderson', 'Pilates', 'rachel.anderson@example.com', '1234567897'),
('Brian', 'Thomas', 'Weightlifting', 'brian.thomas@example.com', '1234567898'),
('Jessica', 'Davis', 'Spin', 'jessica.davis@example.com', '1234567899'),
('David', 'Miller', 'HIIT', 'david.miller@example.com', '1234567800'),
('Emily', 'Jackson', 'Zumba', 'emily.jackson@example.com', '1234567801'),
('Michael', 'Lee', 'Kickboxing', 'michael.lee@example.com', '1234567802'),
('Laura', 'Martinez', 'CrossFit', 'laura.martinez@example.com', '1234567803'),
('James', 'White', 'Bodybuilding', 'james.white@example.com', '1234567804'),
('Anna', 'Wilson', 'Pilates', 'anna.wilson@example.com', '1234567805'),
('Sophia', 'Harris', 'Yoga', 'sophia.harris@example.com', '1234567806'),
('Mark', 'Young', 'Functional Training', 'mark.young@example.com', '1234567807'),
('William', 'Scott', 'Strength Training', 'william.scott@example.com', '1234567808'),
('Linda', 'Thompson', 'Dance', 'linda.thompson@example.com', '1234567809'),
('Joseph', 'Allen', 'Cycling', 'joseph.allen@example.com', '1234567810'),
('Patricia', 'King', 'Personal Training', 'patricia.king@example.com', '1234567811'),
('John', 'Rodriguez', 'Strength & Conditioning', 'john.rodriguez@example.com', '1234567812'),
('Emily', 'Adams', 'Aerobics', 'emily.adams@example.com', '1234567813');
GO

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY IDENTITY,
    ClassName NVARCHAR(100),
    ClassDateTime DATETIME,
    TrainerID INT FOREIGN KEY REFERENCES Trainers(TrainerID),
    MaxCapacity INT
);

INSERT INTO Classes (ClassName, ClassDateTime, TrainerID, MaxCapacity)
VALUES 
('Morning Yoga', '2025-05-01 08:00:00', 2, 20),
('Strength Training', '2025-05-01 10:00:00', 1, 15),
('Cardio Blast', '2025-05-01 12:00:00', 3, 25),
('Pilates Flex', '2025-05-01 14:00:00', 4, 15),
('Weightlifting Session', '2025-05-02 08:00:00', 5, 20),
('Spin Class', '2025-05-02 10:00:00', 6, 20),
('HIIT Challenge', '2025-05-02 12:00:00', 7, 20),
('Zumba Dance', '2025-05-02 14:00:00', 8, 30),
('Kickboxing', '2025-05-03 08:00:00', 9, 20),
('CrossFit Workout', '2025-05-03 10:00:00', 10, 20),
('Bodybuilding Class', '2025-05-03 12:00:00', 11, 15),
('Pilates Reformer', '2025-05-03 14:00:00', 12, 15),
('Functional Training', '2025-05-04 08:00:00', 14, 20),
('Dance Fitness', '2025-05-04 10:00:00', 16, 25),
('Cycling Class', '2025-05-04 12:00:00', 17, 20),
('Personal Training', '2025-05-04 14:00:00', 18, 10),
('Strength & Conditioning', '2025-05-05 08:00:00', 19, 20),
('Aerobics Session', '2025-05-05 10:00:00', 20, 30),
('Zumba Dance Party', '2025-05-05 12:00:00', 8, 20),
('HIIT Bootcamp', '2025-05-05 14:00:00', 7, 20);
GO

CREATE TABLE MembershipPlans (
    PlanID INT PRIMARY KEY IDENTITY,
    PlanName NVARCHAR(50),
    DurationMonths INT,
    Price DECIMAL(10, 2)
);

INSERT INTO MembershipPlans (PlanName, DurationMonths, Price)
VALUES 
('Basic Plan', 3, 30.00),
('Standard Plan', 6, 50.00),
('Premium Plan', 12, 100.00),
('Family Plan', 12, 180.00),
('Student Plan', 6, 40.00),
('Corporate Plan', 12, 150.00),
('Silver Plan', 3, 45.00),
('Gold Plan', 6, 75.00),
('Platinum Plan', 12, 200.00),
('Basic Annual Plan', 12, 250.00),
('Fitness Plus', 6, 80.00),
('Super Premium', 12, 250.00),
('Junior Plan', 3, 35.00),
('Senior Plan', 6, 60.00),
('Weekend Warrior', 3, 50.00),
('All Access Plan', 12, 220.00),
('Wellness Plan', 6, 70.00),
('Quick Start', 1, 25.00),
('One Month Plan', 1, 35.00),
('Elite Membership', 12, 300.00);
GO

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY,
    MemberID INT FOREIGN KEY REFERENCES Members(MemberID),
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID),
    AttendanceDate DATE
);

INSERT INTO Attendance (MemberID, ClassID, AttendanceDate)
VALUES 
(1, 1, '2025-05-01'),
(2, 2, '2025-05-01'),
(3, 3, '2025-05-02'),
(4, 4, '2025-05-02'),
(5, 5, '2025-05-02'),
(6, 6, '2025-05-02'),
(7, 7, '2025-05-03'),
(8, 8, '2025-05-03'),
(9, 9, '2025-05-03'),
(10, 10, '2025-05-03'),
(11, 11, '2025-05-04'),
(12, 12, '2025-05-04'),
(13, 13, '2025-05-04'),
(14, 14, '2025-05-05'),
(15, 15, '2025-05-05'),
(16, 16, '2025-05-05'),
(17, 17, '2025-05-06'),
(18, 18, '2025-05-06'),
(19, 19, '2025-05-06'),
(20, 20, '2025-05-06');
GO

CREATE ROLE ADMIN_DB
GRANT INSERT, DELETE, SELECT, ALTER ON SCHEMA::dbo TO ADMIN_DB
GO

CREATE ROLE USER_DB
GRANT SELECT ON dbo.Attendance TO USER_DB
GRANT SELECT ON dbo.Classes TO USER_DB
GRANT SELECT ON dbo.Members TO USER_DB
GRANT SELECT ON dbo.MembershipPlans TO USER_DB
GRANT SELECT ON dbo.Trainers TO USER_DB
GO
    
ALTER TABLE Members
ADD Username NVARCHAR(50), 
    Password NVARCHAR(100);
GO

UPDATE Members
SET Username = FirstName + LastName, 
    Password = 'password' + CAST(MemberID AS NVARCHAR)
WHERE MemberID BETWEEN 1 AND 20;
GO

CREATE LOGIN admin1 WITH PASSWORD='admin1'
CREATE USER admin1 FROM LOGIN admin1
ALTER ROLE ADMIN_DB ADD MEMBER admin1
GO

CREATE LOGIN admin2 WITH PASSWORD='admin2'
CREATE USER admin2 FROM LOGIN admin2
ALTER ROLE ADMIN_DB ADD MEMBER admin2
GO

CREATE VIEW TRAINERS_VIEW AS
SELECT
t.TrainerID,
t.FirstName,
t.LastName,
t.Specialization
FROM
dbo.Trainers t
JOIN
dbo.Classes c ON t.TrainerID = c.TrainerID
GO

CREATE TABLE dbo.AvailableMachines (
    MachineID INT PRIMARY KEY IDENTITY(1,1),
    MachineName VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    IsAvailable BIT NOT NULL DEFAULT 1,
    LastUsed DATETIME NULL
);

INSERT INTO dbo.AvailableMachines (MachineName, Location, IsAvailable, LastUsed)
VALUES
('Treadmill A', 'Cardio Zone', 1, '2025-05-02 09:30'),
('Treadmill B', 'Cardio Zone', 1, '2025-05-02 10:00'),
('Leg Press', 'Weight Room', 0, '2025-05-02 08:15'),
('Leg Curl', 'Weight Room', 1, '2025-05-02 07:45'),
('Chest Press', 'Weight Room', 1, '2025-05-01 18:30'),
('Dumbbells Set', 'Weight Room', 1, '2025-05-02 11:00'),
('Elliptical A', 'Cardio Zone', 1, '2025-05-01 16:20'),
('Elliptical B', 'Cardio Zone', 0, '2025-05-02 10:15'),
('Rowing Machine', 'Functional Area', 1, '2025-05-01 19:00'),
('Pull-up Bar', 'Strength Area', 1, '2025-05-02 12:45'),
('Stationary Bike A', 'Cardio Zone', 1, '2025-05-02 08:00'),
('Stationary Bike B', 'Cardio Zone', 0, '2025-05-01 15:00'),
('Smith Machine', 'Weight Room', 1, '2025-05-02 14:30'),
('Kettlebell Set', 'Functional Area', 1, '2025-05-02 13:00'),
('Cable Machine', 'Weight Room', 1, '2025-05-01 17:00'),
('Squat Rack', 'Weight Room', 0, '2025-05-02 09:10'),
('Barbell Set', 'Weight Room', 1, '2025-05-01 20:00'),
('Stationary Bike C', 'Cardio Zone', 1, '2025-05-02 09:40'),
('Leg Extension', 'Weight Room', 1, '2025-05-02 11:30'),
('Lat Pulldown', 'Weight Room', 0, '2025-05-02 10:45');
GO

CREATE VIEW dbo.ViewMachineAvailability AS
SELECT 
    MachineID,
    MachineName,
    Location,
    CASE 
        WHEN IsAvailable = 1 THEN 'Available'
        ELSE 'Not Available'
    END AS Availability,
    LastUsed
FROM dbo.AvailableMachines;
GO

CREATE FUNCTION dbo.GetClassCount (@MemberID INT)
RETURNS INT
AS
BEGIN
    DECLARE @Count INT;

    SELECT @Count = COUNT(*) 
    FROM Attendance 
    WHERE MemberID = @MemberID;

    -- Return the count
    RETURN @Count;
END;

SELECT FirstName, 
       LastName, 
       dbo.GetClassCount(MemberID) AS TotalClasses 
FROM Member;

CREATE PROCEDURE dbo.GetMemberInfo
    @MemberID INT
AS
BEGIN
    SELECT 
        MemberID,
        FirstName,
        LastName,
        Email,
        PhoneNumber,
        JoinDate,
        MembershipType
    FROM 
        Members
    WHERE 
        MemberID = @MemberID;
END;
GO
