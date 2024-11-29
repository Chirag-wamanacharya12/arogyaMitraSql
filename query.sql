create database arogyaMitra;
use arogyaMitra;
CREATE TABLE appointment (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    user_gen_id VARCHAR(20),
    user_name VARCHAR(100),
    user_age INT,
    agenda VARCHAR(255),
    physician_id VARCHAR(20),
    physician_name VARCHAR(100),
    mode VARCHAR(20),  -- e.g., 'Online' or 'In-Person'
    time_slat VARCHAR(50)
);

INSERT INTO appointment (user_gen_id, user_name, user_age, agenda, physician_id, physician_name, mode, time_slat)
VALUES
('GEN_RAJA_A001', 'Rajesh Kumar', 35, 'General checkup', 'PHY_002B', 'Dr. Sneha Sharma', 'In-Person', 'Morning'),
('GEN_SNEH_B002', 'Sneha Sharma', 28, 'Consultation on skin rash', 'PHY_002B', 'Dr. Sneha Sharma', 'Online', 'Afternoon'),
('GEN_AMIT_C003', 'Amit Patel', 40, 'Heart disease consultation', 'PHY_003C', 'Dr. Amit Patel', 'In-Person', 'Evening'),
('GEN_POOJ_D004', 'Pooja Reddy', 31, 'Blood test and general consultation', 'PHY_004D', 'Dr. Pooja Reddy', 'Online', 'Morning'),
('GEN_MANI_E005', 'Manish Verma', 37, 'Orthopedic consultation', 'PHY_005E', 'Dr. Manish Verma', 'In-Person', 'Afternoon'),
('GEN_ANJA_F006', 'Anjali Gupta', 29, 'Eye exam consultation', 'PHY_006F', 'Dr. Anjali Gupta', 'Online', 'Evening'),
('GEN_VIKR_G007', 'Vikram Singh', 45, 'Routine health checkup', 'PHY_007G', 'Dr. Vikram Singh', 'In-Person', 'Morning'),
('GEN_NEHA_H008', 'Neha Joshi', 34, 'Consultation on back pain', 'PHY_008H', 'Dr. Neha Joshi', 'Online', 'Afternoon'),
('GEN_SURE_I009', 'Suresh Pillai', 50, 'Cancer screening', 'PHY_009I', 'Dr. Suresh Pillai', 'In-Person', 'Evening'),
('GEN_RADH_J010', 'Radhika Mehta', 27, 'Consultation on allergies', 'PHY_010J', 'Dr. Radhika Mehta', 'Online', 'Morning'),
('GEN_AKAS_K011', 'Akash Rao', 33, 'Cardiac consultation', 'PHY_011K', 'Dr. Akash Rao', 'In-Person', 'Afternoon'),
('GEN_PRIY_L012', 'Priya Sethi', 30, 'Routine checkup', 'PHY_012L', 'Dr. Priya Sethi', 'Online', 'Evening'),
('GEN_RAHU_M013', 'Rahul Deshmukh', 39, 'General health checkup', 'PHY_013M', 'Dr. Rahul Deshmukh', 'In-Person', 'Morning'),
('GEN_NISH_N014', 'Nisha Jain', 41, 'Consultation on stress management', 'PHY_014N', 'Dr. Nisha Jain', 'Online', 'Afternoon'),
('GEN_ARJU_O015', 'Arjun Sharma', 38, 'Diabetes management consultation', 'PHY_015O', 'Dr. Arjun Sharma', 'In-Person', 'Evening'),
('GEN_KIRA_P016', 'Kiran Yadav', 32, 'Routine checkup', 'PHY_016P', 'Dr. Kiran Yadav', 'Online', 'Morning'),
('GEN_DEEP_Q017', 'Deepak Rao', 36, 'Orthopedic consultation', 'PHY_017Q', 'Dr. Deepak Rao', 'In-Person', 'Afternoon'),
('GEN_SWAT_R018', 'Swati Kulkarni', 26, 'Consultation for skin issues', 'PHY_018R', 'Dr. Swati Kulkarni', 'Online', 'Evening'),
('GEN_AJAY_S019', 'Ajay Bansal', 42, 'Routine health checkup', 'PHY_019S', 'Dr. Ajay Bansal', 'In-Person', 'Morning'),
('GEN_MONA_T020', 'Mona Agarwal', 35, 'Consultation for menstrual problems', 'PHY_020T', 'Dr. Mona Agarwal', 'Online', 'Afternoon');



select upper(user_name) from appointment;



alter table appointment rename column agenda to purpose;



SET SQL_SAFE_UPDATES = 0;

UPDATE appointment
SET charges = 250.00 
WHERE  time_slat = 'evening' 
  AND mode = 'In-Person';
select * from appointment;

select * from user_rec
where user_age = 28 ;

select * from appointment
where mode in('in-person');

select * from user_rec
where  age between 20 and 30;

select * from store_inventory;


SELECT 
    product_cat,
    COUNT(order_id) AS total_orders,
    SUM(amount) AS total_amount_spent
FROM 
    order_records
GROUP BY 
    product_cat
HAVING 
    SUM(amount) > 1000;


SELECT order_id, user_gen_id, amount
FROM order_records
WHERE amount = (SELECT MAX(amount) FROM order_records);

SELECT product_name
FROM order_records
WHERE product_id IN (
    SELECT product_id
    FROM order_records
    WHERE order_id IN (
        SELECT order_id
        FROM order_records
        WHERE amount > 500
    )
);

SELECT 
    insurance.insurance_id,
    insurance.user_name,
    appointment.time_slat,
    appointment.mode
FROM 
    insurance
RIGHT JOIN 
    appointment
ON 
    insurance.user_general_id = appointment.user_gen_id;

SELECT 
    insurance.insurance_id,
    appointment.physician_name
FROM 
    insurance
CROSS JOIN 
    appointment;


DELIMITER $$

CREATE PROCEDURE process_user_data()
BEGIN
    -- Step 1: Declare the variables to hold the data
    DECLARE done INT DEFAULT 0;
    DECLARE user_name VARCHAR(100);
    DECLARE user_age INT;
    DECLARE user_email VARCHAR(100);
    
    -- Step 2: Declare a cursor for the SELECT statement
    DECLARE user_cursor CURSOR FOR
    SELECT name, age, email FROM user_rec;
    
    -- Step 3: Declare a handler to handle the end of the cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
    -- Step 4: Open the cursor
    OPEN user_cursor;
    
    -- Step 5: Fetch rows from the cursor
    read_loop: LOOP
        FETCH user_cursor INTO user_name, user_age, user_email;
        
        -- Check if there are no more rows to fetch
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;
	
        -- Example operation: Print user details
        SELECT CONCAT('User: ', user_name, ', Age: ', user_age, ', Email: ', user_email);
    END LOOP;
    
    -- Step 6: Close the cursor
    CLOSE user_cursor;
END $$

DELIMITER ;

CALL process_user_data( ) ;

DELIMITER $$

CREATE TRIGGER after_user_rec_insert
AFTER INSERT ON user_rec
FOR EACH ROW
BEGIN
    DECLARE generated_password VARCHAR(15);
    
    -- Generate a random password (simple logic for demonstration)
    SET generated_password = CONCAT('p@ss', LEFT(NEW.name, 4), FLOOR(RAND() * 1000));

    INSERT INTO credential (user_name, general_purp_id, rolebased_id, insurance_id, password, mobile_num)
    VALUES (
        NEW.name,
        NEW.general_purp_id,
        NEW.rolebased_id,
        NEW.insurance_id,
        generated_password,
        NEW.contact
    );
END $$

DELIMITER ;


