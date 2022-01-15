
drop table review_id_table;
drop table products;
drop table customers;
drop table vine_table;
drop table amazon_review_wireless;

CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);


CREATE TABLE amazon_review_wireless (
  marketplace text,
 customer_id text,
 review_id text,
 product_id text,
 product_parent text,
 product_title text,
 product_category text,
 star_rating text,
 helpful_votes text,
 total_votes text,
 vine text,
 verified_purchase text,
 review_headline text,
 review_body text,
 review_date text
);
