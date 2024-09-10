CREATE DATABASE hospital_db;

USE hospital_db;

CREATE TABLE patients( 
patient_Id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
date_of_birth VARCHAR(255),
gender VARCHAR(255),
language VARCHAR(255)
);

CREATE TABLE providers(
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255),
last_name VARCHAR(255),
provider_speciality VARCHAR(255),
email_address VARCHAR (255),
phone_number VARCHAR (255),
date_joined DATE
); 

CREATE TABLE visits(
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
provider_id INT,
date_of_visit DATE,
date_scheduled DATE,
visit_department_id INT,
visit_type VARCHAR(255),
blood_pressure_systollic INT,
blood_pressure_diastollic DECIMAL,
pulse DECIMAL,
visit_status VARCHAR(255),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);

CREATE TABLE ed_visits(
ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
visit_id INT,
patient_id INT,
acuity INT,
reason_for_visit VARCHAR(255),
disposition VARCHAR(255),
FOREIGN KEY (visit_id) REFERENCES visits(visit_id),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
 
CREATE TABLE admissions(
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT,
admission_date DATE,
discharge_date DATE,
discharge_diposition VARCHAR (255),
service VARCHAR (255),
primary_diagnosis VARCHAR (255),
FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
 
 CREATE TABLE discharges(
 discharge_id INT PRIMARY KEY AUTO_INCREMENT,
 admission_id INT,
 patient_id INT,
 discharge_date DATE,
 discharge_disposition VARCHAR (255),
 FOREIGN KEY (admission_id) REFERENCES admissions(admission_id),
 FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
 );
