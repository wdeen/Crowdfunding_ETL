-- Crowdfunding Database (ETL Mini-Project)
-----------------------------------------------------
-- Run this when creating the SQL database; otherwise ignore and create the DB via pgAdmin 4 (Create > Database)

DROP DATABASE IF EXISTS crowdfunding_db;

CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Australia.1252'
    LC_CTYPE = 'English_Australia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE employee_db
    IS 'ETL Mini-Project - Wassim Deen';
-----------------------------------------------------

-- Drop table(s) if exists
DROP TABLE IF EXISTS Contacts;
DROP TABLE IF EXISTS Category;
DROP TABLE IF EXISTS Sub_Category;
DROP TABLE IF EXISTS Campaign;

-----------------------------------------------------
-- My Table Schemata (crowdfunding_db)

-- Sequence of SQL Table created = Sequence of importing CSV data into corresponding SQL Table
-- Refer to ERD image for visualisation of database design (Resources\crowdfunding_db_ERD.png)

-- SQL Table #1 = Contacts (contacts.csv)
-- Single Primary Key
-- One-to-One Relationship w/ 'Campaign' Table (Common Link = contact_id)
CREATE TABLE Contacts (
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);

-- SQL Table #2 = Category (category.csv)
-- Single Primary Key
-- One-to-Many Relationship w/ 'Campaign' Table (Common Link = category_id)
CREATE TABLE Category (
	category_id VARCHAR NOT NULL PRIMARY KEY,
	category VARCHAR NOT NULL
);

-- SQL Table #3 = Sub_Category (subcategory.csv)
-- Single Primary Key
-- One-to-Many Relationship w/ 'Campaign' Table (Common Link = subcategory_id)
CREATE TABLE Sub_Category (
	subcategory_id VARCHAR NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL
);

-- SQL Table #4 = Campaign (campaign.csv)
-- Single Primary Key
-- One-to-One Relationship w/ 'Contacts' Table (Common Link = contact_id)
-- Many-to-One Relationship w/ 'Category' Table (Common Link = category_id)
-- Many-to-One Relationship w/ 'Sub_Category' Table (Common Link = subcategory_id)
CREATE TABLE Campaign (
	cf_id INT NOT NULL PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY(category_id) REFERENCES Category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES Sub_Category(subcategory_id)
);

-----------------------------------------------------
-- Display Each SQL Table in crowdfunding_db
-- Run each of the SELECT statements during the following:
	-- Before CSV data is imported to its correspnding SQL table
	-- After CSV data is imported to its correspnding SQL table

-- SQL Table #1 = Contacts
SELECT *
FROM Contacts;

-- SQL Table #2 = Category
SELECT *
FROM Category;

-- SQL Table #3 = Sub_Category
SELECT *
FROM Sub_Category;

-- SQL Table #4 = Campaign
SELECT *
FROM Campaign;