select p.patient_name,
       c.consultation_id,
       d.doctor_name,
       dg.diagnosis_name,
       m.medicine_name
from patient p
join appointment a on p.patient_id = a.patient_id
join consultation c on a.appointment_id = c.appointment_id
join consultationdoctor cd on c.consultation_id = cd.consultation_id
join doctor d on cd.doctor_id = d.doctor_id
join consultationdiagnosis cdiag on c.consultation_id = cdiag.consultation_id
join diagnosis dg on cdiag.diagnosis_id = dg.diagnosis_id
join prescription pr on c.consultation_id = pr.consultation_id
join prescriptionmedicine pm on pr.prescription_id = pm.prescription_id
join medicine m on pm.medicine_id = m.medicine_id;


select d.doctor_name,
       count(cd.consultation_id) as total_consultations
from doctor d
join consultationdoctor cd on d.doctor_id = cd.doctor_id
group by d.doctor_id, d.doctor_name
order by total_consultations desc;

select p.patient_name,
       sum(b.total_amount) as pending_amount
from patient p
join bill b on p.patient_id = b.patient_id
where b.payment_status = 'pending'
group by p.patient_id, p.patient_name;

begin;

insert into consultation (consultation_id, appointment_id, notes)
values (7, 1, 'general checkup');

insert into consultationdoctor (consultation_id, doctor_id, contribution)
values (7, 1, 'primary');

insert into consultationdiagnosis (consultation_id, diagnosis_id)
values (7, 1);

insert into prescription (prescription_id, consultation_id, prescription_details)
values (7, 6, 'take medicines regularly');

insert into prescriptionmedicine (prescription_id, medicine_id, dosage, duration)
values (7, 1, '2 times a day', '5 days');
insert into bill (bill_id, patient_id, consultation_id, total_amount, payment_status)
values (7, 1, 6, 500.00, 'pending');

commit;

