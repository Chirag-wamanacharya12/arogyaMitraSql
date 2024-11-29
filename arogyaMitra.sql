create database arogyamitra;
use arogyamitra;

show tables;
CREATE TABLE user_rec (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age TINYINT UNSIGNED NOT NULL,
    gender ENUM('male', 'female') NOT NULL,
    address VARCHAR(150),
    contact CHAR(10) NOT NULL,
    email VARCHAR(100) UNIQUE,
    rolebased_id VARCHAR(20) NOT NULL,
    general_purp_id VARCHAR(20),
    subscription_id VARCHAR(25) NOT NULL,
    emergency_contact CHAR(10) NOT NULL,
    insurance_id VARCHAR(15)
);


INSERT INTO user_rec (name, age, gender, address, contact, email, rolebased_id, general_purp_id, subscription_id, emergency_contact, insurance_id) VALUES
('Rajesh Kumar', 35, 'male', '123 MG Road, Delhi', '9876543210', 'rajesh.kumar@example.com', 'PAT_001A', 'GEN_RAJA_A001', 'SUB_BASIC_A1', '9123456780', 'INS_A1234'),
('Sneha Sharma', 28, 'female', '45 Residency Rd, Mumbai', '9823456789', 'sneha.sharma@example.com', 'PHY_002B', 'GEN_SNEH_B002', 'SUB_PREMIUM_B2', '9129876543', 'INS_B2345'),
('Amit Patel', 40, 'male', '67 Patel St, Ahmedabad', '9871234560', 'amit.patel@example.com', 'PRC_003C', 'GEN_AMIT_C003', 'SUB_EXCLUSIVE_C3', '9187654321', 'INS_C3456'),
('Pooja Reddy', 31, 'female', '90 Jubilee Hills, Hyderabad', '9865432101', 'pooja.reddy@example.com', 'RES_004D', 'GEN_POOJ_D004', 'SUB_BASIC_D4', '9176543210', 'INS_D4567'),
('Manish Verma', 37, 'male', '32 Brigade Rd, Bengaluru', '9843210987', 'manish.verma@example.com', 'SPV_005E', 'GEN_MANI_E005', 'SUB_PREMIUM_E5', '9165432109', 'INS_E5678'),
('Anjali Gupta', 29, 'female', '54 Civil Lines, Jaipur', '9812345678', 'anjali.gupta@example.com', 'HCC_006F', 'GEN_ANJA_F006', 'SUB_BASIC_F6', '9154321098', 'INS_F6789'),
('Vikram Singh', 45, 'male', '120 Cantonment Area, Pune', '9887654321', 'vikram.singh@example.com', 'PAT_007G', 'GEN_VIKR_G007', 'SUB_EXCLUSIVE_G7', '9143210987', 'INS_G7890'),
('Neha Joshi', 34, 'female', '85 Park St, Kolkata', '9832109876', 'neha.joshi@example.com', 'PHY_008H', 'GEN_NEHA_H008', 'SUB_PREMIUM_H8', '9132109876', 'INS_H8901'),
('Suresh Pillai', 50, 'male', '56 Marine Drive, Kochi', '9876543012', 'suresh.pillai@example.com', 'PRC_009I', 'GEN_SURE_I009', 'SUB_EXCLUSIVE_I9', '9121098765', 'INS_I9012'),
('Radhika Mehta', 27, 'female', '102 Mira Road, Thane', '9823456712', 'radhika.mehta@example.com', 'RES_010J', 'GEN_RADH_J010', 'SUB_BASIC_J1', '9119876543', 'INS_J0123'),
('Akash Rao', 33, 'male', '78 MG Road, Mysuru', '9867012345', 'akash.rao@example.com', 'SPV_011K', 'GEN_AKAS_K011', 'SUB_PREMIUM_K2', '9187065432', 'INS_K1234'),
('Priya Sethi', 30, 'female', '150 Defence Colony, Chandigarh', '9845123678', 'priya.sethi@example.com', 'HCC_012L', 'GEN_PRIY_L012', 'SUB_EXCLUSIVE_L3', '9193456782', 'INS_L2345'),
('Rahul Deshmukh', 39, 'male', '35 Sharanpur Road, Nashik', '9832198746', 'rahul.deshmukh@example.com', 'PAT_013M', 'GEN_RAHU_M013', 'SUB_BASIC_M4', '9182345671', 'INS_M3456'),
('Nisha Jain', 41, 'female', '210 Lavelle Rd, Bengaluru', '9810223345', 'nisha.jain@example.com', 'PHY_014N', 'GEN_NISH_N014', 'SUB_PREMIUM_N5', '9171223345', 'INS_N4567'),
('Arjun Sharma', 38, 'male', '47 Park Lane, Jaipur', '9876453102', 'arjun.sharma@example.com', 'PRC_015O', 'GEN_ARJU_O015', 'SUB_EXCLUSIVE_O6', '9167432102', 'INS_O5678'),
('Kiran Yadav', 32, 'female', '53 Andheri East, Mumbai', '9887765432', 'kiran.yadav@example.com', 'RES_016P', 'GEN_KIRA_P016', 'SUB_BASIC_P7', '9158765432', 'INS_P6789'),
('Deepak Rao', 36, 'male', '120 East Street, Pune', '9845123789', 'deepak.rao@example.com', 'SPV_017Q', 'GEN_DEEP_Q017', 'SUB_PREMIUM_Q8', '9142123789', 'INS_Q7890'),
('Swati Kulkarni', 26, 'female', '33 Malad, Mumbai', '9827012398', 'swati.kulkarni@example.com', 'HCC_018R', 'GEN_SWAT_R018', 'SUB_BASIC_R9', '9129012398', 'INS_R8901'),
('Ajay Bansal', 42, 'male', '98 CG Road, Ahmedabad', '9813456789', 'ajay.bansal@example.com', 'PAT_019S', 'GEN_AJAY_S019', 'SUB_EXCLUSIVE_S1', '9198765432', 'INS_S9012'),
('Mona Agarwal', 35, 'female', '21 Lajpat Nagar, Delhi', '9890123456', 'mona.agarwal@example.com', 'PHY_020T', 'GEN_MONA_T020', 'SUB_PREMIUM_T2', '9189123456', 'INS_T0123');

create table credential(
record_id int auto_increment primary key,
user_name varchar(50),
general_purp_id varchar(20),
rolebased_id varchar(20),
insurance_id varchar(15),
password varchar(15),
mobile_num varchar(10)
);


