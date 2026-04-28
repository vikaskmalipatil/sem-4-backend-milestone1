insert into patient values
(1,'rahul',22,'male','bangalore'),
(2,'anita',25,'female','mysore'),
(3,'kiran',30,'male','mangalore'),
(4,'sneha',28,'female','udupi'),
(5,'arjun',35,'male','hubli');


insert into phonenumber values
(1,1,'9876543210'),
(2,2,'9123456780'),
(3,3,'9988776655'),
(4,4,'9090909090'),
(5,5,'8888888888');


insert into doctor values
(1,'dr ravi',10),
(2,'dr meena',8),
(3,'dr arun',12),
(4,'dr priya',6),
(5,'dr vinay',15);



insert into department values
(1,'cardiology'),
(2,'neurology'),
(3,'orthopedics'),
(4,'general'),
(5,'dermatology');


insert into doctordepartment values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);



insert into specialization values
(1,'heart specialist'),
(2,'brain specialist'),
(3,'bone specialist'),
(4,'general physician'),
(5,'skin specialist');


insert into doctorspecialization values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);


insert into appointment values
(1,1,1,'2026-04-01','10:00:00','completed'),
(2,2,2,'2026-04-02','11:00:00','completed'),
(3,3,3,'2026-04-03','12:00:00','completed'),
(4,4,4,'2026-04-04','01:00:00','completed'),
(5,5,5,'2026-04-05','02:00:00','completed');


insert into consultation values
(1,1,'fever case'),
(2,2,'headache'),
(3,3,'leg pain'),
(4,4,'cold'),
(5,5,'skin allergy');


insert into consultationdoctor values
(1,1,'primary'),
(2,2,'primary'),
(3,3,'primary'),
(4,4,'primary'),
(5,5,'primary');


insert into diagnosis values
(1,'fever'),
(2,'migraine'),
(3,'fracture'),
(4,'cold'),
(5,'allergy');


insert into consultationdiagnosis values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);


insert into treatment values
(1,'rest'),
(2,'pain relief'),
(3,'surgery'),
(4,'medication'),
(5,'ointment');


insert into diagnosistreatment values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);


insert into prescription values
(1,1,'take rest'),
(2,2,'take tablets'),
(3,3,'surgery advised'),
(4,4,'cold medicine'),
(5,5,'apply cream');


insert into medicine values
(1,'paracetamol',10.00),
(2,'ibuprofen',15.00),
(3,'antibiotic',50.00),
(4,'cough syrup',30.00),
(5,'skin cream',25.00);


insert into prescriptionmedicine values
(1,1,'2 times','5 days'),
(2,2,'1 time','3 days'),
(3,3,'once','7 days'),
(4,4,'2 times','4 days'),
(5,5,'apply','10 days');

insert into bill values
(1,1,1,500.00,'pending'),
(2,2,2,700.00,'paid'),
(3,3,3,1500.00,'pending'),
(4,4,4,400.00,'paid'),
(5,5,5,600.00,'pending');