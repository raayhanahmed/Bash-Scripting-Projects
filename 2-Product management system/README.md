<div align="center">

# 📦 Product Management System

**A Modular CLI Inventory & Discount Filtering Tool in Bash**

![Bash](https://img.shields.io/badge/Made_with-Bash-4EAA25?style=flat-square&logo=gnu-bash&logoColor=white)
![CLI](https://img.shields.io/badge/Interface-CLI-blue?style=flat-square)

</div>

An interactive command-line inventory management application built in **GNU Bash**, utilizing pass-by-reference arrays (`local -n`), duplicate entry validation, and threshold-based discount filtering.

## ✨ Key Features
* **📋 Full Inventory View:** Displays all stored products along with unit prices and discount percentages.
* **🛡️ Duplicate-Safe Insertion:** Checks existing product names before appending new records to prevent duplicates.
* **🏷️ Discount Threshold Filter:** Filters and displays items offering a discount equal to or greater than the entered percentage.
* **⚡ In-Memory Reference Manipulation:** Modifies global arrays directly inside functions using `local -n` namerefs.

## 💻 Terminal Preview

```text
=== Product Management System ===
1. Show all data
2. Add new data
3. Filter by discount
4. Exit
Enter the choice: 3
Enter the minimum discount: 22
Product name    : Jam
Discount amount : 30%
Product name    : Lichu
Discount amount : 24%