INSERT INTO credential (user_name, general_purp_id, rolebased_id, insurance_id, password, mobile_num) VALUES
('Rajesh Kumar', 'GEN_RAJA_A001', 'PAT_001A', 'INS_A1234', 'p@ssRajK123', '9876543210'),
('Sneha Sharma', 'GEN_SNEH_B002', 'PHY_002B', 'INS_B2345', 'p@ssSnehaS789', '9823456789'),
('Amit Patel', 'GEN_AMIT_C003', 'PRC_003C', 'INS_C3456', 'p@ssAmitP456', '9871234560'),
('Pooja Reddy', 'GEN_POOJ_D004', 'RES_004D', 'INS_D4567', 'p@ssPoojaR123', '9865432101'),
('Manish Verma', 'GEN_MANI_E005', 'SPV_005E', 'INS_E5678', 'p@ssManishV678', '9843210987'),
('Anjali Gupta', 'GEN_ANJA_F006', 'HCC_006F', 'INS_F6789', 'p@ssAnjaliG890', '9812345678'),
('Vikram Singh', 'GEN_VIKR_G007', 'PAT_007G', 'INS_G7890', 'p@ssVikramS321', '9887654321'),
('Neha Joshi', 'GEN_NEHA_H008', 'PHY_008H', 'INS_H8901', 'p@ssNehaJ098', '9832109876'),
('Suresh Pillai', 'GEN_SURE_I009', 'PRC_009I', 'INS_I9012', 'p@ssSureshP345', '9876543012'),
('Radhika Mehta', 'GEN_RADH_J010', 'RES_010J', 'INS_J0123', 'p@ssRadhikaM876', '9823456712'),
('Akash Rao', 'GEN_AKAS_K011', 'SPV_011K', 'INS_K1234', 'p@ssAkashR543', '9867012345'),
('Priya Sethi', 'GEN_PRIY_L012', 'HCC_012L', 'INS_L2345', 'p@ssPriyaS567', '9845123678'),
('Rahul Deshmukh', 'GEN_RAHU_M013', 'PAT_013M', 'INS_M3456', 'p@ssRahulD234', '9832198746'),
('Nisha Jain', 'GEN_NISH_N014', 'PHY_014N', 'INS_N4567', 'p@ssNishaJ123', '9810223345'),
('Arjun Sharma', 'GEN_ARJU_O015', 'PRC_015O', 'INS_O5678', 'p@ssArjunS678', '9876453102'),
('Kiran Yadav', 'GEN_KIRA_P016', 'RES_016P', 'INS_P6789', 'p@ssKiranY432', '9887765432'),
('Deepak Rao', 'GEN_DEEP_Q017', 'SPV_017Q', 'INS_Q7890', 'p@ssDeepakR890', '9845123789'),
('Swati Kulkarni', 'GEN_SWAT_R018', 'HCC_018R', 'INS_R8901', 'p@ssSwatiK098', '9827012398'),
('Ajay Bansal', 'GEN_AJAY_S019', 'PAT_019S', 'INS_S9012', 'p@ssAjayB567', '9813456789'),
('Mona Agarwal', 'GEN_MONA_T020', 'PHY_020T', 'INS_T0123', 'p@ssMonaA456', '9890123456');

CREATE TABLE insurance (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    insurance_id VARCHAR(15) NOT NULL UNIQUE,
    user_name VARCHAR(50) NOT NULL,
    user_general_id VARCHAR(20) NOT NULL,
    provider_name VARCHAR(50) NOT NULL,
    provider_contact CHAR(10) ,
    provider_email VARCHAR(50) NOT NULL,
    coverage VARCHAR(299),
    validity VARCHAR(10) CHECK (validity IN ('Yes', 'No')),
    issued_date DATE NOT NULL,
    exp_date DATE,
    claims VARCHAR(100) CHECK (claims IN ('Approved', 'Pending', 'Rejected'))
);
INSERT INTO insurance (insurance_id, user_name, user_general_id, provider_name, provider_contact, provider_email, coverage, validity, issued_date, exp_date, claims)
VALUES
('INS_A1234', 'Rajesh Kumar', 'GEN_RAJA_A001', 'MaxLife Insurance', '9823456790', 'maxlife1@example.com', 'Comprehensive Health Coverage', 'Yes', '2023-02-01', '2024-02-01', 'Approved'),
('INS_B2345', 'Sneha Sharma', 'GEN_SNEH_B002', 'Star Health Insurance', '9832345679', 'starhealth@example.com', 'Basic Health Coverage', 'Yes', '2023-04-01', '2024-04-01', 'Pending'),
('INS_C3456', 'Amit Patel', 'GEN_AMIT_C003', 'HDFC Life Insurance', '9841234568', 'hdfclife@example.com', 'Standard Health Coverage', 'No', '2023-07-01', '2024-07-01', 'Rejected'),
('INS_D4567', 'Pooja Reddy', 'GEN_POOJ_D004', 'ICICI Lombard', '9854321100', 'icicilombard@example.com', 'Premium Health Coverage', 'Yes', '2023-10-01', '2024-10-01', 'Approved'),
('INS_E5678', 'Manish Verma', 'GEN_MANI_E005', 'MaxLife Insurance', '9865432110', 'maxlife1@example.com', 'Comprehensive Health Coverage', 'Yes', '2023-12-01', '2024-12-01', 'Pending'),
('INS_F6789', 'Anjali Gupta', 'GEN_ANJA_F006', 'Bajaj Allianz Life', '9876543211', 'bajajallianz@example.com', 'Basic Health Coverage', 'No', '2023-02-01', '2024-02-01', 'Rejected'),
('INS_G7890', 'Vikram Singh', 'GEN_VIKR_G007', 'MaxLife Insurance', '9887654321', 'maxlife2@example.com', 'Comprehensive Health Coverage', 'Yes', '2023-06-01', '2024-06-01', 'Approved'),
('INS_H8901', 'Neha Joshi', 'GEN_NEHA_H008', 'Religare Health Insurance', '9832109876', 'religarehealth@example.com', 'Standard Health Coverage', 'Yes', '2023-09-01', '2024-09-01', 'Pending'),
('INS_I9012', 'Suresh Pillai', 'GEN_SURE_I009', 'Star Health Insurance', '9876543012', 'starhealth@example.com', 'Premium Health Coverage', 'Yes', '2023-05-01', '2024-05-01', 'Approved'),
('INS_J0123', 'Radhika Mehta', 'GEN_RADH_J010', 'HDFC Life Insurance', '9823456712', 'hdfclife@example.com', 'Comprehensive Health Coverage', 'No', '2023-11-01', '2024-11-01', 'Pending'),
('INS_K1234', 'Akash Rao', 'GEN_AKAS_K011', 'ICICI Lombard', '9867012345', 'icicilombard@example.com', 'Basic Health Coverage', 'No', '2023-01-01', '2024-01-01', 'Rejected'),
('INS_L2345', 'Priya Sethi', 'GEN_PRIY_L012', 'MaxLife Insurance', '9845123678', 'maxlife3@example.com', 'Standard Health Coverage', 'Yes', '2023-08-01', '2024-08-01', 'Pending'),
('INS_M3456', 'Rahul Deshmukh', 'GEN_RAHU_M013', 'Bajaj Allianz Life', '9832198746', 'bajajallianz@example.com', 'Comprehensive Health Coverage', 'Yes', '2023-07-01', '2024-07-01', 'Approved'),
('INS_N4567', 'Nisha Jain', 'GEN_NISH_N014', 'Religare Health Insurance', '9810223345', 'religarehealth@example.com', 'Premium Health Coverage', 'No', '2023-09-01', '2024-09-01', 'Rejected'),
('INS_O5678', 'Arjun Sharma', 'GEN_ARJU_O015', 'Star Health Insurance', '9876453102', 'starhealth@example.com', 'Basic Health Coverage', 'Yes', '2023-10-01', '2024-10-01', 'Pending'),
('INS_P6789', 'Kiran Yadav', 'GEN_KIRA_P016', 'MaxLife Insurance', '9887765432', 'maxlife4@example.com', 'Standard Health Coverage', 'Yes', '2023-03-01', '2024-03-01', 'Approved'),
('INS_Q7890', 'Deepak Rao', 'GEN_DEEP_Q017', 'ICICI Lombard', '9845123789', 'icicilombard@example.com', 'Premium Health Coverage', 'No', '2023-11-01', '2024-11-01', 'Rejected'),
('INS_R8901', 'Swati Kulkarni', 'GEN_SWAT_R018', 'HDFC Life Insurance', '9827012398', 'hdfclife@example.com', 'Comprehensive Health Coverage', 'Yes', '2023-12-01', '2024-12-01', 'Pending'),
('INS_S9012', 'Ajay Bansal', 'GEN_AJAY_S019', 'Religare Health Insurance', '9813456789', 'religarehealth@example.com', 'Basic Health Coverage', 'Yes', '2023-04-01', '2024-04-01', 'Approved'),
('INS_T0123', 'Mona Agarwal', 'GEN_MONA_T020', 'Bajaj Allianz Life', '9890123456', 'bajajallianz@example.com', 'Standard Health Coverage', 'No', '2023-02-01', '2024-02-01', 'Rejected');

