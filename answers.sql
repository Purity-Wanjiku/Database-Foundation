-- Question 1.1
CREATE TABLE patients ( 
	patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(255) NOT NULL,
	language VARCHAR(255) NOT NULL
);

-- Question 1.2
CREATE TABLE providers (
      provider_id INT PRIMARY KEY AUTO_INCREMENT,
      first_name VARCHAR(255) NOT NULL,
      last_name VARCHAR(255) NOT NULL,
      provider_speciality VARCHAR(255) NOT NULL,
      email_adress VARCHAR(255),
      phone_number VARCHAR(255),
      date_joined DATE NOT NULL
);

--Question 1.3
CREATE TABLE visits (
     visit_id INT PRIMARY KEY AUTO_INCREMENT,
     patient_id INT,
     provider_id INT,
     date_of_visit DATE NOT NULL,
     date_scheduled DATE NOT NULL,
     visit_department_id INT NOT NULL,
     visit_type VARCHAR(255) NOT NULL,
     blood_pressure_systollic INT,
     blood_pressure_diastollic DECIMAL,
     pulse DECIMAL,
     visit_status VARCHAR(255) NOT NULL,
     FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
     FOREIGN KEY(provider_id) REFERENCES providers(provider_id)
     );