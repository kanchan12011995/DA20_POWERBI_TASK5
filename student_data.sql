CREATE TABLE student_data (
    student_id INT PRIMARY KEY,
    student_first_name VARCHAR(255),
    student_middle_name VARCHAR(255),
    student_last_name VARCHAR(255),
    student_mother_name VARCHAR(255),
    student_class VARCHAR(255),
    student_section VARCHAR(255),
    student_Mob_No VARCHAR(20),
    student_email_id VARCHAR(255),
    student_aadhar_card_no VARCHAR(20),
    student_college_name VARCHAR(255),
    student_department_name VARCHAR(255),
    student_status VARCHAR(50),
    student_grade VARCHAR(10),
    student_address TEXT,
    student_address_postal_code VARCHAR(10),
    student_city_name VARCHAR(255),
    student_state_name VARCHAR(255),
    student_country_name VARCHAR(255),
    student_date_of_birth DATE
);
select * from student_data;
ALTER TABLE student_data ADD COLUMN student_date_of_birth DATE;

-- Make sure your CSV file does NOT have the student_date_of_birth column.
-- For PostgreSQL, use the following COPY command:
COPY student_data(student_id,
student_first_name,
student_middle_name,
student_last_name,
student_mother_name,
student_class,
student_section,
student_Mob_No,
student_email_id,
student_aadhar_card_no,
student_college_name,
student_department_name,
student_status,
student_grade,
student_address,
student_address_postal_code,
student_city_name,
student_state_name,
student_country_name,
student_date_of_birth)
FROM 'E:/New folder (2)/student_records_8001_12000.csv'
DELIMITER ','
CSV HEADER;
 