-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7JjaDJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Campaign (
    cf_id INTEGER   NOT NULL,
    contact_id INTERGER   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(20)   NOT NULL,
    backers_count INTEGER   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launch_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id INTEGER   NOT NULL,
    subcategory_id INTEGER   NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);

CREATE TABLE Category (
    category_id INTEGER   NOT NULL,
    category VARCHAR(50)   NOT NULL, 
    PRIMARY KEY (category_id)   
);

CREATE TABLE Contacts (
    contact_id INTEGER   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_id VARCHAR(50)   NOT NULL,
    email VARCHAR(100)   NOT NULL,
    PRIMARY KEY (contact_id) 
);

CREATE TABLE "Subcategory" (
    subcategory_id INTEGER   NOT NULL,
    subcategory VARCHAR(50)   NOT NULL,
    PRIMARY KEY (subcategory_id) 
);



