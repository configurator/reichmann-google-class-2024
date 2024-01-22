DROP DATABASE IF exists blog_db;
CREATE DATABASE blog_db;
-- Connect to the desired database
\c blog_db;

CREATE TABLE post
(
    id serial NOT NULL PRIMARY KEY,
    title character varying(100) NOT NULL,
    content character varying NOT NULL,
    image_url character varying,
    creation_date date NOT NULL,
    posted_by integer NOT NULL,
    newcolumn integer NOT NULL
);
