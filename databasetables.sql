create table patient (
  patient_id int primary key,
  patient_name varchar(100),
  age int,
  gender varchar(10),
  address varchar(255)
);

create table phonenumber (
  phone_id int primary key,
  patient_id int,
  phone_no varchar(15),
  foreign key (patient_id) references patient(patient_id)
);

create table doctor (
  doctor_id int primary key,
  doctor_name varchar(100),
  doctor_experience int
);

create table department (
  department_id int primary key,
  department_name varchar(100)
);

create table doctordepartment (
  doctor_id int,
  department_id int,
  primary key (doctor_id, department_id),
  foreign key (doctor_id) references doctor(doctor_id),
  foreign key (department_id) references department(department_id)
);

create table specialization (
  specialization_id int primary key,
  specialization_name varchar(100)
);

create table doctorspecialization (
  doctor_id int,
  specialization_id int,
  primary key (doctor_id, specialization_id),
  foreign key (doctor_id) references doctor(doctor_id),
  foreign key (specialization_id) references specialization(specialization_id)
);

create table appointment (
  appointment_id int primary key,
  patient_id int,
  doctor_id int,
  appointment_date date,
  appointment_time time,
  status varchar(20),
  foreign key (patient_id) references patient(patient_id),
  foreign key (doctor_id) references doctor(doctor_id)
);

create table consultation (
  consultation_id int primary key,
  appointment_id int,
  notes text,
  foreign key (appointment_id) references appointment(appointment_id)
);

create table diagnosis (
  diagnosis_id int primary key,
  diagnosis_name varchar(100)
);

create table consultationdiagnosis (
  consultation_id int,
  diagnosis_id int,
  primary key (consultation_id, diagnosis_id),
  foreign key (consultation_id) references consultation(consultation_id),
  foreign key (diagnosis_id) references diagnosis(diagnosis_id)
);

create table treatment (
  treatment_id int primary key,
  treatment_name varchar(100)
);

create table diagnosistreatment (
  diagnosis_id int,
  treatment_id int,
  primary key (diagnosis_id, treatment_id),
  foreign key (diagnosis_id) references diagnosis(diagnosis_id),
  foreign key (treatment_id) references treatment(treatment_id)
);

create table prescription (
  prescription_id int primary key,
  consultation_id int,
  prescription_details text,
  foreign key (consultation_id) references consultation(consultation_id)
);

create table medicine (
  medicine_id int primary key,
  medicine_name varchar(100),
  medicine_price decimal(10,2)
);

create table prescriptionmedicine (
  prescription_id int,
  medicine_id int,
  dosage varchar(50),
  duration varchar(50),
  primary key (prescription_id, medicine_id),
  foreign key (prescription_id) references prescription(prescription_id),
  foreign key (medicine_id) references medicine(medicine_id)
);

create table bill (
  bill_id int primary key,
  patient_id int,
  consultation_id int,
  total_amount decimal(10,2),
  payment_status varchar(20),
  foreign key (patient_id) references patient(patient_id),
  foreign key (consultation_id) references consultation(consultation_id)
);

create table consultationdoctor (
  consultation_id int,
  doctor_id int,
  contribution varchar(100),
  primary key (consultation_id, doctor_id),
  foreign key (consultation_id) references consultation(consultation_id),
  foreign key (doctor_id) references doctor(doctor_id)
);