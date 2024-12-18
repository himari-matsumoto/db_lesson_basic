CREATE TABLE departments (
  department_id INT unsigned auto_increment PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
   );
   
   ALTER TABLE people add department_id INT unsigned AFTER email;


   