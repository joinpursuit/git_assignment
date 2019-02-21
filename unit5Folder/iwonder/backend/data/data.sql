DROP DATABASE IF EXISTS wonder;
CREATE DATABASE wonder;

\c wonder;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL,
  password VARCHAR NOT NULL,
  email VARCHAR UNIQUE NOT NULL,
  bio VARCHAR,
  pic VARCHAR
);

CREATE TABLE boards (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  user_id INT REFERENCES users(id) NOT NULL,
  description VARCHAR
);

CREATE TABLE pins (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users (id) NOT NULL,
  image VARCHAR NOT NULL,
  title VARCHAR,
  board_id INT REFERENCES boards (id) NOT NULL,
  description VARCHAR
);

INSERT INTO users (name,password,email,bio,pic) values ('Kevin','password123','kev@email','stuff','https://i.etsystatic.com/5805234/r/il/ee362a/878594389/il_570xN.878594389_m98s.jpg');
INSERT INTO boards (name,user_id,description) values ('pasta',1,'this is a board of pasta');
INSERT INTO pins (user_id,image,title,board_id,description) values (1,'http://i.imgur.com/IQmFL9e.jpg','pastapasta',1,'pasta'),(1,'https://pbs.twimg.com/media/CzA7zWFUkAAzPYF.jpg','pastafire',1,'pasta')
