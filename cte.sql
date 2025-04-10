WITH IT_Staff AS (
    -- CTE: Filters IT department staff
    SELECT 
        Employee_id_No, 
        Department_name, 
        Designation 
    FROM Staffs_Data 
    WHERE Department_name = 'IT'
)
-- Main query joins the CTE with personal info
SELECT 
    s.Employee_id_No,
    s.Department_name,
    s.Designation,
    e.Full_Name,
    e.Email,
    e.DOB,
    e.Phone_Number
FROM IT_Staff s
JOIN Employee_Personal_Info e 
    ON s.Employee_id_No = e.Employee_id_No;