create table subscription(
record_id int auto_increment primary key,
subscription_id varchar(25) not null,
user_gen_id varchar(20) not null,
sub_plan varchar(20) check(sub_plan in('monthly','quarterly','yearly','life-time')),
sub_type varchar(20) check(sub_type in('free','basic','premium','exclusive')),
validity varchar(10) check(validity in('valid','expired')),
coupon varchar(15),
exp_date date
);

INSERT INTO subscription (subscription_id, user_gen_id, sub_plan, sub_type, validity, coupon, exp_date) VALUES
('SUB_BASIC_A1', 'GEN_RAJA_A001', 'monthly', 'basic', 'valid', 'COUPON10', '2025-01-01'),
('SUB_PREMIUM_B2', 'GEN_SNEH_B002', 'quarterly', 'premium', 'valid', 'COUPON20', '2025-04-01'),
('SUB_EXCLUSIVE_C3', 'GEN_AMIT_C003', 'yearly', 'exclusive', 'expired', NULL, '2024-10-10'),
('SUB_BASIC_D4', 'GEN_POOJ_D004', 'life-time', 'basic', 'valid', 'COUPON15', NULL),
('SUB_PREMIUM_E5', 'GEN_MANI_E005', 'monthly', 'premium', 'valid', NULL, '2025-03-01'),
('SUB_BASIC_F6', 'GEN_ANJA_F006', 'quarterly', 'basic', 'expired', 'COUPON5', '2024-12-01'),
('SUB_EXCLUSIVE_G7', 'GEN_VIKR_G007', 'yearly', 'exclusive', 'valid', 'COUPON25', '2025-06-15'),
('SUB_PREMIUM_H8', 'GEN_NEHA_H008', 'monthly', 'premium', 'valid', NULL, '2025-05-25'),
('SUB_EXCLUSIVE_I9', 'GEN_SURE_I009', 'life-time', 'exclusive', 'valid', 'COUPON50', NULL),
('SUB_BASIC_J1', 'GEN_RADH_J010', 'monthly', 'basic', 'expired', NULL, '2024-08-10'),
('SUB_PREMIUM_K2', 'GEN_AKAS_K011', 'quarterly', 'premium', 'valid', 'COUPON30', '2025-09-10'),
('SUB_EXCLUSIVE_L3', 'GEN_PRIY_L012', 'yearly', 'exclusive', 'valid', 'COUPON40', '2025-02-10'),
('SUB_BASIC_M4', 'GEN_RAHU_M013', 'monthly', 'basic', 'expired', NULL, '2024-11-01'),
('SUB_PREMIUM_N5', 'GEN_NISH_N014', 'quarterly', 'premium', 'valid', 'COUPON35', '2025-07-20'),
('SUB_EXCLUSIVE_O6', 'GEN_ARJU_O015', 'yearly', 'exclusive', 'valid', 'COUPON45', '2025-03-30'),
('SUB_BASIC_P7', 'GEN_KIRA_P016', 'life-time', 'basic', 'valid', 'COUPON10', NULL),
('SUB_PREMIUM_Q8', 'GEN_DEEP_Q017', 'monthly', 'premium', 'expired', NULL, '2024-10-15'),
('SUB_BASIC_R9', 'GEN_SWAT_R018', 'quarterly', 'basic', 'valid', 'COUPON5', '2025-08-20'),
('SUB_EXCLUSIVE_S1', 'GEN_AJAY_S019', 'yearly', 'exclusive', 'valid', 'COUPON50', '2025-01-01'),
('SUB_PREMIUM_T2', 'GEN_MONA_T020', 'monthly', 'premium', 'valid', NULL, '2025-04-01');


create table roles(
role_id varchar(15) primary key,
role_name varchar(50),
honour varchar(10)
);

insert into roles 
values('dr.1001','physician','PHY'),
('pt.1002','patient','PAT'),
('pt.1003','HealthContentCreator','HCC'),
('res.1004','Researcher','RES'),
('ss.1005','ServiceProvider','SPV'),
('prt.1002','Practitioner','PRC');

