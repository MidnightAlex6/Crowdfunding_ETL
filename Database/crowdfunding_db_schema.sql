CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT UNIQUE,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal numeric(10,2) NOT NULL,
    pledged numeric(10,2) NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launch_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_ids VARCHAR NOT NULL,
    subcategory_ids VARCHAR NOT NULL
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    CONSTRAINT fk_campaign_contact
        FOREIGN KEY (contact_id) REFERENCES campaign (contact_id)
);

CREATE TABLE category (
    category_ids VARCHAR PRIMARY KEY,
    category VARCHAR NOT NULL
);

CREATE TABLE subcategory (
    subcategory_ids VARCHAR PRIMARY KEY,
    subcategory VARCHAR NOT NULL
);

ALTER TABLE campaign
    ADD CONSTRAINT fk_campaign_category
    FOREIGN KEY (category_ids) REFERENCES category (category_ids);

ALTER TABLE campaign
    ADD CONSTRAINT fk_campaign_subcategory
    FOREIGN KEY (subcategory_ids) REFERENCES subcategory (subcategory_ids);

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;


