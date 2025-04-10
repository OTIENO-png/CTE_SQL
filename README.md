# IT Department Staff Data Query

This SQL script retrieves detailed personal and professional information for employees in the **IT department**, using a Common Table Expression (CTE) to enhance clarity and structure.

---

##  What the Query Does

- **Step 1: CTE (`IT_Staff`)**
  - Filters records from the `Staffs_Data` table where the `Department_name` is `'IT'`.
  - Selects key fields: `Employee_id_No`, `Department_name`, and `Designation`.

- **Step 2: Main Query**
  - Joins the filtered IT staff data (`IT_Staff`) with the `Employee_Personal_Info` table using the common `Employee_id_No`.
  - Retrieves:
    - `Employee_id_No`
    - `Department_name`
    - `Designation`
    - `Full_Name`
    - `Email`
    - `DOB` (Date of Birth)
    - `Phone_Number`

---

##  Tables Involved

- **`Staffs_Data`**: Contains employee job details including department and designation.
- **`Employee_Personal_Info`**: Contains personal information such as name, email, DOB, and phone number.

---

##  Sample Use Case

This query is useful for:
- HR teams generating department-specific reports
- System audits for the IT department
- Sending department-wide communications

---

##  Requirements

- SQL database with the following tables:
  - `Staffs_Data`
  - `Employee_Personal_Info`

---

## 🛠️ Example Output

| Employee ID | Department | Designation | Full Name      | Email              | DOB        | Phone Number   |
|-------------|------------|-------------|----------------|--------------------|------------|----------------|
| 1001        | IT         | Technician  | Alice Onyango  | alice@company.com  | 1995-03-20 | 0712345678     |
| 1002        | IT         | Developer   | Brian Otieno   | brian@company.com  | 1993-06-15 | 0798765432     |

---

## Notes

- The use of a **CTE** improves query readability and separates the filtering logic from the join logic.
- Make sure all employee records in `Staffs_Data` have corresponding entries in `Employee_Personal_Info` for accurate results.

---

## ✨ Author

*Brian Otieno Lubalo* 
[otienolubalo@gmail.com](mailto:otienolubalo@gmail.com)

---

