-- CREATE DATABASE hospital_db;
-- USE hospital_db;


CREATE TABLE patients(
patient_id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(255),
lastname VARCHAR(255),
dateofbirth DATE,
gender VARCHAR(255),
language VARCHAR(255)
);

CREATE TABLE providers(
provider_id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(255),
lastname VARCHAR(255),
providerspeciality VARCHAR(255),
emailaddress  VARCHAR(255),
phonenumber VARCHAR(255),
datejoined DATE
);

CREATE TABLE visits(
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
provider_id INT,
dateofvisit DATE,
datescheduled DATE,
visitdepartment_id INT,
visittype VARCHAR(255),
bloodpressuresystollic INT,
blooodpressurediastollic DECIMAL,
pulse DECIMAL,
visitstatus VARCHAR(255),
FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
FOREIGN KEY(provider_id) REFERENCES providers(provider_id)
);



CREATE TABLE edvisits(
edvisit_id INT PRIMARY KEY AUTO_INCREMENT,
visit_id INT,
patient_id INT,
acuity INT,
reasonforvisit VARCHAR(255),
disposition VARCHAR(255),
FOREIGN KEY(visit_id) REFERENCES visits(visit_id),
FOREIGN KEY(patient_id) REFERENCEs patients(patient_id)
);

CREATE TABLE admissions(
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admissiondate DATE,
dischargedate DATE,
dischargedisposition VARCHAR(255),
service VARCHAR(255),
primarydiagnosis VARCHAR(255),
FOREIGN KEY(patient_id) REFERENCES patients(patient_id) 
);

CREATE TABLE discharges(
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
admission_id INT,
patient_id INT,
dischargedate DATE,
dischargedisposition VARCHAR(255),
FOREIGN KEY(admission_id) REFERENCES admissions(admission_id),
FOREIGN KEY(patient_id) REFERENCES patients(patient_id)
); 
