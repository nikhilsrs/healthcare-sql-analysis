-- Total Patients
SELECT COUNT(*) AS total_patients
FROM healthcare;

-- Total Revenue
SELECT SUM(billing_amount) AS total_revenue
FROM healthcare;

-- Revenue by Insurance Provider
SELECT insurance_provider,
       SUM(billing_amount) AS revenue
FROM healthcare
GROUP BY insurance_provider
ORDER BY revenue DESC;

-- Emergency Admissions
SELECT COUNT(*) 
FROM healthcare
WHERE admission_type = 'Emergency';

-- Patients with Abnormal Test Results
SELECT name, medical_condition, test_results
FROM healthcare
WHERE test_results = 'Abnormal';
