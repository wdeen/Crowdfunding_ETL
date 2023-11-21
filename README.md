# Crowdfunding_ETL
[Project #2] ETL Mini-Project (Pandas / PostgreSQL / Python) - Wassim Deen

# Summary of Challenge
- Part 1: Create Category & Subcategory DataFrames (`category_df` / `subcategory_df`)
    1. Extract and transform the `crowdfunding.xlsx` Excel data to create a category DataFrame that has the following columns:
        - A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
        - A "category" column that contains only the category titles

    2. Export the category DataFrame as `category.csv` and save it to my Github repo.

    3. Extract and transform the `crowdfunding.xlsx` Excel data to create a subcategory DataFrame that has the following columns:
        - A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
        - A "subcategory" column that contains only the subcategory titles

    4. Export the subcategory DataFrame as `subcategory.csv` and save it to my GitHub repo.

- Part 2: Create Campaign DataFrame  (`final_campaign_df`)
    1. Extract and transform the `crowdfunding.xlsx` Excel data to create a campaign DataFrame has the following columns:
        - The "cf_id" column

        - The "contact_id" column

        - The "company_name" column

        - The "blurb" column, renamed to "description"

        - The "goal" column, converted to the `float` data type

        - The "pledged" column, converted to the `float` data type

        - The "outcome" column

        - The "backers_count" column

        - The "country" column

        - The "currency" column

        - The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the `datetime` format

        - The "deadline" column, renamed to "end_date" and with the UTC times converted to the `datetime` format

        - The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

        - The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

        - All other columns should be removed.

    2. Export the campaign DataFrame as `campaign.csv` and save it to my GitHub repo.

- Part 3: Create Contacts DataFrame  (`final_contacts_df`)
    1. Use Python dictionary methods for extracting and transforming the data from the `contacts.xlsx` Excel data:
        - Import the `contacts.xlsx` file into a DataFrame.
        - Iterate through the DataFrame, converting each row of data to a dictionary.
        - Iterate through each dictionary, doing the following:
            a. Extract the dictionary values from the keys by using a Python list comprehension.
            b. Add the values for each row to a new list.
        - Create a new DataFrame that contains the extracted data.
        - Split each "name" column value into a first and last name, and place each in a new column.
        - Clean and export the DataFrame as `contacts.csv` and save it to my GitHub repo.

- Part 4: Create the Crowdfunding Database (`crowdfunding_db`)
    1. Inspect my four created CSV files (`category.csv` / `subcategory.csv` / `campaign.csv` / `contacts.csv`) and sketch an ERD of the tables

    2. Based on my ERD, create an SQL table schema for each CSV file.

    3. Create a new Postgres database called `crowdfunding_db`.

    4. Based on my database schema, create the tables in the right order to handle the foreign keys.

    5. Verify the table creation by running a `SELECT` SQL query statement for each table.

    6. Import each CSV file into its corresponding SQL table.

    7. Verify that each SQL table has the correct data by running a `SELECT` SQL query statement for each.


# Notes
1. Parts #1 / #2/ #3 were completed in the Jupyter Notebook script solution (`ETL_Mini_Project_WDeen.ipynb`)
2. Part #4 was completed in the SQL Query file (`crowdfunding_db_schema.sql`)
3. All XLSX Excel files were used to extract data and eventually creating the CSV files.
4. ERD sketch can be found in the 'Resources' folder (`crowdfunding_db_ERD.png`)
    - The following tool was used: https://www.quickdatabasediagrams.com/


# Final Repository Structure
```
├── README.md
├── ETL_Mini_Project_WDeen.ipynb
├── crowdfunding_db_schema.sql
└── Resources
    ├── category.csv
    ├── subcategory.csv
    ├── campaign.csv
    ├── contacts.csv
    ├── crowdfunding.xlsx
    ├── contacts.xlsx
    ├── crowdfunding_db_ERD.png

```