create table auth_data(
record_id int auto_increment primary key,
user_gen_id varchar(20),
email varchar(100),
mobile_num bigint,
password varchar(25),
adhar_num bigint,
pan_num varchar(20),
rolebased_id varchar(25),
payment_id varchar(25)
);

INSERT INTO auth_data (user_gen_id, email, mobile_num, password, adhar_num, pan_num, rolebased_id, payment_id) VALUES
('GEN_RAJA_A001', 'rajesh.kumar@example.com', 9876543210, 'Rajesh@123', 123456789012, 'RAJKU1234P', 'PAT_001A', 'PAY_001A'),
('GEN_SNEH_B002', 'sneha.sharma@example.com', 9823456789, 'Sneha@456', 234567890123, 'SNESHA1234P', 'PHY_002B', 'PAY_002B'),
('GEN_AMIT_C003', 'amit.patel@example.com', 9871234560, 'Amit@789', 345678901234, 'AMIPAT1234P', 'PRC_003C', 'PAY_003C'),
('GEN_POOJ_D004', 'pooja.reddy@example.com', 9865432101, 'Pooja@101', 456789012345, 'POORED1234P', 'RES_004D', 'PAY_004D'),
('GEN_MANI_E005', 'manish.verma@example.com', 9843210987, 'Manish@202', 567890123456, 'MANVER1234P', 'SPV_005E', 'PAY_005E'),
('GEN_ANJA_F006', 'anjali.gupta@example.com', 9812345678, 'Anjali@303', 678901234567, 'ANGUPT1234P', 'HCC_006F', 'PAY_006F'),
('GEN_VIKR_G007', 'vikram.singh@example.com', 9887654321, 'Vikram@404', 789012345678, 'VIKSIN1234P', 'PAT_007G', 'PAY_007G'),
('GEN_NEHA_H008', 'neha.joshi@example.com', 9832109876, 'Neha@505', 890123456789, 'NEHJOS1234P', 'PHY_008H', 'PAY_008H'),
('GEN_SURE_I009', 'suresh.pillai@example.com', 9876543012, 'Suresh@606', 901234567890, 'SURPIL1234P', 'PRC_009I', 'PAY_009I'),
('GEN_RADH_J010', 'radhika.mehta@example.com', 9823456712, 'Radhika@707', 102345678901, 'RADMEH1234P', 'RES_010J', 'PAY_010J'),
('GEN_AKAS_K011', 'akash.rao@example.com', 9867012345, 'Akash@808', 112345678902, 'AKARAO1234P', 'SPV_011K', 'PAY_011K'),
('GEN_PRIY_L012', 'priya.sethi@example.com', 9845123678, 'Priya@909', 122345678903, 'PRISET1234P', 'HCC_012L', 'PAY_012L'),
('GEN_RAHU_M013', 'rahul.deshmukh@example.com', 9832198746, 'Rahul@010', 132345678904, 'RAHDES1234P', 'PAT_013M', 'PAY_013M'),
('GEN_NISH_N014', 'nisha.jain@example.com', 9810223345, 'Nisha@111', 142345678905, 'NISJAI1234P', 'PHY_014N', 'PAY_014N'),
('GEN_ARJU_O015', 'arjun.sharma@example.com', 9876453102, 'Arjun@212', 152345678906, 'ARJSHR1234P', 'PRC_015O', 'PAY_015O'),
('GEN_KIRA_P016', 'kiran.yadav@example.com', 9887765432, 'Kiran@313', 162345678907, 'KIRYAD1234P', 'RES_016P', 'PAY_016P'),
('GEN_DEEP_Q017', 'deepak.rao@example.com', 9845123789, 'Deepak@414', 172345678908, 'DEEPRP1234P', 'SPV_017Q', 'PAY_017Q'),
('GEN_SWAT_R018', 'swati.kulkarni@example.com', 9827012398, 'Swati@515', 182345678909, 'SWAKUL1234P', 'HCC_018R', 'PAY_018R'),
('GEN_AJAY_S019', 'ajay.bansal@example.com', 9813456789, 'Ajay@616', 192345678910, 'AJABAN1234P', 'PAT_019S', 'PAY_019S'),
('GEN_MONA_T020', 'mona.agarwal@example.com', 9890123456, 'Mona@717', 202345678911, 'MONAGR1234P', 'PHY_020T', 'PAY_020T');

create table time_slat(
slat_id varchar(20),
openingTime time,
closingTime time,
opened_on varchar(12)
);

INSERT INTO time_slat (slat_id, openingTime, closingTime, opened_on) VALUES
-- Monday
('TS_001', '06:00:00', '12:00:00', 'monday'),  -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'monday'),  -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'monday'),  -- Evening Slot

-- Tuesday
('TS_001', '06:00:00', '12:00:00', 'tuesday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'tuesday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'tuesday'), -- Evening Slot

-- Wednesday
('TS_001', '06:00:00', '12:00:00', 'wednesday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'wednesday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'wednesday'), -- Evening Slot

-- Thursday
('TS_001', '06:00:00', '12:00:00', 'thursday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'thursday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'thursday'), -- Evening Slot

-- Friday
('TS_001', '06:00:00', '12:00:00', 'friday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'friday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'friday'), -- Evening Slot

-- Saturday
('TS_001', '06:00:00', '12:00:00', 'saturday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'saturday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'saturday'), -- Evening Slot

-- Sunday
('TS_001', '06:00:00', '12:00:00', 'sunday'), -- Morning Slot
('TS_002', '12:00:00', '18:00:00', 'sunday'), -- Afternoon Slot
('TS_003', '18:00:00', '22:00:00', 'sunday'); -- Evening Slot

create table status(
status_id varchar(10),
status_code varchar(20),
status_desc varchar(50)
);
drop table status;
-- Insert records into status table
INSERT INTO status (status_id, status_code, status_desc)
VALUES
    ('stat001', '001', 'available'),
    ('stat002', '002', 'not-available'),
    ('stat003', '001', 'discontinued'),
    ('stat004', '003', 'pending'),
    ('stat005', '004', 'confirmed'),
    ('stat006', '005', 'shipped'),
    ('stat007', '006', 'delivered'),
    ('stat008', '007', 'canceled'),
    ('stat009', '008', 'processing'),
    ('stat010', '009', 'on-hold'),
    ('stat011', '010', 'completed'),
    ('stat012', '011', 'returned'),
    ('stat013', '012', 'out-for-delivery'),
    ('stat014', '013', 'awaiting-payment'),
    ('stat015', '014', 'payment-confirmed'),
    ('stat016', '015', 'preparing-order'),
    ('stat017', '016', 'ready-for-pickup'),
    ('stat018', '017', 'in-transit'),
    ('stat019', '018', 'awaiting-stock'),
    ('stat020', '019', 'stock-updated'),
    ('stat021', '020', 'physician-available'),
    ('stat022', '021', 'physician-busy'),
    ('stat023', '022', 'appointment-scheduled'),
    ('stat024', '023', 'appointment-canceled'),
    ('stat025', '024', 'prescription-pending'),
    ('stat026', '025', 'prescription-ready'),
    ('stat027', '026', 'payment-failed'),
    ('stat028', '027', 'payment-refunded'),
    ('stat029', '028', 'user-active'),
    ('stat030', '029', 'user-inactive');



