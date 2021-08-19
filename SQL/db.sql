DROP DATABASE IF EXISTS ecotick;
CREATE DATABASE ecotick;

USE ecotick;

DROP TABLE IF EXISTS  `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL UNIQUE,  
  `password` varchar(95) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
 `username` varchar(100) NOT NULL,
 `telephone` varchar(10),
 `adresse` varchar(150) NOT NUll,
  PRIMARY KEY(`id`)
) ENGINE = InnoDB AUTO_INCREMENT= 1 DEFAULT CHARSET = utf8mb4;

DROP TABLE IF EXISTS `pro`;

CREATE TABLE `pro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop` int NOT NULL,
  `photo` TEXT,
  PRIMARY KEY(`id`),
   CONSTRAINT FK_ProUser FOREIGN KEY (user_id)
    REFERENCES users(id)
) ENGINE = InnoDB AUTO_INCREMENT= 1 DEFAULT CHARSET = utf8mb4;