CREATE TABLE Patient(
    PID VARCHAR(6),
    Pname VARCHAR(20),
    Address VARCHAR(20),
    Fees INT,
    PRIMARY KEY(PID)
);
INSERT INTO Patient VALUES('P001','Tom','Kampala','4000'),('P002','Agaba','Entebbe','16000');
SELECT* FROM Patient;
INSERT INTO Patient VALUES('P003','','Kampala','20000'),
('P004','Timo','','40000'),('P005','Simon','Entebbe','60000');
SELECT*FROM Patient;
ALTER TABLE Patient ADD COLUMN Doctor_Id VARCHAR(30);
SELECT*FROM Patient;
CREATE VIEW view_a as SELECT *FROM Patient WHERE Address= 'Kampala';
SELECT*FROM view_a;
CREATE VIEW view_b as SELECT SUM(fees)FROM patient;
SELECT * FROM patient;
CREATE VIEW view_C as SELECT*FROM Patient where 'Pname' LIKE '    ';
SELECT * FROM view_c;
ALTER TABLE Patient MODIFY COLUMN Pname VARCHAR(60);
SELECT* FROM patient;
SELECT*from patient where Pname like 'T%'or Pname like 'A%';
SELECT*FROM Patient WHERE fees BETWEEN 4000 AND 6000;
SELECT AVG(fees)from Patient;
CREATE TABLE DOCTOR(Doctor_Id VARCHAR(10),Dname VARCHAR(45),Speciality VARCHAR(43),PRIMARY KEY(Doctor_Id));
SELECT*FROM DOCTOR;
ALTER TABLE Patient ADD FOREIGN key(Doctor_ID) REFERENCES doctor(Doctor_ID);
DESCRIBE Patient;
DESCRIBE Doctor;