CREATE TABLE store_inventory (
    product_id varchar(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_description TEXT,
    product_price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    manufacturer VARCHAR(100),
    category VARCHAR(50),
    availability BOOLEAN DEFAULT TRUE,
    status VARCHAR(20),
    exp_date DATE,
    storage_req VARCHAR(20),
    batch_no VARCHAR(50),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO store_inventory (product_id, product_name, product_description, product_price, quantity, manufacturer, category, status, exp_date, storage_req, batch_no, created_date, last_update)
VALUES
('PH001', 'Paracetamol 500mg', 'Pain relief medication', 12.99, 120, 'ABC Pharma', 'Pharma', 'Available', '2025-12-31', 'Dry', 'B001', '2024-11-01', '2024-11-10'),
('PH002', 'Ibuprofen 200mg', 'Anti-inflammatory medication', 15.49, 100, 'XYZ Pharma', 'Pharma', 'Available', '2025-11-30', 'Dry', 'B002', '2024-11-02', '2024-11-10'),
('FC001', 'Moisturizing Cream', 'Hydrating face cream for dry skin', 25.99, 50, 'Glow Beauty', 'Face Care', 'Not Available', '2026-02-28', 'Cool', 'B003', '2024-11-03', '2024-11-09'),
('FC002', 'Anti-Aging Serum', 'Reduces fine lines and wrinkles', 45.50, 70, 'AgeLess Cosmetics', 'Face Care', 'Available', '2026-01-15', 'Cool', 'B004', '2024-11-04', '2024-11-09'),
('PH003', 'Aspirin 81mg', 'Heart health medication', 8.99, 150, 'HealthCo', 'Pharma', 'Available', '2025-07-20', 'Dry', 'B005', '2024-11-05', '2024-11-10'),
('FC003', 'Sunscreen SPF 50', 'High protection sunscreen for all skin types', 19.99, 200, 'SunCare', 'Face Care', 'Not Available', '2026-05-10', 'Cool', 'B006', '2024-11-06', '2024-11-09'),
('PH004', 'Cetirizine 10mg', 'Antihistamine for allergies', 6.75, 90, 'MedPlus', 'Pharma', 'Available', '2025-09-05', 'Dry', 'B007', '2024-11-07', '2024-11-10'),
('PH005', 'Vitamin C 500mg', 'Supports immune system', 11.50, 200, 'NutraLife', 'Pharma', 'Not Available', '2026-06-30', 'Dry', 'B008', '2024-11-08', '2024-11-09'),
('FC004', 'Brightening Mask', 'Face mask for skin radiance', 22.99, 60, 'Radiant Skin', 'Face Care', 'Available', '2025-12-01', 'Cool', 'B009', '2024-11-09', '2024-11-10'),
('PH006', 'Loratadine 10mg', 'Antihistamine for seasonal allergies', 10.30, 130, 'CareMed', 'Pharma', 'Available', '2025-08-15', 'Dry', 'B010', '2024-11-10', '2024-11-10'),
('FC005', 'Face Cleanser', 'Gentle cleanser for sensitive skin', 15.00, 180, 'PureSkin', 'Face Care', 'Not Available', '2026-04-30', 'Cool', 'B011', '2024-11-11', '2024-11-12'),
('PH007', 'Multivitamins', 'Complete multivitamin supplement', 20.99, 220, 'NutraCare', 'Pharma', 'Available', '2025-10-05', 'Dry', 'B012', '2024-11-12', '2024-11-12'),
('PH008', 'Calcium 500mg', 'Bone health supplement', 14.99, 100, 'HealthPlus', 'Pharma', 'Not Available', '2026-01-05', 'Dry', 'B013', '2024-11-13', '2024-11-13'),
('FC006', 'Hydrating Toner', 'Toner for deep hydration', 18.50, 110, 'HydraGlow', 'Face Care', 'Available', '2026-03-20', 'Cool', 'B014', '2024-11-14', '2024-11-14'),
('PH009', 'Omeprazole 20mg', 'Acid reflux medication', 7.99, 60, 'PharmaCare', 'Pharma', 'Available', '2025-12-25', 'Dry', 'B015', '2024-11-15', '2024-11-15'),
('FC007', 'Anti-Pollution Serum', 'Protects skin from pollutants', 40.00, 40, 'ClearSkin', 'Face Care', 'Not Available', '2026-02-10', 'Cool', 'B016', '2024-11-16', '2024-11-16'),
('PH010', 'Zinc 50mg', 'Immune system support', 9.50, 90, 'VitaLife', 'Pharma', 'Available', '2025-08-30', 'Dry', 'B017', '2024-11-17', '2024-11-17'),
('FC008', 'Night Cream', 'Nourishing cream for overnight use', 28.99, 70, 'BeautySleep', 'Face Care', 'Available', '2025-11-10', 'Cool', 'B018', '2024-11-18', '2024-11-18'),
('PH011', 'Melatonin 5mg', 'Sleep support supplement', 12.99, 150, 'NatureHealth', 'Pharma', 'Not Available', '2026-07-01', 'Dry', 'B019', '2024-11-19', '2024-11-19'),
('PH012', 'Probiotic 10B CFU', 'Digestive health supplement', 18.99, 120, 'BioHealth', 'Pharma', 'Available', '2025-04-30', 'Dry', 'B020', '2024-11-20', '2024-11-20'),
('FC009', 'Wrinkle Cream', 'Cream for reducing wrinkles', 35.50, 85, 'SmoothSkin', 'Face Care', 'Available', '2025-12-15', 'Cool', 'B021', '2024-11-21', '2024-11-21'),
('PH013', 'Magnesium 300mg', 'Supports muscle function', 8.25, 75, 'HealthMax', 'Pharma', 'Available', '2025-11-20', 'Dry', 'B022', '2024-11-22', '2024-11-22'),
('PH014', 'Fish Oil 1000mg', 'Omega-3 supplement', 21.50, 50, 'PureLife', 'Pharma', 'Not Available', '2026-09-15', 'Dry', 'B023', '2024-11-23', '2024-11-23'),
('FC010', 'Vitamin C Serum', 'Face serum with Vitamin C', 27.99, 90, 'GlowUp', 'Face Care', 'Available', '2026-01-20', 'Cool', 'B024', '2024-11-24', '2024-11-24'),
('PH015', 'Iron 65mg', 'Iron supplement for anemia', 11.99, 130, 'IronCare', 'Pharma', 'Available', '2025-12-31', 'Dry', 'B025', '2024-11-25', '2024-11-25'),
('FC011', 'Lip Balm', 'Hydrating lip balm for dry lips', 5.99, 250, 'Lush Lips', 'Face Care', 'Not Available', '2026-02-15', 'Cool', 'B026', '2024-11-26', '2024-11-26'),
('PH016', 'Cough Syrup', 'For cough relief', 6.50, 90, 'MedPlus', 'Pharma', 'Available', '2025-11-25', 'Dry', 'B027', '2024-11-27', '2024-11-27');

CREATE TABLE order_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id VARCHAR(25) NOT NULL,
    user_gen_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_cat VARCHAR(50),
    product_quantity INT NOT NULL,
    offer VARCHAR(50),
    batch_code VARCHAR(20),
    shipping_id VARCHAR(20),
    shipping_status VARCHAR(20) CHECK (shipping_status IN ('pending', 'shipped', 'delivered', 'not available')),
    shipping_address VARCHAR(255),
    payment_id VARCHAR(25),
    amount DECIMAL(10, 2) NOT NULL
);
drop table order_records;
INSERT INTO order_records (order_id, user_gen_id, product_id, product_name, product_cat, product_quantity, offer, batch_code, shipping_id, shipping_status, shipping_address, payment_id, amount)
VALUES
('ORD001', 'GEN_RAJA_A001', 'PH001', 'Paracetamol 500mg', 'Pharma', 2, '10% off', 'B001', 'SHIP001', 'pending', '123 MG Road, Delhi', 'PAY001', 120.50),
('ORD002', 'GEN_SNEH_B002', 'FC010', 'Vitamin C Serum', 'Face Care', 1, '15% off', 'B024', 'SHIP002', 'shipped', '45 Residency Rd, Mumbai', 'PAY002', 299.99),
('ORD003', 'GEN_AMIT_C003', 'PH003', 'Aspirin 81mg', 'Pharma', 3, '5% off', 'B005', 'SHIP003', 'delivered', '67 Patel St, Ahmedabad', 'PAY003', 90.00),
('ORD004', 'GEN_POOJ_D004', 'FC003', 'Sunscreen SPF 50', 'Face Care', 2, '20% off', 'B006', 'SHIP004', 'pending', '90 Jubilee Hills, Hyderabad', 'PAY004', 450.75),
('ORD005', 'GEN_MANI_E005', 'PH002', 'Ibuprofen 200mg', 'Pharma', 1, '10% off', 'B002', 'SHIP005', 'shipped', '32 Brigade Rd, Bengaluru', 'PAY005', 85.00),
('ORD006', 'GEN_ANJA_F006', 'FC001', 'Moisturizing Cream', 'Face Care', 1, 'Buy 1 Get 1 Free', 'B003', 'SHIP006', 'delivered', '54 Civil Lines, Jaipur', 'PAY006', 320.40),
('ORD007', 'GEN_VIKR_G007', 'PH016', 'Cough Syrup', 'Pharma', 2, '5% off', 'B027', 'SHIP007', 'pending', '120 Cantonment Area, Pune', 'PAY007', 110.00),
('ORD008', 'GEN_NEHA_H008', 'FC006', 'Hydrating Toner', 'Face Care', 1, '10% off', 'B014', 'SHIP008', 'shipped', '85 Park St, Kolkata', 'PAY008', 199.99),
('ORD009', 'GEN_SURE_I009', 'PH014', 'Fish Oil 1000mg', 'Pharma', 3, '10% off', 'B023', 'SHIP009', 'delivered', '56 Marine Drive, Kochi', 'PAY009', 125.75),
('ORD010', 'GEN_RADH_J010', 'FC002', 'Anti-Aging Serum', 'Face Care', 1, '30% off', 'B004', 'SHIP010', 'pending', '102 Mira Road, Thane', 'PAY010', 599.50),
('ORD011', 'GEN_AKAS_K011', 'PH001', 'Paracetamol 500mg', 'Pharma', 1, '10% off', 'B001', 'SHIP011', 'shipped', '78 MG Road, Mysuru', 'PAY011', 150.00),
('ORD012', 'GEN_PRIY_L012', 'FC004', 'Brightening Mask', 'Face Care', 2, '15% off', 'B009', 'SHIP012', 'delivered', '150 Defence Colony, Chandigarh', 'PAY012', 260.00),
('ORD013', 'GEN_RAHU_M013', 'PH004', 'Cetirizine 10mg', 'Pharma', 3, 'Buy 2 Get 1 Free', 'B007', 'SHIP013', 'pending', '35 Sharanpur Road, Nashik', 'PAY013', 135.00),
('ORD014', 'GEN_NISH_N014', 'FC008', 'Night Cream', 'Face Care', 1, '20% off', 'B018', 'SHIP014', 'shipped', '210 Lavelle Rd, Bengaluru', 'PAY014', 599.99),
('ORD015', 'GEN_ARJU_O015', 'PH015', 'Iron 65mg', 'Pharma', 2, '15% off', 'B025', 'SHIP015', 'delivered', '47 Park Lane, Jaipur', 'PAY015', 220.00),
('ORD016', 'GEN_KIRA_P016', 'FC011', 'Lip Balm', 'Face Care', 3, '5% off', 'B026', 'SHIP016', 'pending', '53 Andheri East, Mumbai', 'PAY016', 75.50),
('ORD017', 'GEN_DEEP_Q017', 'PH010', 'Zinc 50mg', 'Pharma', 2, '10% off', 'B017', 'SHIP017', 'shipped', '120 East Street, Pune', 'PAY017', 190.00),
('ORD018', 'GEN_SWAT_R018', 'PH009', 'Omeprazole 20mg', 'Pharma', 1, '20% off', 'B015', 'SHIP018', 'delivered', '33 Malad, Mumbai', 'PAY018', 105.00),
('ORD019', 'GEN_AJAY_S019', 'PH013', 'Magnesium 300mg', 'Pharma', 1, 'Buy 1 Get 1 Free', 'B022', 'SHIP019', 'pending', '98 CG Road, Ahmedabad', 'PAY019', 98.00),
('ORD020', 'GEN_MONA_T020', 'FC007', 'Anti-Pollution Serum', 'Face Care', 1, '30% off', 'B016', 'SHIP020', 'delivered', '21 Lajpat Nagar, Delhi', 'PAY020', 460.00);



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

CREATE TABLE health_records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    user_gen_id varchar(30),
    user_name VARCHAR(255),
    health_condition VARCHAR(255),
    treatment VARCHAR(255),
    time_period VARCHAR(100),
    medicine VARCHAR(255),
    physician_id varchar(20),
    physician_name VARCHAR(255),
    treated_at VARCHAR(255),  -- Hospital Name
    prescription_id varchar(20),
    conclusion TEXT
);
drop table health_records;
INSERT INTO health_records (user_gen_id, user_name, health_condition, treatment, time_period, medicine, physician_id, physician_name, treated_at, prescription_id, conclusion)
VALUES
('GEN_RAJA_A001', 'Rajesh Kumar', 'Hypertension', 'Lifestyle changes', '6 months', 'Amlodipine', 'PHY_002B', 'Dr. Sneha Sharma', 'City Hospital', 'RX_A1', 'Condition is improving, monitor BP regularly'),
('GEN_SNEH_B002', 'Sneha Sharma', 'Skin Rash', 'Topical steroids', '3 weeks', 'Hydrocortisone cream', 'PHY_002B', 'Dr. Sneha Sharma', 'City Hospital', 'RX_B2', 'Rash has reduced, continue treatment for 2 weeks'),
('GEN_AMIT_C003', 'Amit Patel', 'Heart disease', 'Cardiac care', '1 year', 'Aspirin', 'PHY_003C', 'Dr. Amit Patel', 'Heart Care Clinic', 'RX_C3', 'Patient stable, follow up in 6 months'),
('GEN_POOJ_D004', 'Pooja Reddy', 'Anemia', 'Iron supplements', '2 months', 'Ferrous sulfate', 'PHY_004D', 'Dr. Pooja Reddy', 'Wellness Center', 'RX_D4', 'Iron levels improving, continue medication'),
('GEN_MANI_E005', 'Manish Verma', 'Knee pain', 'Physical therapy', '3 months', 'Ibuprofen', 'PHY_005E', 'Dr. Manish Verma', 'Orthopedic Clinic', 'RX_E5', 'Improvement observed, continue therapy'),
('GEN_ANJA_F006', 'Anjali Gupta', 'Refractive error', 'Glasses prescription', 'Ongoing', 'N/A', 'PHY_006F', 'Dr. Anjali Gupta', 'Eye Care Clinic', 'RX_F6', 'Patient advised regular eye checkups'),
('GEN_VIKR_G007', 'Vikram Singh', 'Routine health checkup', 'General wellness', '6 months', 'N/A', 'PHY_007G', 'Dr. Vikram Singh', 'Health Plus Clinic', 'RX_G7', 'All results normal, continue healthy lifestyle'),
('GEN_NEHA_H008', 'Neha Joshi', 'Back pain', 'Pain management', '3 months', 'Acetaminophen', 'PHY_008H', 'Dr. Neha Joshi', 'Spine Clinic', 'RX_H8', 'Patient advised posture correction'),
('GEN_SURE_I009', 'Suresh Pillai', 'Cancer screening', 'Monitor for abnormalities', 'Ongoing', 'N/A', 'PHY_009I', 'Dr. Suresh Pillai', 'Cancer Research Center', 'RX_I9', 'No signs of cancer, follow up in 3 months'),
('GEN_RADH_J010', 'Radhika Mehta', 'Allergies', 'Allergy management', '1 month', 'Cetirizine', 'PHY_010J', 'Dr. Radhika Mehta', 'Allergy Clinic', 'RX_J1', 'Condition improving, continue allergy treatment'),
('GEN_AKAS_K011', 'Akash Rao', 'Cardiac issues', 'Cardiology consultation', '6 months', 'Lisinopril', 'PHY_011K', 'Dr. Akash Rao', 'Heart Center', 'RX_K2', 'Patient advised to reduce stress'),
('GEN_PRIY_L012', 'Priya Sethi', 'Routine checkup', 'General consultation', '6 months', 'N/A', 'PHY_012L', 'Dr. Priya Sethi', 'General Hospital', 'RX_L3', 'Normal health status, follow up in 6 months'),
('GEN_RAHU_M013', 'Rahul Deshmukh', 'Diabetes', 'Blood sugar management', '1 year', 'Metformin', 'PHY_013M', 'Dr. Rahul Deshmukh', 'Diabetes Care Center', 'RX_M4', 'Blood sugar stable, continue medication'),
('GEN_NISH_N014', 'Nisha Jain', 'Stress management', 'Counseling', '3 months', 'N/A', 'PHY_014N', 'Dr. Nisha Jain', 'Mental Health Center', 'RX_N5', 'Stress levels reduced, continue therapy'),
('GEN_ARJU_O015', 'Arjun Sharma', 'Diabetes', 'Dietary adjustments', 'Ongoing', 'Insulin', 'PHY_015O', 'Dr. Arjun Sharma', 'Diabetes Clinic', 'RX_O6', 'Condition stable, continue lifestyle changes'),
('GEN_KIRA_P016', 'Kiran Yadav', 'Routine checkup', 'General health checkup', '6 months', 'N/A', 'PHY_016P', 'Dr. Kiran Yadav', 'Health Center', 'RX_P7', 'Healthy overall, continue wellness checkups'),
('GEN_DEEP_Q017', 'Deepak Rao', 'Knee injury', 'Rehabilitation', '3 months', 'N/A', 'PHY_017Q', 'Dr. Deepak Rao', 'Rehab Clinic', 'RX_Q8', 'Improvement observed, continue physical therapy'),
('GEN_SWAT_R018', 'Swati Kulkarni', 'Skin problems', 'Topical treatment', '2 months', 'Clindamycin', 'PHY_018R', 'Dr. Swati Kulkarni', 'Dermatology Clinic', 'RX_R9', 'Continue treatment, condition improving'),
('GEN_AJAY_S019', 'Ajay Bansal', 'Routine health checkup', 'General consultation', '6 months', 'N/A', 'PHY_019S', 'Dr. Ajay Bansal', 'General Hospital', 'RX_S1', 'All health parameters normal'),
('GEN_MONA_T020', 'Mona Agarwal', 'Menstrual problems', 'Hormonal therapy', '2 months', 'Progesterone', 'PHY_020T', 'Dr. Mona Agarwal', 'Women’s Health Center', 'RX_T2', 'Condition improving, continue therapy');

