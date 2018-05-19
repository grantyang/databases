CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id              INT unsigned NOT NULL AUTO_INCREMENT,
  username        VARCHAR(150) NOT NULL,               
  message         VARCHAR(800) NOT NULL,               
  timestamp       DATE NOT NULL,                        
  PRIMARY KEY     (id)                                  
);

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u student < server/schema.sql
 *  to create the database and the tables.*/

