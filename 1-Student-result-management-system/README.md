<div align="center">
  
# 🎓 Student Result Management System
![Bash](https://img.shields.io/badge/Made_with-Bash-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)
![CLI](https://img.shields.io/badge/Interface-CLI-blue?style=flat-square)

</div>
A menu-driven command-line application built in **GNU Bash** to manage student academic records, calculate letter grades, perform case-insensitive lookups, and evaluate scholarship eligibility.

## ✨ Key Features
* **Comprehensive Student Reports:** Displays marks, attendance percentages, dynamically computed letter grades (`A+` to `F`), and Pass/Fail status.
* **Case-Insensitive Search:** Matches student names regardless of input casing (e.g., `tanvir`, `TANVIR`, or `Tanvir`).
* **Automated Scholarship Evaluation:** Audits student records against dual eligibility criteria (`Marks >= 90` and `Attendance >= 90`).
* **Interactive CLI Loop:** Runs continuously via a `while` loop and `case` router until explicitly exited.

## 💻 Sample Output

```text
=== Student Result Management System ===
1. View All Students Report
2. Search Student Result
3. Check Scholarship Eligibility
4. Exit
Enter your choice: 2
Enter student name to search: tanvir
--- Student Report: Tanvir ---
Marks: 92/100
Attendance: 95%
Grade: A+
Status: Passed 🎉