CREATE TABLE payment (
    record_id INT AUTO_INCREMENT PRIMARY KEY,  -- Automatically incremented record_id
    payment_id VARCHAR(25) NOT NULL,  -- Payment ID
    user_id VARCHAR(20) NOT NULL,  -- User ID
    user_name VARCHAR(150) NOT NULL,  -- User Name
    receiver_id VARCHAR(20) NOT NULL,  -- Receiver ID (e.g., physician ID)
    receiver_name VARCHAR(150) NOT NULL,  -- Receiver Name
    initiated_at DATETIME NOT NULL,  -- Timestamp when the payment was initiated
    completed_at DATETIME,  -- Timestamp when the payment was completed
    time_req TIME NOT NULL,  -- The time taken for the payment process
    payment_mode VARCHAR(50) NOT NULL,  -- Payment mode (e.g., Credit Card, PayPal)
    status ENUM('awaiting-payment', 'payment-confirmed', 'payment-failed', 'payment-refunded') NOT NULL,  -- Payment status
    amount DECIMAL(10, 2) NOT NULL -- Amount for the payment
);

INSERT INTO payment (payment_id, user_id, user_name, receiver_id, receiver_name, initiated_at, completed_at, time_req,payment_mode, status, amount) 
VALUES
('PAY001', 'GEN_RAJA_A001', 'Rajesh Kumar', 'PHY_003C', 'Dr. Amit Patel', '2024-11-15 10:00:00', '2024-11-15 10:05:00', '00:05:00','credit card', 'payment-confirmed', 150.00),
('PAY002', 'GEN_SNEH_B002', 'Sneha Sharma', 'PHY_004D', 'Dr. Pooja Reddy', '2024-11-15 11:00:00', '2024-11-15 11:10:00', '00:10:00','cash', 'payment-confirmed', 200.00),
('PAY003', 'GEN_AMIT_C003', 'Amit Patel', 'PHY_002B', 'Dr. Sneha Sharma', '2024-11-15 12:00:00', '2024-11-15 12:15:00', '00:15:00','upi', 'awaiting-payment', 180.00),
('PAY004', 'GEN_POOJ_D004', 'Pooja Reddy', 'PHY_005E', 'Dr. Manish Verma', '2024-11-15 13:00:00', '2024-11-15 13:05:00', '00:05:00','upi', 'payment-confirmed', 220.00),
('PAY005', 'GEN_MANI_E005', 'Manish Verma', 'PHY_006F', 'Dr. Anjali Gupta', '2024-11-15 14:00:00', '2024-11-15 14:08:00', '00:08:00','upi', 'payment-failed', 250.00),
('PAY006', 'GEN_ANJA_F006', 'Anjali Gupta', 'PHY_007G', 'Dr. Vikram Singh', '2024-11-15 15:00:00', '2024-11-15 15:10:00', '00:10:00','cash', 'payment-refunded', 160.00),
('PAY007', 'GEN_VIKR_G007', 'Vikram Singh', 'PHY_008H', 'Dr. Neha Joshi', '2024-11-15 16:00:00', '2024-11-15 16:03:00', '00:03:00','credit card', 'payment-confirmed', 190.00),
('PAY008', 'GEN_NEHA_H008', 'Neha Joshi', 'PHY_009I', 'Dr. Suresh Pillai', '2024-11-15 17:00:00', '2024-11-15 17:05:00', '00:05:00','credit card', 'payment-confirmed', 210.00),
('PAY009', 'GEN_SURE_I009', 'Suresh Pillai', 'PHY_010J', 'Dr. Radhika Mehta', '2024-11-15 18:00:00', '2024-11-15 18:12:00', '00:12:00','cash', 'payment-failed', 230.00),
('PAY010', 'GEN_RADH_J010', 'Radhika Mehta', 'PHY_011K', 'Dr. Akash Rao', '2024-11-15 19:00:00', '2024-11-15 19:08:00', '00:08:00','cash', 'payment-confirmed', 250.00),
('PAY011', 'GEN_AKAS_K011', 'Akash Rao', 'PHY_012L', 'Dr. Priya Sethi', '2024-11-15 20:00:00', '2024-11-15 20:05:00', '00:05:00','upi', 'awaiting-payment', 260.00),
('PAY012', 'GEN_PRIY_L012', 'Priya Sethi', 'PHY_013M', 'Dr. Rahul Deshmukh', '2024-11-15 21:00:00', '2024-11-15 21:08:00', '00:08:00','paypal', 'payment-confirmed', 270.00),
('PAY013', 'GEN_RAHU_M013', 'Rahul Deshmukh', 'PHY_014N', 'Dr. Nisha Jain', '2024-11-15 22:00:00', '2024-11-15 22:10:00', '00:10:00','gpay', 'payment-refunded', 280.00),
('PAY014', 'GEN_NISH_N014', 'Nisha Jain', 'PHY_015O', 'Dr. Arjun Sharma', '2024-11-15 23:00:00', '2024-11-15 23:05:00', '00:05:00','cash', 'payment-confirmed', 290.00),
('PAY015', 'GEN_ARJU_O015', 'Arjun Sharma', 'PHY_016P', 'Dr. Kiran Yadav', '2024-11-16 00:00:00', '2024-11-16 00:10:00', '00:10:00','cash', 'payment-confirmed', 300.00),
('PAY016', 'GEN_KIRA_P016', 'Kiran Yadav', 'PHY_017Q', 'Dr. Deepak Rao', '2024-11-16 01:00:00', '2024-11-16 01:05:00', '00:05:00','upi', 'payment-failed', 310.00),
('PAY017', 'GEN_DEEP_Q017', 'Deepak Rao', 'PHY_018R', 'Dr. Swati Kulkarni', '2024-11-16 02:00:00', '2024-11-16 02:05:00', '00:05:00','cash', 'payment-confirmed', 320.00),
('PAY018', 'GEN_SWAT_R018', 'Swati Kulkarni', 'PHY_019S', 'Dr. Ajay Bansal', '2024-11-16 03:00:00', '2024-11-16 03:10:00', '00:10:00','debit card', 'awaiting-payment', 330.00),
('PAY019', 'GEN_AJAY_S019', 'Ajay Bansal', 'PHY_020T', 'Dr. Mona Agarwal', '2024-11-16 04:00:00', '2024-11-16 04:08:00', '00:08:00','upi', 'payment-refunded', 340.00),
('PAY020', 'GEN_MONA_T020', 'Mona Agarwal', 'PHY_002B', 'Dr. Sneha Sharma', '2024-11-16 05:00:00', '2024-11-16 05:15:00', '00:15:00','credit card', 'payment-confirmed', 350.00);
