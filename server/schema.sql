CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id              INT unsigned NOT NULL AUTO_INCREMENT,
  userid          INT NOT NULL,               
  text            VARCHAR(200) NOT NULL,               
  roomname        VARCHAR(20) NOT NULL,                        
  PRIMARY KEY     (id)                                  
);

CREATE TABLE users (
  id              INT NOT NULL AUTO_INCREMENT,
  username        VARCHAR(40) NOT NULL,
  PRIMARY KEY     (id)
)

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u student < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'messages'
-- 
-- ---

-- DROP TABLE IF EXISTS `messages`;
		
-- CREATE TABLE `messages` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `text` VARCHAR(500) NULL DEFAULT NULL,
--   `author` INTEGER NOT NULL,
--   `room` INTEGER NOT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'users'
-- -- 
-- -- ---

-- DROP TABLE IF EXISTS `users`;
		
-- CREATE TABLE `users` (
--   `id` INTEGER NOT NULL AUTO_INCREMENT,
--   `username` VARCHAR(30) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'rooms'
-- -- 
-- -- ---

-- DROP TABLE IF EXISTS `rooms`;
		
-- CREATE TABLE `rooms` (
--   `id` INTEGER NULL,
--   `roomname` VARCHAR(30) NULL DEFAULT NULL,
--   PRIMARY KEY (`id`)
-- );

-- -- ---
-- -- Table 'usersrooms'
-- -- 
-- -- ---

-- DROP TABLE IF EXISTS `usersrooms`;
		
-- CREATE TABLE `usersrooms` (
--   `user_id` INTEGER NOT NULL,
--   `room_id` INTEGER NOT NULL,
--   PRIMARY KEY ()
-- );

-- -- ---
-- -- Foreign Keys 
-- -- ---

-- ALTER TABLE `messages` ADD FOREIGN KEY (author) REFERENCES `users` (`id`);
-- ALTER TABLE `messages` ADD FOREIGN KEY (room) REFERENCES `rooms` (`id`);
-- ALTER TABLE `usersrooms` ADD FOREIGN KEY (user_id) REFERENCES `users` (`id`);
-- ALTER TABLE `usersrooms` ADD FOREIGN KEY (room_id) REFERENCES `rooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `usersrooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `messages` (`id`,`text`,`author`,`room`) VALUES
-- ('','','','');
-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');
-- INSERT INTO `usersrooms` (`user_id`,`room_id`) VALUES
-- ('','');