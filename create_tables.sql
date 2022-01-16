
DROP TABLE IF EXISTS review_id_table;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS vine_table;
DROP TABLE IF EXISTS amazon_review_wireless;
DROP TABLE IF EXISTS watch_reviews;
DROP TABLE IF EXISTS watch_products;
DROP TABLE IF EXISTS public.watches_vine;

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

CREATE TABLE IF NOT EXISTS watch_products
(
    product_id text,
    product_title text"
);

CREATE TABLE IF NOT EXISTS public.watch_reviews
(
    customer_id integer,
    product_id text,
    product_parent integer,
    review_date text 
);

CREATE TABLE IF NOT EXISTS public.watches_vine
(
    review_id text ,
    star_rating text ,
    helpful_votes integer,
    total_votes integer,
    vine text 
);
