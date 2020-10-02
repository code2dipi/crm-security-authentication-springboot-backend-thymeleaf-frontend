DROP DATABASE  IF EXISTS `emp_authentication`;

CREATE DATABASE  IF NOT EXISTS `emp_authentication`;
USE `emp_authentication`;

DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `employee` VALUES 
	(1,'Dhan','Pati','dipi@gmail.com'),
	(2,'Divyant','Neupane','Divyant@.com'),
	(3,'Deepa','Neupane','deepa@gmail.com');


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `users` 
VALUES 
('dipi','{bcrypt}$2a$10$lvYeGxPIzikcXvsaYddBd.Q.z5CWQZJHKPCy2s/qJQmKlWKNNOXC2',1),
('ram','{bcrypt}$2a$10$ROU1maLsVki1lcwi1KTsUedBwus7BYOf8w29QozNXET45gZ.JCS92',1),
('kom','{bcrypt}$$2a$10$poNlGl3stmVCFh4YSIQOQ.VwOgizUbAy00GXNP7iA13kuk01FUGVG',1);


DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `authorities` 
VALUES 
('dipi','ROLE_EMPLOYEE'),
('ram','ROLE_EMPLOYEE'),
('kom','ROLE_MANAGER'),
('ram','ROLE_MANAGER'),
('dipi','ROLE_ADMIN');


