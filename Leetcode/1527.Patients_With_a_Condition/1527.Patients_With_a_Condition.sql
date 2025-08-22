SELECT patient_id , patient_name , conditions
FROM Patients 
WHERE conditions LIKE 'DIAB1%' OR  conditions LIKE '% DIAB1%';   

--Using REGEX
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions REGEXP '(^DIAB1| DIAB1)';

--Using IN
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE conditions IN ('DIAB1', ' DIAB1');