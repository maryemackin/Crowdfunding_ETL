CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count NUMERIC(10,2) NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) FOREIGN KEY NOT NULL,
	subcategory_id VARCHAR(10) FOREIGN KEY NOT NULL
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category_name VARCHAR(50) NOT NULL
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory_name VARCHAR(50) NOT NULL
);

CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(75) NOT NULL
);

-- SELECT * FROM contacts;
-- SELECT * FROM campaign;
-- SELECT * FROM category;
-- SELECT * FROM subcategory;