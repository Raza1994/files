CREATE DATABASE Hospital;
GO

USE Hospital;
GO

 --   PATIENTS

CREATE TABLE Patients
(
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    City VARCHAR(50)
);

INSERT INTO Patients VALUES
(1,'Arjun Sharma','Male','Mumbai'),
(2,'Priya Nair','Female','Delhi'),
(3,'Tan Wei Ming','Male','Singapore'),
(4,'Nur Aisyah','Female','Singapore'),
(5,'Ravi Kumar','Male','Bangalore'),
(6,'Mei Lin','Female','Singapore'),
(7,'Mohammad Faizal','Male','Singapore'),
(8,'Ananya Gupta','Female','Pune'),
(9,'Rajesh Verma','Male','Chennai'),
(10,'Siti Nurhaliza','Female','Singapore'),
(11,'Karthik Iyer','Male','Hyderabad'),
(12,'Chen Jia Hao','Male','Singapore');


  --  DOCTORS

CREATE TABLE Doctors
(
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100) NOT NULL,
    Specialization VARCHAR(50)
);

INSERT INTO Doctors VALUES
(101,'Dr. Lim Wei Keat','Cardiology'),
(102,'Dr. Priya Menon','Orthopedics'),
(103,'Dr. Tan Hui Ling','Dermatology'),
(104,'Dr. Arvind Rao','Pediatrics'),
(105,'Dr. Nurul Huda','Neurology'),
(106,'Dr. Goh Jia Ming','General Medicine');


  --  APPOINTMENTS

CREATE TABLE Appointments
(
    AppointmentID INT PRIMARY KEY,
    PatientID INT NOT NULL,
    DoctorID INT NOT NULL,
    AppointmentDate DATE NOT NULL,

    FOREIGN KEY (PatientID)
        REFERENCES Patients(PatientID),

    FOREIGN KEY (DoctorID)
        REFERENCES Doctors(DoctorID)
);

INSERT INTO Appointments VALUES
(1001,1,101,'2025-06-01'),
(1002,2,104,'2025-06-01'),
(1003,3,102,'2025-06-02'),
(1004,4,103,'2025-06-02'),
(1005,5,105,'2025-06-03'),
(1006,6,106,'2025-06-03'),
(1007,7,101,'2025-06-04'),
(1008,8,104,'2025-06-04'),
(1009,9,102,'2025-06-05'),
(1010,10,103,'2025-06-05'),
(1011,11,105,'2025-06-06'),
(1012,12,106,'2025-06-06'),
(1013,1,104,'2025-06-07'),
(1014,3,101,'2025-06-07'),
(1015,5,106,'2025-06-08');


  --  PRESCRIPTIONS

CREATE TABLE Prescriptions
(
    PrescriptionID INT PRIMARY KEY,
    AppointmentID INT NOT NULL,
    MedicineName VARCHAR(100),

    FOREIGN KEY (AppointmentID)
        REFERENCES Appointments(AppointmentID)
);

INSERT INTO Prescriptions VALUES
(1,1001,'Aspirin'),
(2,1002,'Paracetamol'),
(3,1003,'Calcium Tablets'),
(4,1005,'Neurovit'),
(5,1007,'Blood Pressure Medicine'),
(6,1009,'Joint Support Tablets'),
(7,1010,'Skin Cream'),
(8,1012,'Cough Syrup'),
(9,1014,'Heart Medication');


